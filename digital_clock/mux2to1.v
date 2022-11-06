module mux2to1(sel,a,b,out);
	input a;
	inout b;
	input sel;
	output out;

	assign out = (sel==1'b0)?a:b;
endmodule
