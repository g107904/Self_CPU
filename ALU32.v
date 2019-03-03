`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 22:02:33
// Design Name: 
// Module Name: ALU32
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


module ALU32(
    input[2:0] ALUCtrl,
    input[31:0] A,
    input[31:0] B,
    output[31:0] C,
    output zf,
    output of
    );
    reg[31:0] C;
    reg of;
    reg zf;
    always@(*)
    begin
        of = 0;zf = 0;
        case(ALUCtrl)
        3'b000:C = A & B;
        3'b001:C = A | B;
        3'b011:C = (A < B) ? 1 : 0;
        3'b100:
        begin
            C = A + B;
            of = (A[31] & B[31] & (~C[31])) | ((~A[31])&(~B[31])&C[31]);
        end
        3'b101:C = A + B;
        3'b110:
        begin
            C = A - B;
            if(C == 0)
                zf = 1;
            of = (A[31] & (~B[31]) & (~C[31])) | ((~A[31])&B[31]&C[31]);
        end
        default:;
        endcase
    end
endmodule
