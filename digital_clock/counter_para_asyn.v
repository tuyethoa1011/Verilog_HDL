module counter_para_2#(parameter n = 4)(output reg [n-1:0] q_out,input clock,input clear,input enable);
	
	always@(posedge clock or negedge enable)
		if(clear == 1'b0)
			q_out = 0;
		else if(!enable)
			q_out <= q_out;
		else
			q_out <= q_out+1;
			
endmodule