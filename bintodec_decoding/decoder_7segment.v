module decoder_7segment(out,c);
	output [6:0] out;
	input [2:0] c;
	//Cach1: Truth table
	assign out[6] = (~c[0] & ~c[2]) | c[1] | (c[2] & c[0]);
	assign out[5] = c[0] | c[1];
	assign out[4] = out[5];
	assign out[3] = (~c[2] & ~c[1] & ~c[0]) | (c[2] & c[1]) | (c[2] & c[0]);
	assign out[2] = c[2] & (c[1] | c[0]) ;
	assign out[1] = out[2] ;
	assign out[0] = c[1] | c[2];
	
	//Cach 2: dung toan tu dieu kien
	/*assign out = (c==3'b000) ? (7'b1001000):
					 (c==3'b001) ? (7'b0110000):
					 (c==3'b010) ? (7'b1110001):
					 (c==3'b011) ? (7'b1110001):
					 (c==3'b100) ? (7'b0000001):
					 (c==3'b101) ? (7'b1111111):
					 (c==3'b110) ? (7'b1111111):
					 (c==3'b111) ? (7'b1111111):
					 1'bx;*/
endmodule