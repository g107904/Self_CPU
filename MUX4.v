`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:15:18
// Design Name: 
// Module Name: MUX4
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


module MUX4(
    input s1,
    input s2,
    input[31:0] in0,
    input[31:0] in1,
    input[31:0] in2,
    input[31:0] in3,
    output[31:0] outdata
    );
    reg[1:0] tmp;
    reg[31:0] outdata;
    always@(*)
    begin
        tmp[0] = s2;
        tmp[1] = s1;
        case(tmp)
        2'b00:outdata = in0;
        2'b01:outdata = in1;
        2'b10:outdata = in2;
        2'b11:outdata = in3;
        default:;
        endcase
    end
endmodule
