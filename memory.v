`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:06:00
// Design Name: 
// Module Name: memory
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


module memory(
    input R,
    input W,
    input[31:0] Addr,
    input[31:0] W_data,
    output[31:0] R_data
    );
    reg[31:0] R_data;
    reg[31:0] data[1023:0];
    integer i = 0;
    initial 
    begin
        for(i = 0;i < 1024;i = i + 1)
            data[i] = i;
    end
    always@(*)
    begin
        if(W)
            data[Addr] = W_data;
        if(R)
            R_data = data[Addr];
    end
endmodule
