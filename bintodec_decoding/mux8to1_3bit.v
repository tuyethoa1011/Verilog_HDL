module mux8to1_3bit(s,a,b,c,d,e,f,g,h,out);
	input [2:0] s,a,b,c,d,e,f,g,h;
	output [2:0] out;
	
	mux8to1 U1 (.s(s[2:0]),.a(a[2]),.b(b[2]),.c(c[2]),.d(d[2]),.e(e[2]),.f(f[2]),.g(g[2]),.h(h[2]),.out(out[2]));
	mux8to1 U2 (.s(s[2:0]),.a(a[1]),.b(b[1]),.c(c[1]),.d(d[1]),.e(e[1]),.f(f[1]),.g(g[1]),.h(h[1]),.out(out[1]));
	mux8to1 U3 (.s(s[2:0]),.a(a[0]),.b(b[0]),.c(c[0]),.d(d[0]),.e(e[0]),.f(f[0]),.g(g[0]),.h(h[0]),.out(out[0]));

endmodule