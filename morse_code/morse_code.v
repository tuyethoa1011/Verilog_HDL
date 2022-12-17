
//complete morsecode

module morse_code(light,letter_in,half_sec,length_out,lsbit_sreg, state, en, start,reset,morsecode_shiftreg);
	output light; //ledr0
	input [2:0] letter_in; //sw2-0
	
	input reset; //KEY0
	input half_sec; //KEY1
	
	output wire [3:0] length_out;
	output wire lsbit_sreg;
	
	output wire [12:0] morsecode_shiftreg;
	
	output [3:0] state;
	
	output wire en;
	
	input start;
	
	morsecode_datapath U0 (.enable(en),.load(half_sec),.q_out(length_out),.shiftreg_out(morsecode_shiftreg),.letter_in(letter_in),.lastbitshift(lsbit_sreg));
	
	FSM U1 (.start(start),.half_sec(half_sec),.reset(reset),.light(light),.c_datain(length_out),.s_datain(morsecode_shiftreg),.lastbit(lsbit_sreg),.ctrl_enable(en),.state(state));

endmodule