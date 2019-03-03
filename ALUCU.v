`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 22:25:42
// Design Name: 
// Module Name: ALUCU
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


module ALUCU(
    input ALUOP1,
    input ALUOP0,
    input[5:0] fun,
    output[2:0] ALUCtrl
    );
    reg[2:0] ALUCtrl;
    always@(*)
    begin
        if(ALUOP1 == 0 && ALUOP0 == 0)
            ALUCtrl = 3'b100;
        else if(ALUOP0 == 1)
            ALUCtrl = 3'b110;
        else
        begin
            case(fun)
            6'b100000:ALUCtrl = 3'b100;
            6'b100001:ALUCtrl = 3'b101;
            6'b100010:ALUCtrl = 3'b110;
            6'b100100:ALUCtrl = 3'b000;
            6'b100101:ALUCtrl = 3'b001;
            6'b101010:ALUCtrl = 3'b011;
            default:;
            endcase
        end
    end
endmodule
