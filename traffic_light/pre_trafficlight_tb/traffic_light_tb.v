`timescale 100ns/1s

module traffic_light_tb();
    reg clk;
    reg rst;
    wire [5:0] lights;
    
    traffic_light Inst1 (.reset(rst),.lights(lights),
    .clk(clk));
    
    initial 
    begin
      clk = 1'b0;
      rst = 1'b1;    
      
    end
    
    always begin  
      #0.5 clk = ~clk;
    end
    
    initial
    begin
      #1 rst = ~rst;   
    end
    
     
     
endmodule