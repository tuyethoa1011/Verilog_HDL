//Circuit logic A

module transfer_calc(v,a);
	input [2:0] v;
	output [2:0] a;
	
	//cach1: Truth table
	assign a[2] = v[2] & v[1];
	assign a[1] = ~v[1];
	assign a[0] = v[0];
	
	//cach2: dieu kien
	/*assign a = (v==3'b010) ? (3'b000) :
				  (v==3'b011) ? (3'b001) :
				  (v==3'b100) ? (3'b010) :
				  (v==3'b101) ? (3'b011) :
				  (v==3'b110) ? (3'b100) :
				  (v==3'b111) ? (3'b101) :
				  1'bx;*/
endmodule