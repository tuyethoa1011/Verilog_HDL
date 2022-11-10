
//complete morsecode

module morse_code(light,reset,half_sec,letter_in,morsecode_length, length_out,morsecode_shiftreg,lsbit_sreg,l,en,state);
	output light; //ledr0
	input [2:0] letter_in; //sw2-0
	
	input reset; //KEY0
	input half_sec; //KEY1
	
	output wire [3:0] morsecode_length, length_out;
	output wire [10:0] morsecode_shiftreg;
	output wire [10:0] lsbit_sreg;
	
	output [3:0] state;

	output wire l,en; //l: load en: enable wire
	
	morsecode_encoder U0(.letter_in(letter_in),.morsecode_length(morsecode_length),.morsecode_shiftreg(morsecode_shiftreg));
	
	morsecode_lengthcounter U1 (.enable(en),.clk(half_sec),.load(l),.data_in(morsecode_length),.q_out(length_out));
	
	morsecode_shiftregister U2(.enable(en),.clk(half_sec),.load(l),.data_in(morsecode_shiftreg), .shiftreg_out(lsbit_sreg));
	
	FSM U3 (.half_sec(half_sec),.reset(reset),.light(light),.c_datain(length_out),.s_datain(lsbit_sreg[0]),.ctrl_load(l),.ctrl_enable(en),.state(state));

endmodule