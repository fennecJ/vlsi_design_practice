/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Mar 26 22:26:01 2021
/////////////////////////////////////////////////////////////


module mini_vending_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [6:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n3), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n6), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_5 ( .A(A[5]), .B(n2), .C(carry[5]), .Y(DIFF[5]) );
  CLKINVX1 U1 ( .A(B[5]), .Y(n2) );
  XNOR2X1 U2 ( .A(n7), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n6) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n4) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n3) );
endmodule


module mini_vending ( clk, rst, en, money, beverage, change, finish );
  input [5:0] money;
  input [5:0] beverage;
  output [5:0] change;
  input clk, rst, en;
  output finish;
  wire   N9, N10, N11, N12, N13, N14, n3, n4, n5, n8, n9, n10, n11, n12, n13,
         n15, n16, n17, n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29,
         n31, n32, n33, n34;
  wire   [1:0] phase;
  wire   [5:0] money_temp;

  NOR2X6 U6 ( .A(phase[0]), .B(n32), .Y(finish) );
  mini_vending_DW01_sub_0 sub_32 ( .A(money_temp), .B(beverage), .CI(1'b0), 
        .DIFF({N14, N13, N12, N11, N10, N9}) );
  DFFRX1 \money_temp_reg[2]  ( .D(n25), .CK(clk), .RN(n33), .Q(money_temp[2]), 
        .QN(n18) );
  DFFRX1 \money_temp_reg[3]  ( .D(n24), .CK(clk), .RN(n33), .Q(money_temp[3]), 
        .QN(n17) );
  DFFRX1 \money_temp_reg[4]  ( .D(n23), .CK(clk), .RN(n33), .Q(money_temp[4]), 
        .QN(n16) );
  DFFRX1 \money_temp_reg[5]  ( .D(n22), .CK(clk), .RN(n33), .Q(money_temp[5]), 
        .QN(n15) );
  DFFRX1 \money_temp_reg[1]  ( .D(n26), .CK(clk), .RN(n33), .Q(money_temp[1]), 
        .QN(n19) );
  DFFRX1 \money_temp_reg[0]  ( .D(n27), .CK(clk), .RN(n33), .Q(money_temp[0]), 
        .QN(n20) );
  DFFRX1 \phase_reg[1]  ( .D(n28), .CK(clk), .RN(n33), .Q(phase[1]), .QN(n32)
         );
  TLATX2 \change_reg[5]  ( .G(finish), .D(money_temp[5]), .Q(change[5]) );
  TLATX2 \change_reg[4]  ( .G(finish), .D(money_temp[4]), .Q(change[4]) );
  TLATX2 \change_reg[3]  ( .G(finish), .D(money_temp[3]), .Q(change[3]) );
  TLATX2 \change_reg[2]  ( .G(finish), .D(money_temp[2]), .Q(change[2]) );
  TLATX2 \change_reg[1]  ( .G(finish), .D(money_temp[1]), .Q(change[1]) );
  TLATX2 \change_reg[0]  ( .G(finish), .D(money_temp[0]), .Q(change[0]) );
  DFFRX1 \phase_reg[0]  ( .D(n29), .CK(clk), .RN(n33), .Q(phase[0]), .QN(n31)
         );
  NOR2X2 U26 ( .A(n3), .B(n31), .Y(n4) );
  CLKINVX1 U27 ( .A(n3), .Y(n34) );
  OAI32X4 U28 ( .A0(en), .A1(phase[1]), .A2(phase[0]), .B0(n31), .B1(n32), .Y(
        n3) );
  NOR3X2 U29 ( .A(phase[0]), .B(phase[1]), .C(n3), .Y(n5) );
  OAI21XL U30 ( .A0(n15), .A1(n34), .B0(n8), .Y(n22) );
  AOI22X1 U31 ( .A0(N14), .A1(n4), .B0(money[5]), .B1(n5), .Y(n8) );
  OAI21XL U32 ( .A0(n16), .A1(n34), .B0(n9), .Y(n23) );
  AOI22X1 U33 ( .A0(N13), .A1(n4), .B0(money[4]), .B1(n5), .Y(n9) );
  OAI21XL U34 ( .A0(n17), .A1(n34), .B0(n10), .Y(n24) );
  AOI22X1 U35 ( .A0(N12), .A1(n4), .B0(money[3]), .B1(n5), .Y(n10) );
  OAI21XL U36 ( .A0(n18), .A1(n34), .B0(n11), .Y(n25) );
  AOI22X1 U37 ( .A0(N11), .A1(n4), .B0(money[2]), .B1(n5), .Y(n11) );
  OAI21XL U38 ( .A0(n19), .A1(n34), .B0(n12), .Y(n26) );
  AOI22X1 U39 ( .A0(N10), .A1(n4), .B0(money[1]), .B1(n5), .Y(n12) );
  OAI21XL U40 ( .A0(n20), .A1(n34), .B0(n13), .Y(n27) );
  AOI22X1 U41 ( .A0(N9), .A1(n4), .B0(money[0]), .B1(n5), .Y(n13) );
  AO21X1 U42 ( .A0(n3), .A1(phase[1]), .B0(n4), .Y(n28) );
  AO21X1 U43 ( .A0(n3), .A1(phase[0]), .B0(n5), .Y(n29) );
  INVX3 U44 ( .A(rst), .Y(n33) );
endmodule

