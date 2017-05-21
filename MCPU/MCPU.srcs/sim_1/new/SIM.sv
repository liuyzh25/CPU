`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/19 21:09:39
// Design Name: 
// Module Name: SIM
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


module SIM(
    );

    logic clk;
    logic reset;

    MCPU myCPU(
        .clk(clk),
        .reset(reset)
    );
    
    always #30 clk = ~clk;

    initial 
    begin
        clk = 1;
        reset = 1;
        #10
        reset = 0;
        #10

        reset = 1;
    end

endmodule
