module mux2to1(a,b,sel,y);
	parameter n = 3;
	
	input [n-1:0] a;
	input [n-1:0] b;
	input sel;
	
	output [n-1:0] y;
	
	assign y = (sel==2'b0) ? a : b;
endmodule