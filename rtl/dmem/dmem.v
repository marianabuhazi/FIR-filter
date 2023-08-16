// Implementation of 10,240*16 bit SRAM block
// from 4 2560*16 bit SRAM blocks

module dmem(clk, cen, wen, a, d, q);
	input clk, cen, wen; // controllers
	input [13:0] a; //14 bit address to support up to address #9,999
	input [15:0] d; //16 bit data
	reg [3:0] cenabled;
	wire [15:0] Q0, Q1, Q2, Q3;
	output wire [15:0] q;
	
	dmem10 dmem10_0 (.q(Q0), .clk(clk), .cen(cenabled[3]), .wen(wen), .a(a[11:0]), .d(d));
   	dmem10 dmem10_1 (.q(Q1), .clk(clk), .cen(cenabled[2]), .wen(wen), .a(a[11:0]), .d(d));
   	dmem10 dmem10_2 (.q(Q2), .clk(clk), .cen(cenabled[1]), .wen(wen), .a(a[11:0]), .d(d));
   	dmem10 dmem10_3 (.q(Q3), .clk(clk), .cen(cenabled[0]), .wen(wen), .a(a[11:0]), .d(d));
  
	always @(posedge clk)
   		begin
     		if(cen == 0)
			begin
	   		case (a[13:12])
	     			2'b00: cenabled = 4'b0111;
				2'b01: cenabled = 4'b1011;
				2'b10: cenabled = 4'b1101;
				2'b11: cenabled = 4'b1110;
           		endcase // case (A[13:12])
			end
     		else cenabled = 10'b1111_1111_11;
   	end // always @ (posedge CLK)
   assign q = (a[13:12]==2'b00) ? Q0 : 
	      (a[13:12]==2'b01) ? Q1 : 
	      (a[13:12]==2'b10) ? Q2 : Q3;
endmodule
   