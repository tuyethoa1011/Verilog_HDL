// Thực hiện bộ mux5to1_1bit tu cac mux2to1_1bit

//mux2_to1
module mux_5to1_1bit(s,u,v,w,x,y,m);
	input u,v,w,x,y;
	input [2:0] s;
	output m;
	
	wire uv,wx,uvwx;
	
	mux2_to1 U1(.x(u),.y(v),.s(s[0]),.m(uv));
	mux2_to1 U2(.x(w),.y(x),.s(s[0]),.m(wx));
	mux2_to1 U3(.x(uv),.y(wx),.s(s[1]),.m(uvwx));
	mux2_to1 U4 (.x(uvwx),.y(y),.s(s[2]),.m(m));
	
endmodule
	
