`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 20:52:35
// Design Name: 
// Module Name: RF
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


module RF(
    input clk,
    input W,
    input[4:0] R_reg1,
    input[4:0] R_reg2,
    input[4:0] W_reg,
    input[31:0] W_data,
    output[31:0] R_data1,
    output[31:0] R_data2
    );
    reg[31:0] data[31:0];
    integer i = 0;
    initial
    begin
        for(i = 0;i < 32;i = i + 1)
            data[i] = i;
    end
    always@(posedge clk)
    begin
        if(W)
            data[W_reg] = W_data;
    end
    assign R_data1 = data[R_reg1];
    assign R_data2 = data[R_reg2];
endmodule
