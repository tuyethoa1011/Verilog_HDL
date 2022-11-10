//FSM
module FSM(half_sec,reset,light,c_datain,s_datain,ctrl_load,ctrl_enable,state);
	
	localparam 	reset_state = 4'b0000,
					s1 = 4'b0001,
					s2 = 4'b0010,
					s3 = 4'b0011,
					s4 = 4'b0100,
					s5 = 4'b0101,
					s6 = 4'b0110,
					s7 = 4'b0111,
					s8 = 4'b1000,
					s9 = 4'b1001,
					s10 = 4'b1010,
					s11 = 4'b1011;
	
	input half_sec; //clk 0.5s
	output reg light; //morse_code output led

	output reg [3:0] state;

	input wire [3:0] c_datain; //q_count
	input wire s_datain;
	input wire reset;
	
	output reg ctrl_load;
	output reg ctrl_enable;
	//clk noi vo bo dem va dich dua vo clk 0.5s 
	//Using Single Always For Sequential, Combo And Output Logic 
	//Trong co ve kha la kieu gom do mot cuc het :)))
	
	always@(posedge half_sec or posedge reset)
	begin
		if(reset) state <= reset_state;
		else
		begin
			case(state)
				reset_state: begin
					ctrl_enable <= 1'b1;
					ctrl_load <= 1'b0;
					light <= 0;
					state <= s1;
				end
				s1: begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else  
					begin
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s2;
					end
				end
				s2:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s3;
					end
				end
				s3:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load = 1'b1;
							state <= reset_state;
						end
					else begin 
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s4;
					end
				end
				s4:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s5;
					end
				end
				s5:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s6;
					end
				end
				s6:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 

						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s7;
					end
				end
				s7:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else 
						begin 
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s8;
					end
				end
				s8:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 

						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s9;
					end
				end
				s9:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 

						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s10;
					end
				end
				s10:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b1;
							state <= reset_state;
						end
					else begin 
						ctrl_load <= 1'b0;
						ctrl_enable <= 1'b0;
						light <= s_datain;
						state <= s11;
					end
				end
				s11:  begin
					if(c_datain == 1'b0) 
						begin
							ctrl_load <= 1'b0;
							ctrl_enable <= 1'b0;
							state <= reset_state;
						end
				end
			default: state <= reset_state;
			endcase
		end
	end
	
	

endmodule

