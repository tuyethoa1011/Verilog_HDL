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
