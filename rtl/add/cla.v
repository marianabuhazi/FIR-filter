// 4-bit carry-lookahead adder
module cla(a, b, c0, s, c4);
	input [3:0] a,b;
	input c0;
	output [3:0] s;
	output c4;
	
	wire p0, p1, p2, p3, g0, g1, g2, g3;
	wire c1, c2, c3, c4;

	assign 
		p0 = a[0] | b[0],
		p1 = a[1] | b[1],
		p2 = a[2] | b[2],
		p3 = a[3] | b[3],
		
		g0 = a[0] & b[0],
		g1 = a[1] & b[1],
		g2 = a[2] & b[2],
		g3 = a[3] & b[3];

	assign 
		c1 = g0 | (p0&c0),
		c2 = g1 | (p1&c1),
		c3 = g2 | (p2&c2),
		c4 = g3 | (p3&c3);

	assign 
		s[0] = a[0]^b[0]^c0,
		s[1] = a[1]^b[1]^c1,
		s[2] = a[2]^b[2]^c2,
		s[3] = a[3]^b[3]^c3;
endmodule
