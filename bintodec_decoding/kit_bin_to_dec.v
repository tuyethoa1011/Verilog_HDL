module kit_bin_to_dec(SW, HEX0,HEX1);
	input [3:0]SW;
	output [6:0] HEX0;
	output [13:7] HEX1;
	
	bin_to_dec_4bit U1 (.v(SW[3:0]),.out1(HEX0[6:0]),.out2(HEX1[13:7]));

	
endmodule