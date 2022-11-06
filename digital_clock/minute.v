module minute(signal_clk,reset, HEX4,HEX5,q_out,conv_out,sel,compar_out,mux_out,signal);

	input signal_clk;
	output signal;
	
	input reset;
	output [6:0] HEX4;
	output [6:0] HEX5;
	output wire [5:0] q_out;
	output wire [3:0] conv_out;
	

	output wire [1:0] sel;
	output wire [2:0] compar_out;
	output wire [3:0] mux_out;
	
	comparator_6bit U0 (.data(q_out),.out(compar_out),.sel(sel));
	
	seq_counter_6bit U1 (.clock(signal_clk),.q_out(q_out),.reset_n(reset),.signal(signal));
	
	convert_5bit U2 (.data(q_out[4:0]),.out(conv_out));
	
	
	//4 muxes
	mux2to1 U3 (.sel(sel),.a(q_out[3]),.b(conv_out[3]),.out(mux_out[3]));
	mux2to1 U4(.sel(sel),.a(q_out[2]),.b(conv_out[2]),.out(mux_out[2]));
	mux2to1 U5 (.sel(sel),.a(q_out[1]),.b(conv_out[1]),.out(mux_out[1]));
	mux2to1 U6 (.sel(sel),.a(q_out[0]),.b(conv_out[0]),.out(mux_out[0]));
	//------------
	
	//q_out[4] q_out[3]
	//decoder HEX0 HEX1
	decoder0to9 U7 (.BCD(compar_out),.out(HEX5));
	decoder0to9 U8 (.BCD(mux_out),.out(HEX4));
	
endmodule