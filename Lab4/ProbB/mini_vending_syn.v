/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 27 11:02:22 2021
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
  wire   N7, N8, N9, N10, N11, N12, n3, n4, n7, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29,
         n30, n32, n33, n34, n35;
  wire   [1:0] phase;

  mini_vending_DW01_sub_0 sub_33 ( .A(change), .B(beverage), .CI(1'b0), .DIFF(
        {N12, N11, N10, N9, N8, N7}) );
  DFFRX2 \money_temp_reg[3]  ( .D(n25), .CK(clk), .RN(n34), .Q(change[3]), 
        .QN(n18) );
  DFFRX2 \money_temp_reg[4]  ( .D(n24), .CK(clk), .RN(n34), .Q(change[4]), 
        .QN(n17) );
  DFFRX2 \money_temp_reg[5]  ( .D(n23), .CK(clk), .RN(n34), .Q(change[5]), 
        .QN(n16) );
  DFFRX1 \phase_reg[1]  ( .D(n29), .CK(clk), .RN(n34), .Q(phase[1]), .QN(n33)
         );
  DFFRX1 \phase_reg[0]  ( .D(n30), .CK(clk), .RN(n34), .Q(phase[0]), .QN(n32)
         );
  DFFRX2 \money_temp_reg[1]  ( .D(n27), .CK(clk), .RN(n34), .Q(change[1]), 
        .QN(n20) );
  DFFRX2 \money_temp_reg[2]  ( .D(n26), .CK(clk), .RN(n34), .Q(change[2]), 
        .QN(n19) );
  DFFRX2 \money_temp_reg[0]  ( .D(n28), .CK(clk), .RN(n34), .Q(change[0]), 
        .QN(n21) );
  NOR2X2 U27 ( .A(n3), .B(n32), .Y(n4) );
  NOR2X2 U28 ( .A(n3), .B(n7), .Y(n10) );
  CLKINVX1 U29 ( .A(n3), .Y(n35) );
  OAI22XL U30 ( .A0(n35), .A1(n32), .B0(n7), .B1(n3), .Y(n30) );
  NAND2X1 U31 ( .A(n32), .B(n33), .Y(n7) );
  OAI22X2 U32 ( .A0(n32), .A1(n33), .B0(en), .B1(n7), .Y(n3) );
  OAI21XL U33 ( .A0(n16), .A1(n35), .B0(n9), .Y(n23) );
  AOI22X1 U34 ( .A0(money[5]), .A1(n10), .B0(N12), .B1(n4), .Y(n9) );
  OAI21XL U35 ( .A0(n17), .A1(n35), .B0(n11), .Y(n24) );
  AOI22X1 U36 ( .A0(money[4]), .A1(n10), .B0(N11), .B1(n4), .Y(n11) );
  OAI21XL U37 ( .A0(n18), .A1(n35), .B0(n12), .Y(n25) );
  AOI22X1 U38 ( .A0(money[3]), .A1(n10), .B0(N10), .B1(n4), .Y(n12) );
  OAI21XL U39 ( .A0(n19), .A1(n35), .B0(n13), .Y(n26) );
  AOI22X1 U40 ( .A0(money[2]), .A1(n10), .B0(N9), .B1(n4), .Y(n13) );
  OAI21XL U41 ( .A0(n20), .A1(n35), .B0(n14), .Y(n27) );
  AOI22X1 U42 ( .A0(money[1]), .A1(n10), .B0(N8), .B1(n4), .Y(n14) );
  OAI21XL U43 ( .A0(n21), .A1(n35), .B0(n15), .Y(n28) );
  AOI22X1 U44 ( .A0(money[0]), .A1(n10), .B0(N7), .B1(n4), .Y(n15) );
  AO21X1 U45 ( .A0(n3), .A1(phase[1]), .B0(n4), .Y(n29) );
  NOR2X2 U46 ( .A(phase[0]), .B(n33), .Y(finish) );
  INVX3 U47 ( .A(rst), .Y(n34) );
endmodule

