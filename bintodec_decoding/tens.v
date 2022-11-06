
//Circuit B

module tens(z,out);
	input z;
	output [6:0] out;
	
	assign out = (z==1'b0) ? (7'b1000000) :
					 (z==1'b1) ? (7'b1111001) :
					  1'bx;
					 
endmodule
				