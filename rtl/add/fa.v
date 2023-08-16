// Implementation of full adder
module fa(a,b,c,s,cout);
	input a, b, c;
	output s, cout;
	
	wire s1, c1, s2, c2;
	
	ha ha_0(a, b, s1, c1);
	ha ha_1(c, s1, s2, c2);

	assign s = s2;
	assign cout = c1 | c2; 
endmodule
