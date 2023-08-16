/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Tue Dec 13 16:36:17 2022
/////////////////////////////////////////////////////////////


module add ( clk, rstn, a, b, r, s );
  input [31:0] a;
  input [31:0] b;
  output [31:0] s;
  input clk, rstn, r;
  wire   n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327;

  DFFRX1TS S_reg_18_ ( .D(n84), .CK(clk), .RN(n323), .Q(s[18]) );
  DFFRX1TS S_reg_3_ ( .D(n69), .CK(clk), .RN(n327), .Q(s[3]) );
  DFFRX1TS S_reg_0_ ( .D(n66), .CK(clk), .RN(n320), .Q(s[0]) );
  DFFRX1TS S_reg_1_ ( .D(n67), .CK(clk), .RN(n327), .Q(s[1]) );
  DFFRX1TS S_reg_31_ ( .D(n97), .CK(clk), .RN(n320), .Q(s[31]) );
  DFFRX1TS S_reg_30_ ( .D(n96), .CK(clk), .RN(n320), .Q(s[30]) );
  DFFRX1TS S_reg_29_ ( .D(n95), .CK(clk), .RN(n320), .Q(s[29]) );
  DFFRX1TS S_reg_28_ ( .D(n94), .CK(clk), .RN(n321), .Q(s[28]) );
  DFFRX1TS S_reg_27_ ( .D(n93), .CK(clk), .RN(n321), .Q(s[27]) );
  DFFRX1TS S_reg_26_ ( .D(n92), .CK(clk), .RN(n321), .Q(s[26]) );
  DFFRX1TS S_reg_25_ ( .D(n91), .CK(clk), .RN(n321), .Q(s[25]) );
  DFFRX1TS S_reg_24_ ( .D(n90), .CK(clk), .RN(n322), .Q(s[24]) );
  DFFRX1TS S_reg_23_ ( .D(n89), .CK(clk), .RN(n322), .Q(s[23]) );
  DFFRX1TS S_reg_22_ ( .D(n88), .CK(clk), .RN(n322), .Q(s[22]) );
  DFFRX1TS S_reg_21_ ( .D(n87), .CK(clk), .RN(n322), .Q(s[21]) );
  DFFRX1TS S_reg_20_ ( .D(n86), .CK(clk), .RN(n323), .Q(s[20]) );
  DFFRX1TS S_reg_19_ ( .D(n85), .CK(clk), .RN(n323), .Q(s[19]) );
  DFFRX1TS S_reg_17_ ( .D(n83), .CK(clk), .RN(n323), .Q(s[17]) );
  DFFRX1TS S_reg_16_ ( .D(n82), .CK(clk), .RN(n324), .Q(s[16]) );
  DFFRX1TS S_reg_15_ ( .D(n81), .CK(clk), .RN(n324), .Q(s[15]) );
  DFFRX1TS S_reg_14_ ( .D(n80), .CK(clk), .RN(n324), .Q(s[14]) );
  DFFRX1TS S_reg_13_ ( .D(n79), .CK(clk), .RN(n324), .Q(s[13]) );
  DFFRX1TS S_reg_12_ ( .D(n78), .CK(clk), .RN(n325), .Q(s[12]) );
  DFFRX1TS S_reg_11_ ( .D(n77), .CK(clk), .RN(n325), .Q(s[11]) );
  DFFRX1TS S_reg_10_ ( .D(n76), .CK(clk), .RN(n325), .Q(s[10]) );
  DFFRX1TS S_reg_9_ ( .D(n75), .CK(clk), .RN(n325), .Q(s[9]) );
  DFFRX1TS S_reg_8_ ( .D(n74), .CK(clk), .RN(n326), .Q(s[8]) );
  DFFRX1TS S_reg_7_ ( .D(n73), .CK(clk), .RN(n326), .Q(s[7]) );
  DFFRX1TS S_reg_6_ ( .D(n72), .CK(clk), .RN(n326), .Q(s[6]) );
  DFFRX1TS S_reg_5_ ( .D(n71), .CK(clk), .RN(n326), .Q(s[5]) );
  DFFRX1TS S_reg_4_ ( .D(n70), .CK(clk), .RN(n327), .Q(s[4]) );
  DFFRX1TS S_reg_2_ ( .D(n68), .CK(clk), .RN(n327), .Q(s[2]) );
  CLKBUFX2TS U69 ( .A(a[30]), .Y(n110) );
  CLKBUFX2TS U70 ( .A(a[28]), .Y(n109) );
  CLKBUFX2TS U71 ( .A(a[27]), .Y(n102) );
  CLKBUFX2TS U72 ( .A(a[26]), .Y(n108) );
  CLKBUFX2TS U73 ( .A(a[25]), .Y(n101) );
  CLKBUFX2TS U74 ( .A(a[24]), .Y(n107) );
  CLKBUFX2TS U75 ( .A(a[23]), .Y(n100) );
  NOR2XLTS U76 ( .A(a[11]), .B(b[11]), .Y(n192) );
  NOR2XLTS U77 ( .A(a[15]), .B(b[15]), .Y(n228) );
  OAI21XLTS U78 ( .A0(n164), .A1(n163), .B0(n162), .Y(n237) );
  OAI21XLTS U79 ( .A0(n213), .A1(n212), .B0(n211), .Y(n218) );
  CLKBUFX2TS U80 ( .A(a[22]), .Y(n106) );
  CLKBUFX2TS U81 ( .A(a[29]), .Y(n103) );
  NOR2X1TS U82 ( .A(a[13]), .B(b[13]), .Y(n210) );
  XOR2X1TS U83 ( .A(n313), .B(n312), .Y(n314) );
  OAI21XLTS U84 ( .A0(n128), .A1(n127), .B0(n126), .Y(n129) );
  NOR2XLTS U85 ( .A(n125), .B(n128), .Y(n130) );
  NOR2XLTS U86 ( .A(a[9]), .B(b[9]), .Y(n176) );
  NOR2XLTS U87 ( .A(n154), .B(n158), .Y(n161) );
  OAI21XLTS U88 ( .A0(n192), .A1(n191), .B0(n190), .Y(n193) );
  NOR2XLTS U89 ( .A(a[12]), .B(b[12]), .Y(n207) );
  NOR2XLTS U90 ( .A(a[14]), .B(b[14]), .Y(n223) );
  NOR2XLTS U91 ( .A(a[17]), .B(b[17]), .Y(n250) );
  OAI21XLTS U92 ( .A0(n250), .A1(n249), .B0(n248), .Y(n266) );
  NOR2XLTS U93 ( .A(a[8]), .B(b[8]), .Y(n173) );
  NOR2XLTS U94 ( .A(a[2]), .B(b[2]), .Y(n125) );
  NOR2XLTS U95 ( .A(a[5]), .B(b[5]), .Y(n144) );
  NOR2XLTS U96 ( .A(a[7]), .B(b[7]), .Y(n158) );
  NOR2XLTS U97 ( .A(n141), .B(n144), .Y(n155) );
  NOR2XLTS U98 ( .A(a[10]), .B(b[10]), .Y(n188) );
  NOR2XLTS U99 ( .A(a[16]), .B(b[16]), .Y(n247) );
  NOR2XLTS U100 ( .A(n247), .B(n250), .Y(n261) );
  OAI21XLTS U101 ( .A0(n264), .A1(n263), .B0(n262), .Y(n265) );
  NOR2XLTS U102 ( .A(a[20]), .B(b[20]), .Y(n276) );
  NOR2XLTS U103 ( .A(n225), .B(n233), .Y(n236) );
  OAI21XLTS U104 ( .A0(n234), .A1(n233), .B0(n232), .Y(n235) );
  INVX2TS U105 ( .A(n105), .Y(n253) );
  NOR2XLTS U106 ( .A(a[6]), .B(b[6]), .Y(n154) );
  OAI21XLTS U107 ( .A0(n196), .A1(n178), .B0(n177), .Y(n183) );
  NOR2XLTS U108 ( .A(a[18]), .B(b[18]), .Y(n260) );
  INVX2TS U109 ( .A(n264), .Y(n256) );
  INVX2TS U110 ( .A(n274), .Y(n269) );
  OAI21XLTS U111 ( .A0(n277), .A1(n276), .B0(n275), .Y(n287) );
  NOR2XLTS U112 ( .A(n274), .B(n276), .Y(n283) );
  OR2X1TS U113 ( .A(a[21]), .B(b[21]), .Y(n286) );
  NOR2XLTS U114 ( .A(n188), .B(n192), .Y(n195) );
  NOR2XLTS U115 ( .A(n260), .B(n264), .Y(n267) );
  NOR2XLTS U116 ( .A(n223), .B(n228), .Y(n231) );
  NOR2XLTS U117 ( .A(n173), .B(n176), .Y(n189) );
  NOR2XLTS U118 ( .A(n207), .B(n210), .Y(n224) );
  MX2X1TS U119 ( .A(s[0]), .B(n114), .S0(n105), .Y(n66) );
  XOR2XLTS U120 ( .A(a[0]), .B(b[0]), .Y(n114) );
  MX2X1TS U121 ( .A(n124), .B(s[3]), .S0(n139), .Y(n69) );
  XOR2XLTS U122 ( .A(n123), .B(n122), .Y(n124) );
  MX2X1TS U123 ( .A(n254), .B(s[18]), .S0(n281), .Y(n84) );
  XOR2XLTS U124 ( .A(n255), .B(n252), .Y(n254) );
  INVX2TS U125 ( .A(n260), .Y(n251) );
  MX2X1TS U126 ( .A(n118), .B(s[2]), .S0(n139), .Y(n68) );
  MX2X1TS U127 ( .A(n133), .B(s[4]), .S0(n139), .Y(n70) );
  MX2X1TS U128 ( .A(n140), .B(s[5]), .S0(n139), .Y(n71) );
  XOR2XLTS U129 ( .A(n138), .B(n137), .Y(n140) );
  MX2X1TS U130 ( .A(n148), .B(s[6]), .S0(n171), .Y(n72) );
  XOR2XLTS U131 ( .A(n149), .B(n147), .Y(n148) );
  MX2X1TS U132 ( .A(n153), .B(s[7]), .S0(n171), .Y(n73) );
  OAI21XLTS U133 ( .A0(n149), .A1(n154), .B0(n157), .Y(n152) );
  MX2X1TS U134 ( .A(n167), .B(s[8]), .S0(n171), .Y(n74) );
  XOR2XLTS U135 ( .A(n196), .B(n166), .Y(n167) );
  MX2X1TS U136 ( .A(n172), .B(s[9]), .S0(n171), .Y(n75) );
  OAI21XLTS U137 ( .A0(n196), .A1(n173), .B0(n175), .Y(n170) );
  MX2X1TS U138 ( .A(n180), .B(s[10]), .S0(n205), .Y(n76) );
  MX2X1TS U139 ( .A(n187), .B(s[11]), .S0(n205), .Y(n77) );
  XOR2XLTS U140 ( .A(n186), .B(n185), .Y(n187) );
  MX2X1TS U141 ( .A(n198), .B(s[12]), .S0(n205), .Y(n78) );
  XOR2XLTS U142 ( .A(n213), .B(n197), .Y(n198) );
  MX2X1TS U143 ( .A(n206), .B(s[13]), .S0(n205), .Y(n79) );
  XOR2XLTS U144 ( .A(n204), .B(n203), .Y(n206) );
  MX2X1TS U145 ( .A(n215), .B(s[14]), .S0(n245), .Y(n80) );
  MX2X1TS U146 ( .A(n222), .B(s[15]), .S0(n245), .Y(n81) );
  XOR2XLTS U147 ( .A(n221), .B(n220), .Y(n222) );
  MX2X1TS U148 ( .A(n239), .B(s[16]), .S0(n245), .Y(n82) );
  MX2X1TS U149 ( .A(n246), .B(s[17]), .S0(n245), .Y(n83) );
  XOR2XLTS U150 ( .A(n244), .B(n243), .Y(n246) );
  MX2X1TS U151 ( .A(n259), .B(s[19]), .S0(n281), .Y(n85) );
  MX2X1TS U152 ( .A(n273), .B(s[20]), .S0(n281), .Y(n86) );
  XOR2XLTS U153 ( .A(n272), .B(n271), .Y(n273) );
  MX2X1TS U154 ( .A(n282), .B(s[21]), .S0(n281), .Y(n87) );
  XOR2XLTS U155 ( .A(n280), .B(n279), .Y(n282) );
  MX2X1TS U156 ( .A(n291), .B(s[22]), .S0(n299), .Y(n88) );
  MX2X1TS U157 ( .A(n293), .B(s[23]), .S0(n104), .Y(n89) );
  MX2X1TS U158 ( .A(n295), .B(s[24]), .S0(n104), .Y(n90) );
  MX2X1TS U159 ( .A(n297), .B(s[25]), .S0(n104), .Y(n91) );
  MX2X1TS U160 ( .A(n300), .B(s[26]), .S0(n306), .Y(n92) );
  MX2X1TS U161 ( .A(n302), .B(s[27]), .S0(n306), .Y(n93) );
  MX2X1TS U162 ( .A(n304), .B(s[28]), .S0(n306), .Y(n94) );
  MX2X1TS U163 ( .A(n307), .B(s[29]), .S0(n306), .Y(n95) );
  MX2X1TS U164 ( .A(n309), .B(s[30]), .S0(n318), .Y(n96) );
  MX2X1TS U165 ( .A(n314), .B(s[31]), .S0(n318), .Y(n97) );
  XOR2XLTS U166 ( .A(b[31]), .B(a[31]), .Y(n312) );
  AO22XLTS U167 ( .A0(n105), .A1(n319), .B0(n318), .B1(s[1]), .Y(n67) );
  XOR2XLTS U168 ( .A(n317), .B(a[1]), .Y(n319) );
  INVX2TS U169 ( .A(b[1]), .Y(n98) );
  INVX2TS U170 ( .A(n98), .Y(n99) );
  NAND2X1TS U171 ( .A(a[0]), .B(b[0]), .Y(n115) );
  INVX2TS U172 ( .A(r), .Y(n104) );
  INVX2TS U173 ( .A(n104), .Y(n105) );
  INVX2TS U174 ( .A(n290), .Y(n111) );
  INVX2TS U175 ( .A(n290), .Y(n278) );
  OAI21XLTS U176 ( .A0(n228), .A1(n227), .B0(n226), .Y(n229) );
  OAI21XLTS U177 ( .A0(n158), .A1(n157), .B0(n156), .Y(n159) );
  NOR2XLTS U178 ( .A(a[3]), .B(b[3]), .Y(n128) );
  NOR2XLTS U179 ( .A(a[4]), .B(b[4]), .Y(n141) );
  OAI21XLTS U180 ( .A0(n176), .A1(n175), .B0(n174), .Y(n194) );
  OAI21XLTS U181 ( .A0(n210), .A1(n209), .B0(n208), .Y(n230) );
  NOR2XLTS U182 ( .A(a[19]), .B(b[19]), .Y(n264) );
  OAI21XLTS U183 ( .A0(n144), .A1(n143), .B0(n142), .Y(n160) );
  OAI21XLTS U184 ( .A0(n196), .A1(n225), .B0(n234), .Y(n201) );
  INVX2TS U185 ( .A(n250), .Y(n242) );
  INVX2TS U186 ( .A(n277), .Y(n268) );
  AO21X1TS U187 ( .A0(n116), .A1(a[1]), .B0(n315), .Y(n131) );
  INVX2TS U188 ( .A(n164), .Y(n145) );
  OAI21XLTS U189 ( .A0(n255), .A1(n260), .B0(n263), .Y(n258) );
  CLKBUFX2TS U190 ( .A(rstn), .Y(n113) );
  CLKBUFX2TS U191 ( .A(n113), .Y(n112) );
  CLKBUFX2TS U192 ( .A(n112), .Y(n327) );
  CLKBUFX2TS U193 ( .A(n112), .Y(n320) );
  CLKBUFX2TS U194 ( .A(n113), .Y(n326) );
  CLKBUFX2TS U195 ( .A(n112), .Y(n321) );
  CLKBUFX2TS U196 ( .A(n112), .Y(n323) );
  CLKBUFX2TS U197 ( .A(n113), .Y(n324) );
  CLKBUFX2TS U198 ( .A(rstn), .Y(n322) );
  CLKBUFX2TS U199 ( .A(rstn), .Y(n325) );
  NOR2BX2TS U200 ( .AN(n115), .B(n99), .Y(n316) );
  INVX2TS U201 ( .A(n316), .Y(n116) );
  NOR2BX1TS U202 ( .AN(n99), .B(n115), .Y(n315) );
  INVX2TS U203 ( .A(n125), .Y(n120) );
  NAND2X1TS U204 ( .A(a[2]), .B(b[2]), .Y(n127) );
  NAND2X1TS U205 ( .A(n120), .B(n127), .Y(n117) );
  XNOR2X1TS U206 ( .A(n131), .B(n117), .Y(n118) );
  CLKBUFX2TS U207 ( .A(n253), .Y(n299) );
  CLKBUFX2TS U208 ( .A(n299), .Y(n318) );
  CLKBUFX2TS U209 ( .A(n318), .Y(n139) );
  INVX2TS U210 ( .A(n127), .Y(n119) );
  AOI21X1TS U211 ( .A0(n131), .A1(n120), .B0(n119), .Y(n123) );
  INVX2TS U212 ( .A(n128), .Y(n121) );
  NAND2X1TS U213 ( .A(a[3]), .B(b[3]), .Y(n126) );
  NAND2X1TS U214 ( .A(n121), .B(n126), .Y(n122) );
  AOI21X1TS U215 ( .A0(n131), .A1(n130), .B0(n129), .Y(n164) );
  INVX2TS U216 ( .A(n141), .Y(n135) );
  NAND2X1TS U217 ( .A(a[4]), .B(b[4]), .Y(n143) );
  NAND2X1TS U218 ( .A(n135), .B(n143), .Y(n132) );
  XNOR2X1TS U219 ( .A(n145), .B(n132), .Y(n133) );
  INVX2TS U220 ( .A(n143), .Y(n134) );
  AOI21X1TS U221 ( .A0(n145), .A1(n135), .B0(n134), .Y(n138) );
  INVX2TS U222 ( .A(n144), .Y(n136) );
  NAND2X1TS U223 ( .A(a[5]), .B(b[5]), .Y(n142) );
  NAND2X1TS U224 ( .A(n136), .B(n142), .Y(n137) );
  AOI21X1TS U225 ( .A0(n145), .A1(n155), .B0(n160), .Y(n149) );
  INVX2TS U226 ( .A(n154), .Y(n146) );
  NAND2X1TS U227 ( .A(a[6]), .B(b[6]), .Y(n157) );
  NAND2X1TS U228 ( .A(n146), .B(n157), .Y(n147) );
  CLKBUFX2TS U229 ( .A(n299), .Y(n171) );
  INVX2TS U230 ( .A(n158), .Y(n150) );
  NAND2X1TS U231 ( .A(a[7]), .B(b[7]), .Y(n156) );
  NAND2X1TS U232 ( .A(n150), .B(n156), .Y(n151) );
  XNOR2X1TS U233 ( .A(n152), .B(n151), .Y(n153) );
  NAND2X1TS U234 ( .A(n155), .B(n161), .Y(n163) );
  AOI21X1TS U235 ( .A0(n161), .A1(n160), .B0(n159), .Y(n162) );
  CLKINVX1TS U236 ( .A(n237), .Y(n196) );
  INVX2TS U237 ( .A(n173), .Y(n165) );
  NAND2X1TS U238 ( .A(a[8]), .B(b[8]), .Y(n175) );
  NAND2X1TS U239 ( .A(n165), .B(n175), .Y(n166) );
  INVX2TS U240 ( .A(n176), .Y(n168) );
  NAND2X1TS U241 ( .A(a[9]), .B(b[9]), .Y(n174) );
  NAND2X1TS U242 ( .A(n168), .B(n174), .Y(n169) );
  XNOR2X1TS U243 ( .A(n170), .B(n169), .Y(n172) );
  INVX2TS U244 ( .A(n189), .Y(n178) );
  INVX2TS U245 ( .A(n194), .Y(n177) );
  INVX2TS U246 ( .A(n188), .Y(n182) );
  NAND2X1TS U247 ( .A(a[10]), .B(b[10]), .Y(n191) );
  NAND2X1TS U248 ( .A(n182), .B(n191), .Y(n179) );
  XNOR2X1TS U249 ( .A(n183), .B(n179), .Y(n180) );
  CLKBUFX2TS U250 ( .A(n253), .Y(n205) );
  INVX2TS U251 ( .A(n191), .Y(n181) );
  AOI21X1TS U252 ( .A0(n183), .A1(n182), .B0(n181), .Y(n186) );
  INVX2TS U253 ( .A(n192), .Y(n184) );
  NAND2X1TS U254 ( .A(a[11]), .B(b[11]), .Y(n190) );
  NAND2X1TS U255 ( .A(n184), .B(n190), .Y(n185) );
  NAND2X1TS U256 ( .A(n189), .B(n195), .Y(n225) );
  AOI21X1TS U257 ( .A0(n195), .A1(n194), .B0(n193), .Y(n234) );
  INVX2TS U258 ( .A(n201), .Y(n213) );
  INVX2TS U259 ( .A(n207), .Y(n200) );
  NAND2X1TS U260 ( .A(a[12]), .B(b[12]), .Y(n209) );
  NAND2X1TS U261 ( .A(n200), .B(n209), .Y(n197) );
  INVX2TS U262 ( .A(n209), .Y(n199) );
  AOI21X1TS U263 ( .A0(n201), .A1(n200), .B0(n199), .Y(n204) );
  INVX2TS U264 ( .A(n210), .Y(n202) );
  NAND2X1TS U265 ( .A(a[13]), .B(b[13]), .Y(n208) );
  NAND2X1TS U266 ( .A(n202), .B(n208), .Y(n203) );
  INVX2TS U267 ( .A(n224), .Y(n212) );
  INVX2TS U268 ( .A(n230), .Y(n211) );
  INVX2TS U269 ( .A(n223), .Y(n217) );
  NAND2X1TS U270 ( .A(a[14]), .B(b[14]), .Y(n227) );
  NAND2X1TS U271 ( .A(n217), .B(n227), .Y(n214) );
  XNOR2X1TS U272 ( .A(n218), .B(n214), .Y(n215) );
  CLKBUFX2TS U273 ( .A(n253), .Y(n245) );
  INVX2TS U274 ( .A(n227), .Y(n216) );
  AOI21X1TS U275 ( .A0(n218), .A1(n217), .B0(n216), .Y(n221) );
  INVX2TS U276 ( .A(n228), .Y(n219) );
  NAND2X1TS U277 ( .A(a[15]), .B(b[15]), .Y(n226) );
  NAND2X1TS U278 ( .A(n219), .B(n226), .Y(n220) );
  NAND2X1TS U279 ( .A(n224), .B(n231), .Y(n233) );
  AOI21X1TS U280 ( .A0(n231), .A1(n230), .B0(n229), .Y(n232) );
  AOI21X1TS U281 ( .A0(n237), .A1(n236), .B0(n235), .Y(n290) );
  INVX2TS U282 ( .A(n247), .Y(n241) );
  NAND2X1TS U283 ( .A(a[16]), .B(b[16]), .Y(n249) );
  NAND2X1TS U284 ( .A(n241), .B(n249), .Y(n238) );
  XNOR2X1TS U285 ( .A(n278), .B(n238), .Y(n239) );
  INVX2TS U286 ( .A(n249), .Y(n240) );
  AOI21X1TS U287 ( .A0(n278), .A1(n241), .B0(n240), .Y(n244) );
  NAND2X1TS U288 ( .A(a[17]), .B(b[17]), .Y(n248) );
  NAND2X1TS U289 ( .A(n242), .B(n248), .Y(n243) );
  AOI21X1TS U290 ( .A0(n111), .A1(n261), .B0(n266), .Y(n255) );
  NAND2X1TS U291 ( .A(a[18]), .B(b[18]), .Y(n263) );
  NAND2X1TS U292 ( .A(n251), .B(n263), .Y(n252) );
  CLKBUFX2TS U293 ( .A(n253), .Y(n281) );
  NAND2X1TS U294 ( .A(a[19]), .B(b[19]), .Y(n262) );
  NAND2X1TS U295 ( .A(n256), .B(n262), .Y(n257) );
  XNOR2X1TS U296 ( .A(n258), .B(n257), .Y(n259) );
  NAND2X1TS U297 ( .A(n261), .B(n267), .Y(n274) );
  AOI21X1TS U298 ( .A0(n267), .A1(n266), .B0(n265), .Y(n277) );
  AOI21X1TS U299 ( .A0(n278), .A1(n269), .B0(n268), .Y(n272) );
  INVX2TS U300 ( .A(n276), .Y(n270) );
  NAND2X1TS U301 ( .A(a[20]), .B(b[20]), .Y(n275) );
  NAND2X1TS U302 ( .A(n270), .B(n275), .Y(n271) );
  AOI21X1TS U303 ( .A0(n278), .A1(n283), .B0(n287), .Y(n280) );
  NAND2X1TS U304 ( .A(a[21]), .B(b[21]), .Y(n284) );
  NAND2X1TS U305 ( .A(n286), .B(n284), .Y(n279) );
  NAND2X1TS U306 ( .A(n283), .B(n286), .Y(n289) );
  INVX2TS U307 ( .A(n284), .Y(n285) );
  AOI21X1TS U308 ( .A0(n287), .A1(n286), .B0(n285), .Y(n288) );
  OAI21X1TS U309 ( .A0(n290), .A1(n289), .B0(n288), .Y(n292) );
  AFHCONX2TS U310 ( .A(b[22]), .B(n106), .CI(n292), .CON(n294), .S(n291) );
  AFHCINX2TS U311 ( .CIN(n294), .B(n100), .A(b[23]), .S(n293), .CO(n296) );
  AFHCONX2TS U312 ( .A(b[24]), .B(n107), .CI(n296), .CON(n298), .S(n295) );
  AFHCINX2TS U313 ( .CIN(n298), .B(n101), .A(b[25]), .S(n297), .CO(n301) );
  CLKBUFX2TS U314 ( .A(n299), .Y(n306) );
  AFHCONX2TS U315 ( .A(b[26]), .B(n108), .CI(n301), .CON(n303), .S(n300) );
  AFHCINX2TS U316 ( .CIN(n303), .B(n102), .A(b[27]), .S(n302), .CO(n305) );
  AFHCONX2TS U317 ( .A(b[28]), .B(n109), .CI(n305), .CON(n308), .S(n304) );
  AFHCINX2TS U318 ( .CIN(n308), .B(n103), .A(b[29]), .S(n307), .CO(n310) );
  AFHCONX2TS U319 ( .A(b[30]), .B(n110), .CI(n310), .CON(n311), .S(n309) );
  INVX2TS U320 ( .A(n311), .Y(n313) );
  NOR2XLTS U321 ( .A(n316), .B(n315), .Y(n317) );
endmodule

