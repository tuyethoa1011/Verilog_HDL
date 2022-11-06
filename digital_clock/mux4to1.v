module mux4to1(sel,a,b,c,d,out);
	input a;
	input b;
	input c;
	input d;
	
	input sel;
	output out;

	assign out = (sel==2'b00) ? a: 
					 (sel==2'b01) ? b:
					 (sel==2'b10) ? c:d;
endmodule
