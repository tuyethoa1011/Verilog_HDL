module hex_7segmentdecoder(SW,HEX0,HEX1,HEX2,HEX3,HEX4);
	input [17:0] SW;
	output [0:6] HEX0;
	output [0:6] HEX1;
	output [0:6] HEX2;
	output [0:6] HEX3;
	output [0:6] HEX4;
	
	full_decoder_7segment U1 (.s(SW[17:15]),.u(SW[14:12]),.v(SW[11:9]),.w(SW[8:6]),.x(SW[5:3]),.y(SW[2:0]),.out(HEX4[0:6]));
	full_decoder_7segment U2 (.s(SW[17:15]),.u(SW[11:9]),.v(SW[8:6]),.w(SW[5:3]),.x(SW[2:0]),.y(SW[14:12]),.out(HEX3[0:6]));
	full_decoder_7segment U3 (.s(SW[17:15]),.u(SW[8:6]),.v(SW[5:3]),.w(SW[2:0]),.x(SW[14:12]),.y(SW[11:9]),.out(HEX2[0:6]));
	full_decoder_7segment U4 (.s(SW[17:15]),.u(SW[5:3]),.v(SW[2:0]),.w(SW[14:12]),.x(SW[11:9]),.y(SW[8:6]),.out(HEX1[0:6]));
	full_decoder_7segment U5 (.s(SW[17:15]),.u(SW[2:0]),.v(SW[14:12]),.w(SW[11:9]),.x(SW[8:6]),.y(SW[5:3]),.out(HEX0[0:6]));

endmodule