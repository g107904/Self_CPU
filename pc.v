`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 16:11:08
// Design Name: 
// Module Name: pc
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


module pc(
    input clk,
    input PCWr,
    input[31:0] D,
    output reg[31:0] Q
    );
    reg tmp = 0;
    initial
    begin
        Q = 0;
    end
    always@(posedge clk)
    begin
        if(PCWr)
           Q = D;
    end
endmodule
