module mux_2to1_8bit(s,x,y,m);
	input [7:0] x,y;
	input s;
	output [7:0] m;
	
	mux2_to1 U1(.x(x[0]),.y(y[0]),.s(s), .m(m[0]));
	mux2_to1 U2(.x(x[1]),.y(y[1]),.s(s),.m(m[1]));
	mux2_to1 U3(.x(x[2]),.y(y[2]),.s(s),.m(m[2]));
	mux2_to1 U4(.x(x[3]),.y(y[3]),.s(s),.m(m[3]));
	mux2_to1 U5(.x(x[4]),.y(y[4]),.s(s),.m(m[4]));
	mux2_to1 U6(.x(x[5]),.y(y[5]),.s(s),.m(m[5]));
	mux2_to1 U7(.x(x[6]),.y(y[6]),.s(s),.m(m[6]));
	mux2_to1 U8(.x(x[7]),.y(y[7]),.m(m[7]));
	
endmodule