module kit_counter_ledsegment(input [3:0] KEY, output [0:6] HEX0);
	counter_ledsegment U1 (.clock(KEY[0]),.reset_n(KEY[3]),.led_out(HEX0));
endmodule