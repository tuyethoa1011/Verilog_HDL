
module morsecode_datapath(enable,load,q_out, shiftreg_out,letter_in,lastbitshift);
	//mong muon:
	//data duoc dua vao tai trang thai dau tien s0
	//trang thai thu 2 bat dau output data sau do shift reg 
	//toi da tiep theo se co 12 trang thai tuong ung voi tung lan shift reg
	// cho den khi qout =0 va shiftreg out =0 thi ta quay ve trang thai nap data moi
	//trong trai thai cuoi cung nen kich load de dua data tro ve 0 
	
	input enable,load;
	input [2:0] letter_in;
	wire 	[3:0] morsecode_length;
	wire [12:0] morsecode_shiftreg;
	output [3:0] q_out;
	output [12:0] shiftreg_out;
	output wire lastbitshift;
	
	assign lastbitshift = shiftreg_out[0];
	
	morsecode_lengthcounter U0(.enable(enable),.load(load),.data_in(morsecode_length),.q_out(q_out));
	morsecode_shiftregister U1 (.enable(enable),.load(load),.data_in(morsecode_shiftreg),.shiftreg_out(shiftreg_out));
	morsecode_encoder U2 (.letter_in(letter_in),.morsecode_length(morsecode_length),.morsecode_shiftreg(morsecode_shiftreg));
	
endmodule