module mux8to1(s,a,b,c,d,e,f,g,h,out); //Build from mux2to1 //s: select 
		
	input [2:0] s;
	output out;
	input a,b,c,d,e,f,g,h;
	
	wire c1, c2,c3,c4,c5,c6;
	
	mux2_to1 U1 (.s(s[0]),.x(a),.y(b),.m(c1));
	mux2_to1 U2 (.s(s[0]),.x(c),.y(d),.m(c2));
	
	mux2_to1 U3 (.s(s[0]),.x(e),.y(f),.m(c3));
	
	mux2_to1 U4 (.s(s[0]),.x(g),.y(h),.m(c4));
	mux2_to1 U5 (.s(s[1]),.x(c1),.y(c2),.m(c5));
	
	mux2_to1 U6 (.s(s[1]),.x(c3),.y(c4),.m(c6));
	
	mux2_to1 U7 (.s(s[2]),.x(c5),.y(c6),.m(out));
	
endmodule