`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 20:27:54
// Design Name: 
// Module Name: BCLA4
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


module BCLA4(
    input[3:0] g,
    input[3:0] p,
    input c,
    output P,
    output G,
    output[3:0] C
    );
    assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
    assign P = p[3] & p[2] & p[1] & p[0];
    assign C[0] = g[0] | (p[0] & c);
    assign C[1] = g[1] | (p[1] & g[0]) |  (p[1] & p[0] & c);
    assign C[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c);
    assign C[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] &c);
endmodule
