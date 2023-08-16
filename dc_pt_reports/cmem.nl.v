/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Sun Dec 11 13:37:26 2022
/////////////////////////////////////////////////////////////


module cmem ( clk, cen, wen, a, d, q );
  input [5:0] a;
  input [15:0] d;
  output [15:0] q;
  input clk, cen, wen;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;

  COEFF_MEMORY COEFF_MEMORY_0 ( .Q(q), .A({n14, n12, n10, n8, n6, n4}), .D(d), 
        .CLK(clk), .CEN(n2), .WEN(n16) );
  INVX2TS U1 ( .A(cen), .Y(n1) );
  INVX2TS U2 ( .A(n1), .Y(n2) );
  INVX2TS U3 ( .A(a[0]), .Y(n3) );
  INVX2TS U4 ( .A(n3), .Y(n4) );
  INVX2TS U5 ( .A(a[1]), .Y(n5) );
  INVX2TS U6 ( .A(n5), .Y(n6) );
  INVX2TS U7 ( .A(a[2]), .Y(n7) );
  INVX2TS U8 ( .A(n7), .Y(n8) );
  INVX2TS U9 ( .A(a[3]), .Y(n9) );
  INVX2TS U10 ( .A(n9), .Y(n10) );
  INVX2TS U11 ( .A(a[4]), .Y(n11) );
  INVX2TS U12 ( .A(n11), .Y(n12) );
  INVX2TS U13 ( .A(a[5]), .Y(n13) );
  INVX2TS U14 ( .A(n13), .Y(n14) );
  INVX2TS U15 ( .A(wen), .Y(n15) );
  INVX2TS U16 ( .A(n15), .Y(n16) );
endmodule

