`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:27:00
// Design Name: 
// Module Name: sigext32
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


module sigext32(
    input[15:0] indata,
    output[31:0] outdata
    );
    assign outdata = {16'd0,indata[15:0]};
endmodule
