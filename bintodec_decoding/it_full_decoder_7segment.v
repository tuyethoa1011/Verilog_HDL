module kit_full_decoder_7segment(SW,out);
	output [6:0] out;
	input [17:0] SW;
	wire [2:0] m;
	
	mux_5to1_3bit U1 (.s(SW[17:15]),.u(SW[14:12]),.v(SW[11:9]),.w(SW[8:6]),.x(SW[5:3]),.y(SW[2:0]),.m(m[2:0]));
	decoder_7segment U2 (.c(m[2:0]),.out(out[6:0]));
endmodule