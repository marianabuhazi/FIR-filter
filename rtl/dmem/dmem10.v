// Implementation for a 2560*16 bit SRAM block
// from 10 256*16 bit SRAM blocks
`timescale 1ns/1ps
module dmem10(q, clk, cen, wen, a, d);
   input clk, cen, wen;
   input [11:0] a; //12 bit address
   input [15:0] d; // 16 bit data
   reg [9:0] cenabled;
   wire [15:0] Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9;
   output wire [15:0] q;

   DATA_MEMORY DATA_MEMORY_0 (.Q(Q0), .CLK(clk), .CEN(cenabled[9]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_1 (.Q(Q1), .CLK(clk), .CEN(cenabled[8]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_2 (.Q(Q2), .CLK(clk), .CEN(cenabled[7]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_3 (.Q(Q3), .CLK(clk), .CEN(cenabled[6]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_4 (.Q(Q4), .CLK(clk), .CEN(cenabled[5]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_5 (.Q(Q5), .CLK(clk), .CEN(cenabled[4]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_6 (.Q(Q6), .CLK(clk), .CEN(cenabled[3]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_7 (.Q(Q7), .CLK(clk), .CEN(cenabled[2]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_8 (.Q(Q8), .CLK(clk), .CEN(cenabled[1]), .WEN(wen), .A(a[7:0]), .D(d));
   DATA_MEMORY DATA_MEMORY_9 (.Q(Q9), .CLK(clk), .CEN(cenabled[0]), .WEN(wen), .A(a[7:0]), .D(d));
   
   always @(negedge clk)
   begin
     if(cen == 0)
	begin
	   case (a[11:8])
	     4'b0000: cenabled = 10'b0111_1111_11;
             4'b0001: cenabled = 10'b1011_1111_11;
             4'b0010: cenabled = 10'b1101_1111_11;
             4'b0011: cenabled = 10'b1110_1111_11;
	     4'b0100: cenabled = 10'b1111_0111_11;
             4'b0101: cenabled = 10'b1111_1011_11;
             4'b0110: cenabled = 10'b1111_1101_11;
	     4'b0111: cenabled = 10'b1111_1110_11;
             4'b1000: cenabled = 10'b1111_1111_01;
	     4'b1001: cenabled = 10'b1111_1111_10;
           endcase // case (A[11:8])
	end
     else cenabled = 10'b1111_1111_11;
   end // always @ (negedge CLK)
   assign q = (a[11:8]==4'b0000) ? Q0 : 
	      (a[11:8]==4'b0001) ? Q1 : 
	      (a[11:8]==4'b0010) ? Q2 : 
	      (a[11:8]==4'b0011) ? Q3 : 
	      (a[11:8]==4'b0100) ? Q4 : 
	      (a[11:8]==4'b0101) ? Q5 : 
	      (a[11:8]==4'b0110) ? Q6 : 
	      (a[11:8]==4'b0111) ? Q7 : 
	      (a[11:8]==4'b1000) ? Q8 : Q9;
endmodule

   
   