//T flip flop
/*module t_flipflop(en,clock,clear,q_out);
	input en;
	input clock;
	input clear;
	output reg q_out;

	always@(negedge clear or posedge clock)
		if(!clear)
			q_out <= 1'b0;
		else if(clock) 
			q_out <= en;
		else 
			q_out <= ~en;
					
endmodule*/

module counter1_4bit_tff(en,clock,clear,out);
	input en;
	output [3:0] out;
	input clock;
	input clear;
	
	//en = cac inputs
	t_lipflop U1(.en(out[3]&out[2]&out[1]),.clock(clock),.clear(clear),.q_out(out[3])); //T3
	t_flipflop U2(.en(out[1]&out[0]),.clock(clock),.clear(clear),.q_out(out[2])); //T2
	t_flipflop U3(.en(out[0]|(~out[3]&out[2]&~out[1])),.clock(clock),.clear(clear),.q_out(out[1])); //T1
	t_flipflop U4(.en(1),.clock(clock),.clear(clear),.q_out(out[0])); //T0

endmodule