module reg_3bit (D,Clock,Q,Qn);
	input [2:0] D;
	output [2:0] Q;
	output [2:0] Qn;
	
	input Clock;
	
	d_ff U1(.D(D[2]),.Clk(Clock),.Q(Q[2]),.Qn(Qn[2]));
	d_ff U2(.D(D[1]),.Clk(Clock),.Q(Q[1]),.Qn(Qn[1]));
	d_ff U3(.D(D[0]),.Clk(~Clock),.Q(Q[0]),.Qn(Qn[0]));
	
endmodule