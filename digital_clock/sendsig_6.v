module sendsig_6(present_state,sig, previous_state);
	output reg sig;
	input [6:0] present_state;
	
	output reg [6:0] previous_state ;
	
	always @(present_state)
	begin
		previous_state = present_state;
		sig = 1'b0;
		if(present_state == 7'b1011001)
		begin
			if(previous_state == 7'b000000)
			begin
				sig = 1'b1;
			end
		end	
	end
endmodule