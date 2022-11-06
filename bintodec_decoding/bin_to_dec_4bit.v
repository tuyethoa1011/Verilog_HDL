//Thiết kế mạch chuyển đổi số Binary sang Decimal: 0->15

module bin_to_dec_4bit(SW,HEX0,HEX1);
	wire z;
	output [6:0] HEX0;
	output [6:0] HEX1;
	input [3:0] SW;
	wire [2:0] a;
	wire [3:0] m;
	
	comparator U1 (.v(SW[3:0]),.z(z));
	
	transfer_calc U2(.v(SW[2:0]), .a(a[2:0]));
	
	mux2_to1 U3 (.s(z), .x(SW[3]), .y(0), .m(m[3]));
	mux2_to1 U4 (.s(z),.x(SW[2]),.y(a[2]),.m(m[2]));
	mux2_to1 U5(.s(z),.x(SW[1]),.y(a[1]),.m(m[1]));
	mux2_to1 U6 (.s(z),.x(SW[0]),.y(a[0]),.m(m[0]));

	
	tens U7(.z(z),.out(HEX1[6:0]));
	
	decoder_7segment_4bit U8(.m(m[3:0]),.out(HEX0[6:0]));
	
	

endmodule
	
	

















	