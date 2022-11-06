//1.1
module t_flipflop(en,clock,clear,q_out);
	input en;
	input clock;
	input clear;
	output reg q_out;

	always@(negedge clear or posedge clock)
		if(!clear)
			q_out <= 1'b0;
		else if(!en) 
			q_out <= q_out;
		else 
			q_out <= ~q_out;
					
endmodule


module counter_4bit(en,clock,clear,q_out);
	input en;
	input clock;
	input clear;
	wire w1,w2,w3;
	output wire [3:0] q_out;
	
	
	
	t_flipflop U1(.en(en),.clock(clock),.clear(clear),.q_out(q_out[0]));
	assign w1 = en&q_out[0];
	t_flipflop U2(.en(w1),.clock(clock),.clear(clear),.q_out(q_out[1]));
	assign w2 = w1&q_out[1];
	t_flipflop U3(.en(w2),.clock(clock),.clear(clear),.q_out(q_out[2]));
	assign w3 = w2&q_out[2];
	t_flipflop U4(.en(w3),.clock(clock),.clear(clear),.q_out(q_out[3]));
	
endmodule