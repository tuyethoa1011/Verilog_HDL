module digital_clock(CLOCK_50,HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,SW, KEY );
	
	input [15:0] SW; // SW 15-13 reset gio phut giay
	input CLOCK_50;
	
	//SW11: sel cho mux2to1 ở dưới
	
	output [6:0] HEX6;
	output [6:0] HEX7;
	output [6:0] HEX4;
	output [6:0] HEX5;
	output [6:0] HEX2;
	output [6:0] HEX3;
	
	input [3:0] KEY; //KEY3 dieu chinh giay, KEY2 dieu chinh phut, KEY1 dieu chinh giay
	
	wire s1,s2;
	wire i1, i2, i3;
	//Config by user

	//sel = 0: clock chay binh thuong boi xung CLOCK_50
	//sel = 1: clock co the config gio phut giay duoc boi user
	
	mux2to1 U3 (.sel(SW[11]),.a(CLOCK_50),.b(KEY[3]),.out(i1)); //mux2to1 second
	
	second U0 (.CLOCK_50(i1),.signal(s1),.HEX2(HEX2),.HEX3(HEX3),.reset(~SW[15]));
	
	
	mux2to1 U4 (.sel(SW[11]),.a(s1),.b(KEY[2]),.out(i2)); //mux2to1 minute
	
	minute U1 (.signal_clk(i2),.signal(s2),.HEX4(HEX4),.HEX5(HEX5),.reset(~SW[14]));
	
	
	mux2to1 U5 (.sel(SW[11]),.a(s2),.b(i2),.out(i3)); //mux2to1 hour
	
	hour U2 (.signal_clk(i3),.HEX6(HEX6),.HEX7(HEX7),.reset(~SW[13]));
	
	
endmodule

//Done, user khong the config sai gia tri duoc vi khi dem len thi bo dem hoat dong theo dung cach cua no khong the lech duoc








