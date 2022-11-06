module seq_counter24(clock,q_out,reset_n);
	input clock;
	output reg [4:0] q_out;
	input reset_n;
	
	always@(negedge reset_n or posedge clock)
	begin
		if(!reset_n)
			q_out <= 5'b00000;
		else
		begin
			q_out <= q_out + 1;
				if(q_out == 5'b11000)
				begin
					q_out <= 5'b00000;
				end
		end
	end
endmodule