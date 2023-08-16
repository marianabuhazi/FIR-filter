// Shift buffer with enable
// Add incoming data to first 
module fir_buffer (clk, rstn, CEN, REN, D, A, q); 
	input [5:0] A; // address
	input CEN, REN, clk, rstn; // chip/read enable
	input [15:0] D; // sample value
	output [15:0] q; //output

	reg [15:0] buffer [0:63]; //buffer
	reg [15:0] Q; // value reg
	integer k;

	always @(posedge clk, negedge rstn) begin
		if(rstn==0) begin
			for(k=0;k <64;k=k+1)
				buffer[k][15:0] = 0;
		end
		else if(!CEN) begin // enabled
			if (!REN) // read
			begin
				Q = buffer[A][15:0]; 
			end
			else if (REN) // shift
			begin
				for(k=63;k > 0;k=k-1)
					buffer[k][15:0] = buffer[k-1][15:0]; 
				buffer[0][15:0] = D;
				Q = D;
			end
		end
	end	
	assign q = Q;
endmodule
