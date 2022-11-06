module kit_decoder_7segment(SW,HEX0);
	input [17:15] SW;
	output [0:6] HEX0;
	
	decoder_7segment(.c(SW[17:15]),.out(HEX0[0:6]));
	
endmodule