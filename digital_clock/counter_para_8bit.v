//2.2
module counter_para_8bit(input clock,input enable,input clear,output [7:0] q_out);
	counter_para #(.n(8)) U1 (.clock(clock),.clear(clear),.enable(enable),.q_out(q_out));
endmodule