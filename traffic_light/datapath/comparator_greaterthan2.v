
module comparator_greaterthan2(data_in, signal);

	input [2:0] data_in;
	output reg signal;
	
	always@(*)
	begin
		if(data_in < 3'b010)
		begin
			signal = 1'b0;
		end
		else signal = 1'b1;
	end
	
endmodule