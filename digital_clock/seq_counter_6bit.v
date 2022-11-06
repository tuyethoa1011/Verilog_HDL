module seq_counter_6bit(clock,q_out,reset_n,count, signal);
	input clock;
	output reg signal;
	output reg [5:0] count;
	output reg [5:0] q_out;
	input reset_n;
	
	initial
	begin
		count = 6'b000001;
	end
	
	always@(negedge reset_n or posedge clock)
	begin
		if(!reset_n)
			q_out <= 6'b00000;
		else begin
			q_out <= q_out + 1;
				if(q_out == 6'b111011)
				begin
					q_out <= 6'b000000;
				end
		end
	end
	
	always@(posedge clock or negedge reset_n)
	begin
		if(!reset_n)
		begin
			count <= 6'b000001;
			signal <= 1'b0;
		end
		else if (clock)
		begin
			count <= count + 1;
			signal <= 1'b0;
			if(count == 6'b111100) //60
			begin
				signal <= 1'b1;
				count <= 6'b000001;
			end
		end
		else begin
			count <= count;
			signal <= 1'b0;
		end
	end
endmodule