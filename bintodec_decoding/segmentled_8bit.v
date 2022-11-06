module segmentled_8bit(input [2:0] s,input [2:0] a, input [2:0] b,input [2:0] c,input [2:0] d ,input [2:0] e,input [2:0] f, input [2:0] g,input [2:0] h,output [6:0] out);
	
	wire [2:0] m;
	
	mux8to1_3bit U1 (.s(s[2:0]),.a(a[2:0]),.b(b[2:0]),.c(c[2:0]),.d(d[2:0]),.e(e[2:0]),.f(f[2:0]),.g(g[2:0]),.h(h[2:0]),.out(m[2:0]));
	
	decoder_7segment U2 (.c(m[2:0]),.out(out[6:0]));

endmodule