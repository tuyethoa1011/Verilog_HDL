
module comparator_greaterthan6(data_in, signal);

	input [2:0] data_in;
	output reg signal;
	
	always@(*)
	begin
		if(data_in < 3'b110)
		begin
			signal = 1'b0;
		end
		else signal = 1'b1;
	end
	
endmodule