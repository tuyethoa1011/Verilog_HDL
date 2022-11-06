module full_decoder_7segment(s,u,v,w,x,y,out);
	output [6:0] out;
	input [17:15] s;
	wire [2:0] m;
	input [14:12] u;
	input [11:9] v;
	input [8:6] w;
	input [5:3] x;
	input [2:0] y;
	
	mux_5to1_3bit U1 (.s(s[17:15]),.u(u[14:12]),.v(v[11:9]),.w(w[8:6]),.x(x[5:3]),.y(y[2:0]),.m(m[2:0]));
	decoder_7segment U2 (.c(m[2:0]),.out(out[6:0]));
endmodule