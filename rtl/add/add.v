// Implementation of 32b adder
// Hierarchical carry-lookahead with ripple-carry between blocks

module add(clk, rstn, a, b, r, s);
	input clk,rstn, r;
	input [31:0] a, b;
	output [31:0] s;
	
	wire [31:0] sum;
	reg [31:0] S;
	wire c0 = 0;
	wire c4, c8, c12, c16, c20, c24, c28, c32;

	cla cla_0(a[3:0], b[3:0], c0, sum[3:0], c4);
	cla cla_1(a[7:4], b[7:4], c4, sum[7:4], c8);
	cla cla_2(a[11:8], b[11:8], c8, sum[11:8], c12);
	cla cla_3(a[15:12], b[15:12], c12, sum[15:12], c16);
	cla cla_4(a[19:16], b[19:16], c16, sum[19:16], c20);
	cla cla_5(a[23:20], b[23:20], c20, sum[23:20], c24);
	cla cla_6(a[27:24], b[27:24], c24, sum[27:24], c28);
	cla cla_7(a[31:28], b[31:28], c28, sum[31:28], c32);
	
	always @(negedge clk, negedge rstn)
	begin
		if(rstn == 0)
			S <= 0;
		else if(r==1) S <= sum;
	end
	assign s = S;
endmodule
