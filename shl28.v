`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:21:35
// Design Name: 
// Module Name: shl28
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


module shl28(
    input[25:0] indata,
    output[27:0] outdata
    );
    assign outdata = {indata[25:0],1'b0,1'b0};
endmodule
