// Testbench for finite state machine/ controller for FIR core
`timescale 1ns/1ps
`define HALF_CLOCK_LOAD_PERIOD #6
`define QSIM_OUT "./qsim.out"
`define MATLAB_INPUTS "../../matlab/inputs"
`define MATLAB_COEFFS "../../matlab/coefficients"
`define MATLAB_OUTPUTS "../../matlab/outputs"
module tb_fir();
	reg clk, rstn, cload, dload;
	reg [13:0] addr;
	reg [15:0] din;
	wire [31:0] dout;
	wire val;
	reg [31:0] output_matlab;

	integer i;
	integer qsim_out_file;
	integer matlab_inputs_file;
	integer matlab_coeffs_file;
	integer matlab_outputs_file;
	integer error_count = 0;

	fir fir_0(clk, rstn, cload, dload, addr, din, dout, val);
	
	
	always begin
		`HALF_CLOCK_LOAD_PERIOD;
		clk = ~clk;
	end	

	initial begin
		clk = 0;
		rstn = 0; // resetn should clear buffer.
		
		// File IO

		matlab_inputs_file = $fopen(`MATLAB_INPUTS,"r");
		if (!matlab_inputs_file) begin
			$display("Couldn't open the Matlab inputs file.");
			$finish;
		end

		matlab_coeffs_file = $fopen(`MATLAB_COEFFS,"r");
		if (!matlab_coeffs_file) begin
			$display("Couldn't open the Matlab coefficients file.");
			$finish;
		end

		matlab_outputs_file = $fopen(`MATLAB_OUTPUTS,"r");
		if (!matlab_outputs_file) begin
			$display("Couldn't open the Matlab outputs file.");
			$finish;
		end

		@(negedge clk)
		rstn = 1;
		dload = 1;
		cload = 0;
		addr = 0;
		$fscanf(matlab_inputs_file, "%b", din);
		#12;
		for (i=1 ; i<10; i=i+1) begin
			@(negedge clk)
			addr = addr + 1;
			$fscanf(matlab_inputs_file, "%b", din);
			#12;
		end

		@(negedge clk)
		dload=0;
		cload = 1;
		addr = 0;
		$fscanf(matlab_coeffs_file, "%b", din);
		#12;
		for (i=1 ; i<64; i=i+1) begin
			@(negedge clk)
			addr = addr + 1;
			$fscanf(matlab_coeffs_file, "%b", din);
			#12;
		end
		dload =0;
		cload=0;
		
		#1000100
		qsim_out_file = $fopen(`QSIM_OUT,"r");
		for (i=1 ; i<10063; i=i+1) begin
			$fscanf(qsim_out_file, "%b", output_matlab);
			if(dout!=output_matlab) error_count = error_count + 1;
		end
		
		if (error_count > 0) begin
			$display("The results DO NOT match with those from Matlab :( ");
		end
		else begin
			$display("The results DO match with those from Matlab :)!!! ");
		end

		// finishing this testbench
		$fclose(qsim_out_file);
		$fclose(matlab_inputs_file);
		$fclose(matlab_coeffs_file);
		$fclose(matlab_outputs_file);		
	end


	always @(posedge val) begin
		qsim_out_file = $fopen(`QSIM_OUT,"a");
		if (!qsim_out_file) begin
			$display("Couldn't open the QSIM output file.");
			$finish;
		end
		$fwrite(qsim_out_file, "%b\n", dout);
		$fclose(qsim_out_file);
	end
		

endmodule
