// Testbench for 64*16 bit coefficient memory
`timescale 1ns/1ps
`define SD #0.010
`define HALF_CLOCK_PERIOD #6

module tb_cmem();
	reg clk, cen, wen; // controllers
	reg [5:0] a; // 6 bit address
	reg [15:0] d; // 16 bit data
	wire [15:0] q; // output

	cmem cmem_0(clk, cen, wen, a, d, q);

	always begin		
	   `HALF_CLOCK_PERIOD;
            clk = ~clk;
	end

	initial begin
		$dumpfile("./cmem.vcd");
       		$dumpvars(0,tb_cmem.cmem_0);

		clk =0;
		cen =1;
		wen =1;

	        //begin

		@(negedge clk);
	        cen = 0;
	        wen = 0; // write
		a = 6'b0100; // address: 4
		d = 16'b1111_1010_0001; // data: 4001
		#5

		@(negedge clk);
	        cen = 0;
	        wen = 0; // write
		a = 6'b10000; // adress: 32
		d = 16'b0011_1110; // data: 62
		#5
		
		@(negedge clk);
	        cen = 0;
	        wen = 1; // read
		a = 6'b0100; //adress: 4
		// d is don't care
		// expected q: 4001

		@(negedge clk);
	        cen = 0;
	        wen = 1; // read from invalid address
		a = 6'b1100; //adress: 12
		// d is don't care
		// expected q: x
		#25;
	$finish;
	end

endmodule
