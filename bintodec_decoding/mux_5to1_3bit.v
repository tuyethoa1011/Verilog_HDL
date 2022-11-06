//Thiết kế bộ Mux_5to1_3bit

module mux_5to1_3bit(s,u,v,w,x,y,m);
	input [2:0] s,u,v,w,x,y;
	output [2:0] m;
	
	mux_5to1_1bit U1(.s(s[2:0]),.u(u[0]),.m(m[0]),.v(v[0]),.w(w[0]),.x(x[0]),.y(y[0]));
	mux_5to1_1bit U2(.s(s[2:0]),.u(u[1]),.m(m[1]),.v(v[1]),.w(w[1]),.x(x[1]),.y(y[1]));
	mux_5to1_1bit U3(.s(s[2:0]),.u(u[2]),.m(m[2]),.v(v[2]),.w(w[2]),.x(x[2]),.y(y[2]));
	
endmodule
	