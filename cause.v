`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/04 15:08:53
// Design Name: 
// Module Name: cause
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


module cause(
    input clk,
    input W,
    input[31:0] D,
    output[31:0] Q
    );
    reg[31:0] Q;
    initial
    begin
        assign Q = 0;
    end
    always@(posedge clk)
    begin
        if(W)
            Q  = D;
    end
endmodule
