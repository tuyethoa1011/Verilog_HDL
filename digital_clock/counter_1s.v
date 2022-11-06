//3.2

module counter_1s(input CLOCK_50, input [3:0] KEY,output [6:0] HEX0);
	wire q_up;
	lpm_counter0 U1(.clock(CLOCK_50),.q(q_up)); //PIN_N2 on board 50Mhz Clock 
															 //bo counter modulus 50M -> 1Hz -> 1s delay
	counter_ledsegment U2 (.clock(q_up),.reset_n(KEY[0]),.led_out(HEX0));

endmodule