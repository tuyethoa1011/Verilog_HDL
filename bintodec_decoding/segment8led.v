module segment8led(SW,HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0);
	
	input [17:0] SW;
	output [0:6] HEX0;
	output [0:6] HEX1;
	output [0:6] HEX2;
	output [0:6] HEX3;
	output [0:6] HEX4;
	output [0:6] HEX5;
	output [0:6] HEX6;
	output [0:6] HEX7;
	
	//default : SW[17:15] Select; SW[14:12] H ; SW[11:9] E SW[8:6] L ; SW[5:3] L ; SW[2:0] O; khong co gi het la 101
	wire [2:0] temp;
	assign temp = ~SW[14:12];
	
	
	segmentled_8bit U1 (.s(SW[17:15]),.a(temp[2:0]),.b(temp[2:0]),.c(temp[2:0]),.d(SW[14:12]),.e(SW[11:9]),.f(SW[8:6]),.g(SW[5:3]),.h(SW[2:0]),.out(HEX7[0:6]));
	segmentled_8bit U2 (.s(SW[17:15]),.a(temp[2:0]),.b(temp[2:0]),.c(SW[14:12]),.d(SW[11:9]),.e(SW[8:6]),.f(SW[5:3]),.g(SW[2:0]),.h(temp[2:0]),.out(HEX6[0:6]));
	segmentled_8bit U3 (.s(SW[17:15]),.a(temp[2:0]),.b(SW[14:12]),.c(SW[11:9]),.d(SW[8:6]),.e(SW[5:3]),.f(SW[2:0]),.g(temp[2:0]),.h(temp[2:0]),.out(HEX5[0:6]));
	segmentled_8bit U4 (.s(SW[17:15]),.a(SW[14:12]),.b(SW[11:9]),.c(SW[8:6]),.d(SW[5:3]),.e(SW[2:0]),.f(temp[2:0]),.g(temp[2:0]),.h(temp[2:0]),.out(HEX4[0:6]));
	
	segmentled_8bit U5 (.s(SW[17:15]),.a(SW[11:9]),.b(SW[8:6]),.c(SW[5:3]),.d(SW[2:0]),.e(temp[2:0]),.f(temp[2:0]),.g(temp[2:0]),.h(SW[14:12]),.out(HEX3[0:6]));
	segmentled_8bit U6 (.s(SW[17:15]),.a(SW[8:6]),.b(SW[5:3]),.c(SW[2:0]),.d(temp[2:0]),.e(temp[2:0]),.f(temp[2:0]),.g(SW[14:12]),.h(SW[11:9]),.out(HEX2[0:6]));
	segmentled_8bit U7 (.s(SW[17:15]),.a(SW[5:3]),.b(SW[2:0]),.c(temp[2:0]),.d(temp[2:0]),.e(temp[2:0]),.f(SW[14:12]),.g(SW[11:9]),.h(SW[8:6]),.out(HEX1[0:6]));
	segmentled_8bit U8 (.s(SW[17:15]),.a(SW[2:0]),.b(temp[2:0]),.c(temp[2:0]),.d(temp[2:0]),.e(SW[14:12]),.f(SW[11:9]),.g(SW[8:6]),.h(SW[5:3]),.out(HEX0[0:6]));
	

endmodule