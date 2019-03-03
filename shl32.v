`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:25:54
// Design Name: 
// Module Name: shl32
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


module shl32(
    input[31:0] indata,
    output[31:0] outdata
    );
    assign outdata = {indata[29:0],1'b0,1'b0};
endmodule
