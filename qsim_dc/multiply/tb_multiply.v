// Testbench for the array multiplier module
`timescale 1ns/1ps
`define HALF_CLOCK_PERIOD #5.5

module tb_multiply();
	reg clk, rstn, s, lm, lq;
	reg [15:0] datam, dataq;
	wire [31:0] p;
	wire done;

	multiply multiply_0(clk, rstn, lm, lq, s, datam, dataq, p, done);

	always begin: clck
		`HALF_CLOCK_PERIOD;
		clk = ~clk;
	end

	initial begin: controller
		$dumpfile("./multiply.vcd");
       		$dumpvars(0,tb_multiply.multiply_0);

		clk = 0;
		rstn = 0;
		s = 0;
		lm = 0;
		datam = 0;
		lq = 0;
		dataq = 0;
	
		@(negedge clk) // on falling edge
		rstn = 1;
		
		@(posedge clk) // on rising edge after reset
		lm = 1;
		datam = 16'h64;
		lq =1;
		dataq = 16'h19;
		
		@(posedge clk)
		lm = 0; 
		datam = 0;
		lq =0;
		dataq = 0;
	
		@(posedge clk)
		s = 1;

		#100;

		@(posedge clk)
		s = 0;
		#50;
	
		@(posedge clk) // on rising edge after reset
		lm = 1;
		datam = 16'b1111_1111_1111_1111;
		lq =1;
		dataq = 16'b1111_1111_1111_1111;
		
		@(posedge clk)
		lm = 0; 
		datam = 0;
		lq =0;
		dataq = 0;

		@(posedge clk)
		s = 1;
		#400;
		


		$finish;
	end 
endmodule
