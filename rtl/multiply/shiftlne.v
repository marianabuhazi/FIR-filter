// Right-to-left shift register with enable
module shiftlne (R, L, E, w, clk, Q); 
	parameter n = 32;
	input [n-1:0] R;
	input L, E, w, clk;
	output reg [n-1:0] Q; 
	integer k;

	always @(posedge clk) begin
		if (L)
			Q <= R; 
		else if (E)
		begin
		for(k=n-1;k > 0;k=k-1)
			Q[k] <= Q[k-1]; 
		Q[0] <= w;
		end 
	end	
endmodule
