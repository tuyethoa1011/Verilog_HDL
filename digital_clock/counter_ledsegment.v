//complete 3.1


//KEY0: clock KEY3: reset_n HEX0: led_out
module counter_ledsegment(input clock,input reset_n, output [6:0] led_out);
	wire [3:0] bcd_out;
	counter_BCD U1 (.clock(clock),.reset_n(reset_n),.q_out(bcd_out));
	
	decoder0to9 U2 (.out(led_out),.BCD(bcd_out));
endmodule