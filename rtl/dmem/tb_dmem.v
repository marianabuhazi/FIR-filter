// Testbench for 10,240*16 bit data memory
`timescale 1ns/1ps
`define SD #0.010
`define HALF_CLOCK_PERIOD #6

module tb_dmem();
	reg clk, cen, wen; // controllers
	reg [13:0] a; // 14 bit address
	reg [15:0] d; // 16 bit data
	wire [15:0] q; // output

	dmem dmem_0(clk, cen, wen, a, d, q);

	always begin		
	   `HALF_CLOCK_PERIOD;
            clk = ~clk;
	end

	initial begin
		clk =0;
		cen =1;
		wen =1;

	        //begin

		@(negedge clk);
	        cen = 0;
	        wen = 0; // write
		a = 14'b10_0111_0000_1111; // address: 9,999
		d = 16'b10_0011_0010_1000; // data: 9,000

		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
	        cen = 0;
	        wen = 0; // write
		a = 14'b111110100; // adress: 500
		d = 16'b100101100; // data: 300

		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
	        cen = 0;
	        wen = 0; // write
		a = 14'b01_0111_0111_0000; // adress: 6,000
		d = 16'b110010; // data: 50
		
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
	        cen = 0;
	        wen = 1; // read
		a = 14'b10_0111_0000_1111; //adress: 9,999
		// d is don't care
		// expected q: 9,000

		@(negedge clk);
		@(negedge clk);
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