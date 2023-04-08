`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2023 00:01:58
// Design Name: 
// Module Name: counter_fsm_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_fsm_tb;

    // Inputs
    reg clk;
    reg rst;
    reg en;

    // Outputs
    wire [3:0] Count;

    // Instantiate the Unit Under Test (UUT)
    counter_fsm uut (
        .rst(rst),
        .clk(clk),     
        .en(en), 
        .count(count)
    );

//Generate clock with 10 ns clk period.
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        // Apply Inputs
        rst = 1;
        #10;
        rst = 0;
        #300;
        en = 1;
       #300;
        en = 0;
        
    end
      
endmodule

