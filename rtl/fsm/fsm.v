module fsm(clk, rstn, cload, dload, addr, din, dout, valid);
	input clk, rstn, cload, dload;
	input [13:0] addr;
	input [15:0] din;
	output [31:0] dout;
	output valid;

	// current and future state
	reg [2:0] y, Y;
	reg [13:0] address;
	reg [13:0] i = 0; // counts up to 10,063 output values, data address
	reg [5:0] j = 0; // counts up to 64 taps, coeff address
	reg [31:0] acc = 0; // accumulate
	wire [31:0] sum;
	wire [15:0] qcmem, qdmem, qbuffer; // output of memories
	wire [31:0] p; // output of multiplier
	reg dcen, dwen, ccen, cwen, bcen, bren; // enable flags
	reg lm, lq, s; // load multiplier, start flag
	reg ready = 0;
	reg val; 
	reg logic1 = 1;
	reg logic0 = 0;
	wire done; // signal for mult done, add ready, and output valid

	parameter LOAD = 3'b000, FETCHD = 3'b001, WAITD = 3'b010, BUFFER = 3'b011, FETCHC = 3'b100, 
	 	  LOADMULT = 3'b101, MULT = 3'b110, ADD= 3'b111;

	add add_0(clk, rstn, p, acc, ready, sum);
	multiply multiply_0(clk, rstn, lm, lq, s, qcmem, qbuffer, p, done);
	cmem cmem_0(clk, ccen, cwen, address[5:0], din, qcmem);
	dmem dmem_0(clk, dcen, dwen, address, din, qdmem);
	fir_buffer fir_buffer_0(clk, rstn, bcen, bren, qdmem, address[5:0], qbuffer);
	
	
	always @(y, dload, cload, rstn, j, done, sum) begin: State_table
		case (y)
			LOAD:	begin
				if(!dload && !cload && rstn) begin
					Y = FETCHD;
				end
				else Y = LOAD;
			   	end
			FETCHD: begin
				acc = 0;
				if(i>=14'd10063) begin
				Y = LOAD;
				end
				else Y = WAITD;
				end
			WAITD: Y = BUFFER;
			BUFFER: Y = FETCHC;
			FETCHC: begin
				if(address!=0) acc=sum;
				if(j==6'b111111) begin
					val = logic1;
					Y = FETCHD;	
				end
				else Y = LOADMULT;
				end
			LOADMULT: Y = MULT;
			MULT: 	begin
				if(done) begin
					Y = ADD;
				end
				else Y = MULT;
				end
			ADD: 	begin
				Y = FETCHC;
				end
			default: Y = 2'bxx;
		endcase 
	end

	always @(negedge clk, negedge rstn)
	begin: State_flipflops
		if(rstn == 0)
			y <= LOAD; // reset
		else y <= Y; // advance state
	end

	
	always @(y, dload, cload, addr, address, i,ready, bcen, done) begin: FSM_outputs
		// defaults
		// disable all chips, and enter read-only mode
		dcen = 1; 
		ccen = 1;
		bcen = 1;
		dwen = 1;
		cwen = 1;
		bren = 0;
		val = logic0;
		s = 0;
		ready = 0;
		case (y)
			LOAD: 	begin
				if(dload==1) begin
				address = addr;
				dcen = 0;
				dwen = 0;
				end
				else if (cload==1) begin
				address = addr;
				ccen = 0;
				cwen = 0;
				end
				end
			FETCHD: begin
				dcen = 0; // enable dmem
				address = i;
				i = i + 1;
				j = 0;
				end
			BUFFER: begin 
				bcen = 0; // enable buffer
				bren = 1; // write to buffer
				end
			FETCHC: begin
				address = j;
				ccen = 0; // enable cmem
				bcen = 0; //enable buffer for reading
				j = j + 1;
				end
			LOADMULT:begin 
				 lm = 1;
				 lq = 1;
				 end
			MULT: begin
				if(done) s=0;
				else if(!done) s=1;
				lm = 0;
				lq = 0;
			      end
			ADD: ready = 1;
		endcase	
	end
	assign valid = val;
	assign dout = acc;
endmodule
