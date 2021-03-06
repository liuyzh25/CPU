`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/17 20:57:06
// Design Name: 
// Module Name: PC
// Project Name: 
// Target Devices: Basys 3
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


module PC(
    input  logic        clk,
    input  logic [31:0] nextPC,
    input  logic        PCWre,
    input  logic        reset,
    output logic [31:0] curPC
    );

    always_ff @ (negedge clk, negedge reset)
    begin
        if(!reset)
            curPC <= 32'b0;
        else if(PCWre)
            curPC <= nextPC;
        else
            curPC <= curPC;
    end
    
endmodule
