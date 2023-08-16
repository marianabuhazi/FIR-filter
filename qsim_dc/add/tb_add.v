// Test bench for hierarchical carry lookahead adder with ripple carry between
// Testbench for 4b carry-lookahead adder
`timescale 1ns/1ps
`define HALF_CLOCK_PERIOD #5.5
module tb_add();
	reg clk, rstn, r;
	reg [31:0] a;
	reg [31:0] b;

	wire [31:0] s;

	add add_0(.clk(clk), .rstn(rstn), .a(a), .b(b), .r(r), .s(s));
	
	always begin: clock
		`HALF_CLOCK_PERIOD;
		clk = ~clk;
	end

	initial begin
		clk <= 0;
		rstn <= 0;
		a <= 0;
		b <=0; 
		r <=0;

		@(negedge clk) // on falling edge
		rstn = 1;

		#5;
	
		@(posedge clk)
		r<=1;
		a <= 32'b1100_1111_1111;
		b <= 16'b0011_1011_1011;

		#5

		@(posedge clk)
		r<=0;
		a <= 32'b1111_1111_1111_1111;
		b <= 32'b1111_1111_1111_1111;
		#5;

		@(posedge clk)
		r<=1;
		a <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
		b <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
		#5;

		@(posedge clk)
		a <= 32'b1111_1111_0000_1111;
		b <= 32'b1111_1111_0000_1111;

		@(posedge clk)
		#5;

		$finish;
	end 
endmodule
