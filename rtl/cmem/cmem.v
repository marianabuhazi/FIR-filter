// Implementation of 64*16 bit SRAM block
module cmem(clk, cen, wen, a, d, q);
   input clk, cen, wen; // controllers
   input [5:0] a; //6 bit address
   input [15:0] d; //16 bit data
   output wire [15:0] q;

   COEFF_MEMORY COEFF_MEMORY_0 (.Q(q), .CLK(clk), .CEN(cen), .WEN(wen), .A(a), .D(d));
  
endmodule

   