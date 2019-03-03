`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/04 15:24:05
// Design Name: 
// Module Name: CPU0
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


module CPU0(
    
    );
    wire Intcause,RegDst,Jump,RegWr,Branch,MemtoReg,ALUOP0,ALUOP1,MemWr,MemRd,ALUSrc,CPUInt,OF,ZF,M1_C;
    wire[31:0] inst,PC1,PC2,addr1,addr2,M1,R1,R2,M3,M4,A1,R3,M5,PCn,PC;
    wire[4:0] M2;
    wire[2:0] ALUCtrl;
    wire[27:0] temp;
    reg clk = 0;
    always#20 clk = ~clk;
    pc pc1(clk,1'b1,PCn,PC);
    in_reg in_reg1(PC,inst);
    add_32 add1(32'd4,PC,PC1);
    ins_decoder decoder1(inst[31:26],OF,RegDst,ALUSrc,MemtoReg,RegWr,MemWr,MemRd,Branch,Jump,ALUOP1,ALUOP0,Intcause,CPUInt);
    shl28 shl1(inst[25:0],temp);
    sigext32 sig1(inst[15:0],addr1);
    shl32 shl2(addr1,addr2);
    add_32 add2(PC1,addr2,PC2);
    and and1(M1_C,Branch,ZF);
    MUX2_32 mux2_1(M1_C,PC1,PC2,M1);
    MUX4 mux4_1(Jump,CPUInt,M1,32'b10000000000000000000000110000000,{PC1[31:28],temp[27:0]},,PCn);
    MUX2_32 mux2_2(RegDst,inst[20:16],inst[15:11],M2);
    RF RF1(clk,RegWr,inst[25:21],inst[20:16],M2,M3,R1,R2);
    MUX2_32 mux2_4(ALUSrc,R2,addr1,M4);
    ALUCU ALUCU1(ALUOP1,ALUOP0,inst[5:0],ALUCtrl);
    ALU32 ALU32_1(ALUCtrl,R1,M4,A1,ZF,OF);
    memory mem(MemRd,MemWr,A1,R2,R3);
    MUX2_32 mux2_3(MemtoReg,A1,R3,M3);
    cause EPC(clk,CPUInt,PC,);
    cause Cause(clk,CPUInt,M5,);
    MUX2_32 mux2_5(IntCause,32'h00000028,32'h00000030,);
endmodule
