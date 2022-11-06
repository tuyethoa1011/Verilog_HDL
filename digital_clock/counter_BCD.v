//counter 3.1
module counter_BCD(input clock,input reset_n,output [3:0] q_out);
	counter_para_as#(.n(4)) U1 (.clock(clock),.clear(reset_n),.q_out(q_out));
endmodule