`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 16:29:47
// Design Name: 
// Module Name: in_reg
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


module in_reg(
    input[31:0] addr,
    output[31:0] inst
    );
    reg[7:0] data[1023:0];
    initial
    begin
        data[0] = 8'h00;//add
        data[1] = 8'h01;
        data[2] = 8'h10;
        data[3] = 8'd32;
        data[4] = 8'h00;//addu
        data[5] = 8'h01;
        data[6] = 8'h10;
        data[7] = 8'd33;
        data[8] = 8'h00;//sub
        data[9] = 8'h01;
        data[10] = 8'h10;
        data[11] = 8'd34;
        data[12] = 8'h00;//and
        data[13] = 8'h01;
        data[14] = 8'h10;
        data[15] = 8'd36;
        data[16] = 8'h00;//or
        data[17] = 8'h01;
        data[18] = 8'h10;
        data[19] = 8'd37;
        data[20] = 8'h00;//slt
        data[21] = 8'h01;
        data[22] = 8'h10;
        data[23] = 8'd42;
        data[24] = 8'b10001100;//lw
        data[25] = 8'h01;
        data[26] = 8'h00;
        data[27] = 8'h02;
        data[28] = 8'b10101100;//sw
        data[29] = 8'h01;
        data[30] = 8'h00;
        data[31] = 8'h02;
        data[32] = 8'b00010000;//beq
        data[33] = 8'h01;
        data[34] = 8'h00;
        data[35] = 8'h04;
        data[36] = 8'b00001000;//jump
        data[37] = 8'h00;
        data[38] = 8'h00;
        data[39] = 8'h0b;  
        data[40] = 8'h00;//add
        data[41] = 8'h01;
        data[42] = 8'h10;
        data[43] = 8'd32;
        data[44] = 8'h00;//addu
        data[45] = 8'h01;
        data[46] = 8'h10;
        data[47] = 8'd33;   
        data[48] = 8'd35;//INT
        data[49] = 8'd0;
        data[50] = 8'd0;
        data[50] = 8'd0;   
    end
    assign inst = {data[addr],data[addr+1],data[addr+2],data[addr+3]};
endmodule
