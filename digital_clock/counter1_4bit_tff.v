

module counter1_4bit_tff(en,clock,clear,out);
	input en;
	output [3:0] out;
	input clock;
	input clear;
	
	//en = cac inputs
	t_flipflop U1(.en(out[3]&out[2]&out[1]),.clock(clock),.clear(clear),.q_out(out[3])); //T3
	t_flipflop U2(.en(out[1]&out[0]),.clock(clock),.clear(clear),.q_out(out[2])); //T2
	t_flipflop U3(.en(out[0]|(~out[3]&out[2]&~out[1])),.clock(clock),.clear(clear),.q_out(out[1])); //T1
	t_flipflop U4(.en(1),.clock(clock),.clear(clear),.q_out(out[0])); //T0

endmodule