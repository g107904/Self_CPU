`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:42:46
// Design Name: 
// Module Name: ins_decoder
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


module ins_decoder(
    input[5:0] OP,
    input OF,
    output RegDst,
    output ALUScr,
    output MemtoReg,
    output RegWr,
    output MemWr,
    output MemRd,
    output Branch,
    output Jump,
    output ALUOP1,
    output ALUOP0,
    output Intcause,
    output CPUInt
    );
    assign RegDst = (~OP[0]) & (~OP[1]) & (~OP[2]) & (~OP[3]) & (~OP[4]) & (~OP[5]);
    assign ALUScr = (OP[0] & OP[1] & (~OP[2]) & (~OP[3]) & (~OP[4]) & OP[5]) | (OP[0] & OP[1] & (~OP[2])&OP[3]&(~OP[4])&OP[5]);
    assign MemtoReg = OP[0] & OP[1] & (~OP[2]) & (~OP[3]) & (~OP[4]) & OP[5];
    assign RegWr = ((~OP[0]) & (~OP[1]) & (~OP[2]) & (~OP[3]) & (~OP[4]) & (~OP[5])) | (OP[0] & OP[1] & (~OP[2])&(~OP[3])&(~OP[4])&OP[5]);
    assign MemWr = OP[0] & OP[1] & (~OP[2]) & OP[3] & (~OP[4]) & OP[5];
    assign MemRd = OP[0] & OP[1] & (~OP[2]) & (~OP[3]) & (~OP[4]) & OP[5];
    assign Branch = (~OP[0]) & (~OP[1]) & OP[2] & (~OP[3]) & (~OP[4]) & (~OP[5]);
    assign Jump = (~OP[0]) & OP[1] & (~OP[2]) & (~OP[3]) & (~OP[4]) & (~OP[5]);
    assign  ALUOP1 = (~OP[0]) & (~OP[1]) & (~OP[2]) & (~OP[3]) & (~OP[4]) & (~OP[5]);
    assign ALUOP0 = (~OP[0]) & (~OP[1]) & OP[2] & (~OP[3]) & (~OP[4]) & (~OP[5]);
    assign Intcause = OF;
    assign CPUInt = OF || (OP != 6'b000000 && OP != 6'b100011 && OP != 6'b101011 && OP != 6'b000100 && OP != 6'b000010);
endmodule
