/*module d_ff(clock, reset, q_out);
	//Key[3]: clock Key[0]: reset
	//q_out: BCD
	//dff for counter
	input clock;
	input reset; 
	output reg q_out;
	
	always@(posedge clock or negedge reset)
		if(!reset)
			q_out <= 1'b0;
		else
			q_out <= q_out;
endmodule

module counter_BCD(clock, reset, out)
	parameter width = 4;
	output reg [width-1:0] out;
	input clock;
	input reset;
	
	d_ff U1(.clock(clock),.reset(reset),.q_out());
	d_ff U2(.clock(clock),.reset(reset),.q_out());
	d_ff U3(.clock(clock),.reset(reset),.q_out());
	d_ff U4(.clock(clock),.reset(reset),.q_out());
	
endmodule*/