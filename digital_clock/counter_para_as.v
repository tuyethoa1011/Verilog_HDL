module counter_para_as#(parameter n = 4)(output reg [n-1:0] q_out,input clock,input clear);
	
	always@(negedge clear or posedge clock)
		if(clear == 1'b0)
			q_out = 0;
		else if(!clock)
			q_out <= q_out;
		else
		begin
			q_out <= q_out+1;
			if(q_out >= 4'b1001)
				begin
					q_out <= 5'b0000;
				end
		end
			
endmodule