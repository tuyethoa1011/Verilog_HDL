// ALU 3 bits 
//functional description: adder, subber, add 1, sub 1
//00: adder 01: subber 10: add 1 11: sub 1 
module alu(sel,a,b,y);
	parameter n = 3;
	input [1:0] sel;
	input [n-1:0] a;
	input [n-1:0] b;
	
	output [n-1:0] y;
	
	assign y = (sel == 2'b00) ? (a+b) :
				  (sel == 2'b01) ? (a-b) :
				  (sel == 2'b10) ? (a+1) :
				  (a-1);
endmodule


