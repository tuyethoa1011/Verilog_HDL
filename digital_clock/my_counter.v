//1.2
module my_counter(enable,clock,clear,q_out);
	output reg [3:0] q_out;
	input clock;
	input clear;
	input enable;
	
	always@(posedge clock or negedge clear)
		if(!clear)
			q_out = 0;
		else if(!enable)
			q_out <= q_out;
		else
			q_out <= q_out+1;
endmodule