//FSM
module FSM(start,half_sec,reset,light,c_datain,s_datain,ctrl_enable,state,lastbit);
	
	localparam 	s0 = 4'b0000,
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
					s11 = 4'b1011,
					s12 = 4'b1100;
	
	input half_sec; //clk 0.5s
	input start;
	output reg light; //morse_code output led

	output reg [3:0] state;
	
	reg [3:0] next_state;

	input wire [3:0] c_datain; //q_count
	input wire [12:0] s_datain;
	input wire lastbit;
	input wire reset;
	
	output reg ctrl_enable;
	
	
	//state transition
	always@(state or s_datain or c_datain)
	begin
		case(state)
			s0: //trang thai nap lenh
			begin
				if(start == 1'b1)
				begin
					next_state = s1;
				end
				else next_state = s0;
			end
			s1:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s2;
			end
			s2:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s3;
			end
			s3:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s4;
			end
			s4:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s5;
			end
			s5:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s6;
			end
			s6:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s7;
			end
			s7:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s8;
			end
			s8:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s9;
			end
			s9:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s10;
			end
			s10:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
				else next_state = s11;
			end
			s11:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s12;
					end
				end
				else next_state = s2;
			end
			s12:
			begin
				if(s_datain==0)
				begin
					if(c_datain == 0)
					begin
						next_state = s0;
					end
				end
			end
			default: next_state = s0;
		endcase
	end
	
	//-- Seq logic (Control FSM logic) ---
	always@(posedge half_sec or posedge reset)
	begin
		if(reset)
		begin
			state <= s0;
		end
		else begin
			state <= next_state;
		end
	end
	
	//Control FSM Output Logic
	
	always@(state)
	begin
		//initial value
		light = 1'b0;
		case(state)
		s0:
		begin
			ctrl_enable = 1'b1;
		end
		
		s1:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s2:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s3:
		begin
			ctrl_enable = 1'b0;	
			light = lastbit;
		end
		
		s4:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s5:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s6:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s7:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;	
		end
		
		s8:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s9:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s10:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s11:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		s12:
		begin
			ctrl_enable = 1'b0;
			light = lastbit;
		end
		
		endcase
		
	end
	
endmodule

