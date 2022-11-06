module second(CLOCK_50,reset, HEX2,HEX3,q_out,conv_out,sel,compar_out,mux_out,signal, count);
	
	output signal;
	reg temp;
	input CLOCK_50;
	input reset;
	output [5:0] count;
	output [6:0] HEX2;
	output [6:0] HEX3;
	output wire [5:0] q_out;
	output wire [3:0] conv_out;

	wire clk_up;	
	output wire [1:0] sel;
	output wire [2:0] compar_out;
	output wire [3:0] mux_out;
	
	lpm_counter0 U0 (.clock(CLOCK_50),.q(clk_up));
	
	seq_counter_6bit U1 (.clock(clk_up),.q_out(q_out),.reset_n(reset),.signal(signal),.count(count));
	
	comparator_6bit U2 (.data(q_out),.out(compar_out),.sel(sel));
	
	convert_5bit U3 (.data(q_out[4:0]),.out(conv_out));
	
	
	//4 muxes 
	mux2to1 U4 (.sel(sel),.a(q_out[3]),.b(conv_out[3]),.out(mux_out[3]));
	mux2to1 U5 (.sel(sel),.a(q_out[2]),.b(conv_out[2]),.out(mux_out[2]));
	mux2to1 U6 (.sel(sel),.a(q_out[1]),.b(conv_out[1]),.out(mux_out[1]));
	mux2to1 U7 (.sel(sel),.a(q_out[0]),.b(conv_out[0]),.out(mux_out[0]));
	//------------
	
	//q_out[4] q_out[3]
	//decoder HEX0 HEX1
	decoder0to9 U8 (.BCD(compar_out),.out(HEX3));
	decoder0to9 U9 (.BCD(mux_out),.out(HEX2));
	
	


endmodule