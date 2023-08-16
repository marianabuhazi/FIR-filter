module regne (D, clk, rstn, E, Q); 
	parameter n = 32;
	input [n-1:0] D;
	input clk, rstn, E;
	output reg [n-1:0] Q;
	
	always @(posedge clk, negedge rstn) begin: regne
		if (rstn == 0)
			Q <= 0; 
		else if (E)
			Q <= D;
	end
endmodule