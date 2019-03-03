`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 16:48:41
// Design Name: 
// Module Name: add_32
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


module add_32(
    input[31:0] indata1,
    input[31:0] indata2,
    output[31:0] outdata
    );
    wire[31:0] g,p;
    reg[31:0] outdata;
    wire[32:0] C;
    wire[7:0] G,P;
    wire temp1,temp2,tmp1,tmp2;
    integer i = 0;
    assign C[0] = 0;
    and myand1(g[0],indata1[0],indata2[0]);
    or myor1(p[0],indata1[0],indata2[0]);
    and myand2(g[1],indata1[1],indata2[1]);
    or myor2(p[1],indata1[1],indata2[1]);
    and myand3(g[2],indata1[2],indata2[2]);
    or myor3(p[2],indata1[2],indata2[2]);
    and myand4(g[3],indata1[3],indata2[3]);
    or myor4(p[3],indata1[3],indata2[3]);
    and myand5(g[4],indata1[4],indata2[4]);
    or myor5(p[4],indata1[4],indata2[4]);
    and myand6(g[5],indata1[5],indata2[5]);
    or myor6(p[5],indata1[5],indata2[5]);
    and myand7(g[6],indata1[6],indata2[6]);
    or myor7(p[6],indata1[6],indata2[6]);
    and myand8(g[7],indata1[7],indata2[7]);
    or myor8(p[7],indata1[7],indata2[7]);
    and myand9(g[8],indata1[8],indata2[8]);
    or myor9(p[8],indata1[8],indata2[8]);
    and myand10(g[9],indata1[9],indata2[9]);
    or myor10(p[9],indata1[9],indata2[9]);
    and myand11(g[10],indata1[10],indata2[10]);
    or myor11(p[10],indata1[10],indata2[10]);
    and myand12(g[11],indata1[11],indata2[11]);
    or myor12(p[11],indata1[11],indata2[11]);
    and myand13(g[12],indata1[12],indata2[12]);
    or myor13(p[12],indata1[12],indata2[12]);
    and myand14(g[13],indata1[13],indata2[13]);
    or myor14(p[13],indata1[13],indata2[13]);
    and myand15(g[14],indata1[14],indata2[14]);
    or myor15(p[14],indata1[14],indata2[14]);
    and myand16(g[15],indata1[15],indata2[15]);
    or myor16(p[15],indata1[15],indata2[15]);
    and myand17(g[16],indata1[16],indata2[16]);
    or myor17(p[16],indata1[16],indata2[16]);
    and myand18(g[17],indata1[17],indata2[17]);
    or myor18(p[17],indata1[17],indata2[17]);
    and myand19(g[18],indata1[18],indata2[18]);
    or myor19(p[18],indata1[18],indata2[18]);
    and myand20(g[19],indata1[19],indata2[19]);
    or myor20(p[19],indata1[19],indata2[19]);
    and myand21(g[20],indata1[20],indata2[20]);
    or myor21(p[20],indata1[20],indata2[20]);
    and myand22(g[21],indata1[21],indata2[21]);
    or myor22(p[21],indata1[21],indata2[21]);
    and myand23(g[22],indata1[22],indata2[22]);
    or myor23(p[22],indata1[22],indata2[22]);
    and myand24(g[23],indata1[23],indata2[23]);
    or myor24(p[23],indata1[23],indata2[23]);
    and myand25(g[24],indata1[24],indata2[24]);
    or myor25(p[24],indata1[24],indata2[24]);
    and myand26(g[25],indata1[25],indata2[25]);
    or myor26(p[25],indata1[25],indata2[25]);
    and myand27(g[26],indata1[26],indata2[26]);
    or myor27(p[26],indata1[26],indata2[26]);
    and myand28(g[27],indata1[27],indata2[27]);
    or myor28(p[27],indata1[27],indata2[27]);
    and myand29(g[28],indata1[28],indata2[28]);
    or myor29(p[28],indata1[28],indata2[28]);
    and myand30(g[29],indata1[29],indata2[29]);
    or myor30(p[29],indata1[29],indata2[29]);
    and myand31(g[30],indata1[30],indata2[30]);
    or myor31(p[30],indata1[30],indata2[30]);
    and myand32(g[31],indata1[31],indata2[31]);
    or myor32(p[31],indata1[31],indata2[31]);
    BCLA4 b1(g[3:0],p[3:0],C[0],P[0],G[0],C[4:1]);
    BCLA4 b2(g[7:4],p[7:4],C[4],P[1],G[1],C[8:5]);
    BCLA4 b3(g[11:8],p[11:8],C[8],P[2],G[2],C[12:9]);
    BCLA4 b4(g[15:12],p[15:12],C[12],P[3],G[3],C[16:13]);
    BCLA4 b5(g[19:16],p[19:16],C[16],P[4],G[4],C[20:17]);
    BCLA4 b6(g[23:20],p[23:20],C[20],P[5],G[5],C[24:21]);
    BCLA4 b7(g[27:24],p[27:24],C[24],P[6],G[6],C[28:25]);
    BCLA4 b8(g[31:28],p[31:28],C[28],P[7],G[7],C[32:29]);
    CLA4 B1(G[3:0],P[3:0],temp1,tmp1,C[0],C[16],C[12],C[8],C[4]);
    CLA4 B2(G[7:4],P[7:4],temp2,tmp2,C[16],C[32],C[28],C[24],C[20]);
    always@(*)
    begin
        i = 0;
        for(i = 0;i < 32;i = i + 1)
            begin
                //g[i] = indata1[i] & indata2[i];
                //p[i] = indata1[i] ^ indata2[i];
                outdata[i] = indata1[i] ^ indata2[i] ^ C[i];
            end
    end
endmodule
