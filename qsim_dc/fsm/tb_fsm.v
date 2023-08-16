// Testbench for finite state machine/ controller for FIR core
`timescale 1ns/1ps
`define HALF_CLOCK_LOAD_PERIOD #6
module tb_fsm();
	reg clk, rstn, cload, dload;
	reg [13:0] addr;
	reg [15:0] din;
	wire [31:0] dout;
	wire val;

	integer i;

	fsm fsm_0(clk, rstn, cload, dload, addr, din, dout, val);
	
	always begin
		`HALF_CLOCK_LOAD_PERIOD;
		clk = ~clk;
	end	

	initial begin
		$dumpfile("./fsm.vcd");
       		$dumpvars(0,tb_fsm.fsm_0);
		clk = 0;
		rstn = 0; // resetn should clear buffer.

		@(negedge clk)
		rstn = 1;
		dload = 1;
		cload = 0;
		addr = 0;
		din = 0;
		#12;
		for (i=1 ; i<10000; i=i+1) begin
			@(negedge clk)
			addr = addr + 1;
			din = din + 1;
			#12;
		end

		@(negedge clk)
		dload=0;
		cload = 1;
		addr = 0;
		din = 0;
		#12;
		for (i=1 ; i<64; i=i+1) begin
			@(negedge clk)
			addr = addr + 1;
			din = 1;
			#12;
		end
		dload =0;
		cload=0;

	end
endmodule
