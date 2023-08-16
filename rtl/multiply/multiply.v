module multiply (clk, rstn, lm, lq, s, datam, dataq, p, done); 
	parameter n = 16;
	input clk, rstn, lm, lq, s;
	input [n-1:0] datam, dataq;
	output [n+n-1:0] p; 
	output reg done;
	wire z;
	reg [n+n-1:0] datap; 
	wire [n+n-1:0] m, sum; 
	reg [1:0] y, Y;
	wire [n-1:0] q;
	reg em, eq, ep, psel; 
	integer k;
	
	// control circuit
	parameter S1 = 2'b00, S2 = 2'b01, S3 = 2'b10;
	always @(s, y, z) begin: State_table
		case (y)
			S1: if(s==0)Y=S1;
			else Y = S2;
			S2: if(z==0)Y=S2;
			else Y = S3;
			S3: if(s==1)Y=S3;
			else Y = S1;
		default: Y = 2'bxx;
		endcase 
	end
	
	always @(posedge clk, negedge rstn) begin: State_flipflops
		if (rstn == 0) y <= S1;
		else y <= Y;
	end

	always @(s, y, q[0]) begin: FSM_outputs
	// defaults
		em = 0; eq = 0; ep = 0; done = 0; psel = 0; 
		case (y)
			S1: ep=1; 
			S2: begin
				em = 1; 
				eq = 1; 
				psel = 1; 
				if (q[0]) ep = 1;
				else ep = 0;
			    end
			S3: done=1;
		endcase 
	end
	
	//datapath circuit
	shiftrne ShiftQ (dataq, lq, eq, 1'b0, clk, q); 
		defparam ShiftQ.n = 16;
	shiftlne ShiftM ({{n{1'b0}}, datam}, lm, em, 1'b0, clk, m); 
		defparam ShiftM.n = 32;
	assign z = (q == 0); 
	assign sum = m + p;
	
	
	// define the 2n 2-to-1 multiplexers 
	always @(psel, sum) begin: muxes
		for (k = 0; k < n+n; k = k+1) 
			datap[k] = psel ? sum[k] : 1'b0;
	end
	regne regp (datap, clk, rstn, ep, p); 
		defparam regp.n = 32;
endmodule






