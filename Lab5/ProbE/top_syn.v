/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Thu Apr  1 01:19:17 2021
/////////////////////////////////////////////////////////////


module grayscale_DW01_add_0 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [11:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR2X1 U1 ( .A(B[11]), .B(carry[11]), .Y(SUM[11]) );
  AND2X1 U2 ( .A(A[1]), .B(B[1]), .Y(n1) );
  OAI2BB1X1 U3 ( .A0N(n1), .A1N(A[2]), .B0(n2), .Y(carry[3]) );
  OAI21XL U4 ( .A0(A[2]), .A1(n1), .B0(B[2]), .Y(n2) );
endmodule


module grayscale_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module grayscale ( d, q );
  input [23:0] d;
  output [7:0] q;
  wire   N36, N37, N38, N39, N40, N41, N42, N43, N44, N46, N47, N48, N49, N50,
         N51, N52, N53, N9, N8, N7, N6, N5, N4, N34, N33, N32, N31, N30, N29,
         N28, N27, N26, N25, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14,
         N13, N12, \add_2_root_add_0_root_add_16_4/carry[9] ,
         \add_2_root_add_0_root_add_16_4/carry[8] ,
         \add_2_root_add_0_root_add_16_4/carry[7] ,
         \add_2_root_add_0_root_add_16_4/carry[6] ,
         \add_2_root_add_0_root_add_16_4/carry[5] ,
         \add_2_root_add_0_root_add_16_4/carry[4] ,
         \add_2_root_add_0_root_add_16_4/carry[3] ,
         \add_1_root_add_0_root_add_16_4/carry[10] ,
         \add_1_root_add_0_root_add_16_4/carry[9] ,
         \add_1_root_add_0_root_add_16_4/carry[8] ,
         \add_1_root_add_0_root_add_16_4/carry[7] ,
         \add_1_root_add_0_root_add_16_4/carry[6] ,
         \add_1_root_add_0_root_add_16_4/carry[5] ,
         \add_1_root_add_0_root_add_16_4/carry[4] ,
         \add_3_root_add_0_root_add_16_4/carry[7] ,
         \add_3_root_add_0_root_add_16_4/carry[6] ,
         \add_3_root_add_0_root_add_16_4/carry[5] ,
         \add_3_root_add_0_root_add_16_4/carry[4] ,
         \add_3_root_add_0_root_add_16_4/carry[3] ,
         \add_3_root_add_0_root_add_16_4/carry[2] ,
         \add_3_root_add_0_root_add_16_4/carry[1] , n1, n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign N25 = d[16];

  grayscale_DW01_add_0 add_0_root_add_0_root_add_16_4 ( .A({1'b0, N34, N33, 
        N32, N31, N30, N29, N28, N27, N26, N25, 1'b0}), .B({N23, N22, N21, N20, 
        N19, N18, N17, N16, N15, N14, N13, N12}), .CI(1'b0), .SUM({N44, N43, 
        N42, N41, N40, N39, N38, N37, N36, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2}) );
  grayscale_DW01_inc_0 add_17 ( .A({N44, N43, N42, N41, N40, N39, N38, N37}), 
        .SUM({N53, N52, N51, N50, N49, N48, N47, N46}) );
  AO22X2 U3 ( .A0(N50), .A1(n1), .B0(N41), .B1(n2), .Y(q[4]) );
  AO22X2 U4 ( .A0(N46), .A1(n1), .B0(N37), .B1(n2), .Y(q[0]) );
  AO22X2 U5 ( .A0(N47), .A1(n1), .B0(N38), .B1(n2), .Y(q[1]) );
  AO22X2 U6 ( .A0(N48), .A1(n1), .B0(N39), .B1(n2), .Y(q[2]) );
  AO22X2 U7 ( .A0(N49), .A1(n1), .B0(N40), .B1(n2), .Y(q[3]) );
  INVX3 U8 ( .A(n1), .Y(n2) );
  AO22X2 U9 ( .A0(N51), .A1(n1), .B0(N42), .B1(n2), .Y(q[5]) );
  AO22X2 U10 ( .A0(N52), .A1(n1), .B0(N43), .B1(n2), .Y(q[6]) );
  CLKBUFX3 U11 ( .A(N36), .Y(n1) );
  AO22X2 U12 ( .A0(N53), .A1(n1), .B0(N44), .B1(n2), .Y(q[7]) );
  ADDFXL U13 ( .A(d[9]), .B(d[1]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[1] ), .CO(
        \add_3_root_add_0_root_add_16_4/carry[2] ), .S(N13) );
  ADDFXL U14 ( .A(d[15]), .B(d[7]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[7] ), .CO(N9), .S(N8) );
  ADDFXL U15 ( .A(d[13]), .B(N9), .CI(
        \add_1_root_add_0_root_add_16_4/carry[8] ), .CO(
        \add_1_root_add_0_root_add_16_4/carry[9] ), .S(N20) );
  ADDFXL U16 ( .A(d[12]), .B(N8), .CI(
        \add_1_root_add_0_root_add_16_4/carry[7] ), .CO(
        \add_1_root_add_0_root_add_16_4/carry[8] ), .S(N19) );
  ADDFXL U17 ( .A(d[10]), .B(d[2]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[2] ), .CO(
        \add_3_root_add_0_root_add_16_4/carry[3] ), .S(N14) );
  ADDFXL U18 ( .A(d[11]), .B(d[3]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[3] ), .CO(
        \add_3_root_add_0_root_add_16_4/carry[4] ), .S(N4) );
  ADDFXL U19 ( .A(d[12]), .B(d[4]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[4] ), .CO(
        \add_3_root_add_0_root_add_16_4/carry[5] ), .S(N5) );
  ADDFXL U20 ( .A(d[13]), .B(d[5]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[5] ), .CO(
        \add_3_root_add_0_root_add_16_4/carry[6] ), .S(N6) );
  ADDFXL U21 ( .A(d[14]), .B(d[6]), .CI(
        \add_3_root_add_0_root_add_16_4/carry[6] ), .CO(
        \add_3_root_add_0_root_add_16_4/carry[7] ), .S(N7) );
  ADDFXL U22 ( .A(d[9]), .B(N5), .CI(\add_1_root_add_0_root_add_16_4/carry[4] ), .CO(\add_1_root_add_0_root_add_16_4/carry[5] ), .S(N16) );
  ADDFXL U23 ( .A(d[10]), .B(N6), .CI(
        \add_1_root_add_0_root_add_16_4/carry[5] ), .CO(
        \add_1_root_add_0_root_add_16_4/carry[6] ), .S(N17) );
  ADDFXL U24 ( .A(d[11]), .B(N7), .CI(
        \add_1_root_add_0_root_add_16_4/carry[6] ), .CO(
        \add_1_root_add_0_root_add_16_4/carry[7] ), .S(N18) );
  ADDFXL U25 ( .A(d[18]), .B(d[1]), .CI(
        \add_2_root_add_0_root_add_16_4/carry[3] ), .CO(
        \add_2_root_add_0_root_add_16_4/carry[4] ), .S(N27) );
  ADDFXL U26 ( .A(d[23]), .B(d[6]), .CI(
        \add_2_root_add_0_root_add_16_4/carry[8] ), .CO(
        \add_2_root_add_0_root_add_16_4/carry[9] ), .S(N32) );
  ADDFXL U27 ( .A(d[19]), .B(d[2]), .CI(
        \add_2_root_add_0_root_add_16_4/carry[4] ), .CO(
        \add_2_root_add_0_root_add_16_4/carry[5] ), .S(N28) );
  ADDFXL U28 ( .A(d[20]), .B(d[3]), .CI(
        \add_2_root_add_0_root_add_16_4/carry[5] ), .CO(
        \add_2_root_add_0_root_add_16_4/carry[6] ), .S(N29) );
  ADDFXL U29 ( .A(d[21]), .B(d[4]), .CI(
        \add_2_root_add_0_root_add_16_4/carry[6] ), .CO(
        \add_2_root_add_0_root_add_16_4/carry[7] ), .S(N30) );
  ADDFXL U30 ( .A(d[22]), .B(d[5]), .CI(
        \add_2_root_add_0_root_add_16_4/carry[7] ), .CO(
        \add_2_root_add_0_root_add_16_4/carry[8] ), .S(N31) );
  AND2X1 U31 ( .A(\add_1_root_add_0_root_add_16_4/carry[10] ), .B(d[15]), .Y(
        N23) );
  XOR2X1 U32 ( .A(d[15]), .B(\add_1_root_add_0_root_add_16_4/carry[10] ), .Y(
        N22) );
  AND2X1 U33 ( .A(\add_1_root_add_0_root_add_16_4/carry[9] ), .B(d[14]), .Y(
        \add_1_root_add_0_root_add_16_4/carry[10] ) );
  XOR2X1 U34 ( .A(d[14]), .B(\add_1_root_add_0_root_add_16_4/carry[9] ), .Y(
        N21) );
  AND2X1 U35 ( .A(d[8]), .B(N4), .Y(\add_1_root_add_0_root_add_16_4/carry[4] )
         );
  XOR2X1 U36 ( .A(N4), .B(d[8]), .Y(N15) );
  AND2X1 U37 ( .A(d[8]), .B(d[0]), .Y(
        \add_3_root_add_0_root_add_16_4/carry[1] ) );
  XOR2X1 U38 ( .A(d[0]), .B(d[8]), .Y(N12) );
  AND2X1 U39 ( .A(\add_2_root_add_0_root_add_16_4/carry[9] ), .B(d[7]), .Y(N34) );
  XOR2X1 U40 ( .A(d[7]), .B(\add_2_root_add_0_root_add_16_4/carry[9] ), .Y(N33) );
  AND2X1 U41 ( .A(d[17]), .B(d[0]), .Y(
        \add_2_root_add_0_root_add_16_4/carry[3] ) );
  XOR2X1 U42 ( .A(d[0]), .B(d[17]), .Y(N26) );
endmodule


module controller_DW01_dec_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  OR2X4 U1 ( .A(n4), .B(n5), .Y(n9) );
  OR2X1 U2 ( .A(n15), .B(A[6]), .Y(n4) );
  OR2X1 U3 ( .A(n25), .B(A[27]), .Y(n24) );
  OR2X1 U4 ( .A(n16), .B(A[5]), .Y(n15) );
  NOR2X1 U5 ( .A(A[30]), .B(A[28]), .Y(n1) );
  OR2X1 U6 ( .A(n9), .B(n10), .Y(n41) );
  OR2X1 U7 ( .A(n26), .B(A[26]), .Y(n25) );
  OR2X1 U8 ( .A(n40), .B(n2), .Y(n37) );
  OR2X1 U9 ( .A(A[12]), .B(n3), .Y(n2) );
  OR2X1 U10 ( .A(n40), .B(A[12]), .Y(n39) );
  AND2X2 U11 ( .A(n6), .B(n23), .Y(n8) );
  AND2X2 U12 ( .A(n8), .B(n1), .Y(n19) );
  OR2X1 U13 ( .A(A[13]), .B(A[14]), .Y(n3) );
  CLKINVX1 U14 ( .A(n24), .Y(n6) );
  CLKINVX1 U15 ( .A(A[28]), .Y(n7) );
  AND2X2 U16 ( .A(n6), .B(n7), .Y(n22) );
  OR2X1 U17 ( .A(A[8]), .B(A[7]), .Y(n5) );
  CLKINVX1 U18 ( .A(A[0]), .Y(SUM[0]) );
  OR2X1 U19 ( .A(n17), .B(A[4]), .Y(n16) );
  OR2X1 U20 ( .A(n21), .B(A[2]), .Y(n18) );
  OR2X1 U21 ( .A(n14), .B(A[7]), .Y(n13) );
  OR2X1 U22 ( .A(n27), .B(A[25]), .Y(n26) );
  OR2X1 U23 ( .A(n33), .B(A[19]), .Y(n32) );
  OR2X1 U24 ( .A(n31), .B(A[21]), .Y(n30) );
  OR2X1 U25 ( .A(n29), .B(A[23]), .Y(n28) );
  OR2X1 U26 ( .A(n35), .B(A[17]), .Y(n34) );
  OAI2BB1XL U27 ( .A0N(n16), .A1N(A[5]), .B0(n15), .Y(SUM[5]) );
  OAI2BB1XL U28 ( .A0N(n17), .A1N(A[4]), .B0(n16), .Y(SUM[4]) );
  OAI2BB1XL U29 ( .A0N(n18), .A1N(A[3]), .B0(n17), .Y(SUM[3]) );
  OAI2BB1XL U30 ( .A0N(n21), .A1N(A[2]), .B0(n18), .Y(SUM[2]) );
  OAI2BB1XL U31 ( .A0N(A[0]), .A1N(A[1]), .B0(n21), .Y(SUM[1]) );
  OAI2BB1XL U32 ( .A0N(n27), .A1N(A[25]), .B0(n26), .Y(SUM[25]) );
  OAI2BB1XL U33 ( .A0N(n28), .A1N(A[24]), .B0(n27), .Y(SUM[24]) );
  OAI2BB1XL U34 ( .A0N(n29), .A1N(A[23]), .B0(n28), .Y(SUM[23]) );
  OAI2BB1XL U35 ( .A0N(n30), .A1N(A[22]), .B0(n29), .Y(SUM[22]) );
  OAI2BB1XL U36 ( .A0N(n31), .A1N(A[21]), .B0(n30), .Y(SUM[21]) );
  OAI2BB1XL U37 ( .A0N(n32), .A1N(A[20]), .B0(n31), .Y(SUM[20]) );
  OAI2BB1XL U38 ( .A0N(n33), .A1N(A[19]), .B0(n32), .Y(SUM[19]) );
  OAI2BB1XL U39 ( .A0N(n34), .A1N(A[18]), .B0(n33), .Y(SUM[18]) );
  OAI2BB1XL U40 ( .A0N(n35), .A1N(A[17]), .B0(n34), .Y(SUM[17]) );
  OAI2BB1XL U41 ( .A0N(n36), .A1N(A[16]), .B0(n35), .Y(SUM[16]) );
  OAI2BB1XL U42 ( .A0N(n37), .A1N(A[15]), .B0(n36), .Y(SUM[15]) );
  OAI2BB1XL U43 ( .A0N(n38), .A1N(A[14]), .B0(n37), .Y(SUM[14]) );
  OAI2BB1XL U44 ( .A0N(n39), .A1N(A[13]), .B0(n38), .Y(SUM[13]) );
  OAI2BB1XL U45 ( .A0N(n40), .A1N(A[12]), .B0(n39), .Y(SUM[12]) );
  OAI2BB1XL U46 ( .A0N(n13), .A1N(A[8]), .B0(n11), .Y(SUM[8]) );
  OAI2BB1XL U47 ( .A0N(n14), .A1N(A[7]), .B0(n13), .Y(SUM[7]) );
  OAI2BB1XL U48 ( .A0N(n15), .A1N(A[6]), .B0(n14), .Y(SUM[6]) );
  OR2X1 U49 ( .A(A[10]), .B(A[9]), .Y(n10) );
  NAND2X1 U50 ( .A(n8), .B(n7), .Y(n20) );
  XOR2X1 U51 ( .A(A[31]), .B(n19), .Y(SUM[31]) );
  NAND2BX1 U52 ( .AN(A[1]), .B(SUM[0]), .Y(n21) );
  NOR2X1 U53 ( .A(n11), .B(A[9]), .Y(n12) );
  OR2X1 U54 ( .A(n13), .B(A[8]), .Y(n11) );
  CLKINVX1 U55 ( .A(A[29]), .Y(n23) );
  AO21X1 U56 ( .A0(n11), .A1(A[9]), .B0(n12), .Y(SUM[9]) );
  XNOR2X1 U57 ( .A(A[30]), .B(n20), .Y(SUM[30]) );
  OAI21XL U58 ( .A0(n22), .A1(n23), .B0(n20), .Y(SUM[29]) );
  AO21X1 U59 ( .A0(n24), .A1(A[28]), .B0(n22), .Y(SUM[28]) );
  OAI2BB1X1 U60 ( .A0N(n25), .A1N(A[27]), .B0(n24), .Y(SUM[27]) );
  OAI2BB1X1 U61 ( .A0N(n26), .A1N(A[26]), .B0(n25), .Y(SUM[26]) );
  OR2X1 U62 ( .A(n28), .B(A[24]), .Y(n27) );
  OR2X1 U63 ( .A(n30), .B(A[22]), .Y(n29) );
  OR2X1 U64 ( .A(n32), .B(A[20]), .Y(n31) );
  OR2X1 U65 ( .A(n34), .B(A[18]), .Y(n33) );
  OR2X1 U66 ( .A(n36), .B(A[16]), .Y(n35) );
  OR2X1 U67 ( .A(n37), .B(A[15]), .Y(n36) );
  OR2X1 U68 ( .A(n39), .B(A[13]), .Y(n38) );
  OAI2BB1X1 U69 ( .A0N(n41), .A1N(A[11]), .B0(n40), .Y(SUM[11]) );
  OR2X1 U70 ( .A(n41), .B(A[11]), .Y(n40) );
  OAI21XL U71 ( .A0(n12), .A1(n42), .B0(n41), .Y(SUM[10]) );
  CLKINVX1 U72 ( .A(A[10]), .Y(n42) );
  OR2X1 U73 ( .A(n15), .B(A[6]), .Y(n14) );
  OR2X1 U74 ( .A(n18), .B(A[3]), .Y(n17) );
endmodule


module controller_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  ADDHX1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHX1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHX1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHX1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHX1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHX1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHX1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHX1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHX1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHX1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHX1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHX1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHX1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHX2 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHX1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHX2 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  XOR2X1 U1 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module controller ( clk, rst, en_in_mem, in_mem_addr, en_out_mem, out_mem_read, 
        out_mem_write, out_mem_addr, done );
  output [31:0] in_mem_addr;
  output [31:0] out_mem_addr;
  input clk, rst;
  output en_in_mem, en_out_mem, out_mem_read, out_mem_write, done;
  wire   N35, N36, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N170, N171, N172, N173, N174, N175,
         N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186,
         N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197,
         N198, N199, N200, N201, n1, n3, n6, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n2, n4, n5, n7, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114;
  wire   [2:0] cs;
  wire   [2:0] ns;

  AOI22X4 U57 ( .A0(N176), .A1(n104), .B0(N112), .B1(n100), .Y(n15) );
  AOI22X4 U59 ( .A0(N177), .A1(n104), .B0(N113), .B1(n100), .Y(n16) );
  AOI22X4 U61 ( .A0(N178), .A1(n105), .B0(N114), .B1(n100), .Y(n17) );
  AOI22X4 U63 ( .A0(N179), .A1(n105), .B0(N115), .B1(n100), .Y(n18) );
  AOI22X4 U65 ( .A0(N180), .A1(n104), .B0(N116), .B1(n100), .Y(n19) );
  AOI22X4 U67 ( .A0(N181), .A1(n104), .B0(N117), .B1(n100), .Y(n20) );
  AOI22X4 U69 ( .A0(N182), .A1(n106), .B0(N118), .B1(n100), .Y(n21) );
  AOI22X4 U71 ( .A0(N183), .A1(n107), .B0(N119), .B1(n100), .Y(n22) );
  AOI22X4 U73 ( .A0(N184), .A1(n106), .B0(N120), .B1(n100), .Y(n23) );
  AOI22X4 U75 ( .A0(N185), .A1(n107), .B0(N121), .B1(n100), .Y(n24) );
  AOI22X4 U77 ( .A0(N186), .A1(n107), .B0(N122), .B1(n100), .Y(n25) );
  AOI22X4 U79 ( .A0(N187), .A1(n107), .B0(N123), .B1(n100), .Y(n26) );
  AOI22X4 U81 ( .A0(N188), .A1(n107), .B0(N124), .B1(n101), .Y(n27) );
  AOI22X4 U83 ( .A0(N189), .A1(n107), .B0(N125), .B1(n101), .Y(n28) );
  AOI22X4 U85 ( .A0(N190), .A1(n107), .B0(N126), .B1(n101), .Y(n29) );
  AOI22X4 U87 ( .A0(N191), .A1(n107), .B0(N127), .B1(n101), .Y(n30) );
  AOI22X4 U89 ( .A0(N192), .A1(n107), .B0(N128), .B1(n101), .Y(n31) );
  AOI22X4 U91 ( .A0(N193), .A1(n107), .B0(N129), .B1(n101), .Y(n32) );
  AOI22X4 U93 ( .A0(N194), .A1(n107), .B0(N130), .B1(n101), .Y(n33) );
  AOI22X4 U95 ( .A0(N195), .A1(n104), .B0(N131), .B1(n101), .Y(n34) );
  NOR2X6 U96 ( .A(n112), .B(n35), .Y(N79) );
  NOR2X6 U98 ( .A(n112), .B(n36), .Y(N78) );
  NOR2X6 U100 ( .A(n112), .B(n37), .Y(N77) );
  NOR2X6 U102 ( .A(n112), .B(n38), .Y(N76) );
  NOR2X6 U104 ( .A(rst), .B(n2), .Y(N75) );
  NOR2X6 U106 ( .A(rst), .B(n40), .Y(N74) );
  AOI22X4 U111 ( .A0(N170), .A1(n108), .B0(N106), .B1(n102), .Y(n9) );
  AOI22X4 U113 ( .A0(N171), .A1(n108), .B0(N107), .B1(n102), .Y(n10) );
  AOI22X4 U115 ( .A0(N172), .A1(n109), .B0(N108), .B1(n102), .Y(n11) );
  AOI22X4 U117 ( .A0(N173), .A1(n109), .B0(N109), .B1(n102), .Y(n12) );
  AOI22X4 U119 ( .A0(N174), .A1(n109), .B0(N110), .B1(n102), .Y(n13) );
  AOI22X4 U121 ( .A0(N175), .A1(n103), .B0(N111), .B1(n102), .Y(n14) );
  controller_DW01_dec_0 sub_0_root_sub_129 ( .A({N137, N136, N135, N134, N133, 
        N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, 
        N108, N107, N106}), .SUM({N201, N200, N199, N198, N197, N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170}) );
  controller_DW01_inc_0 r307 ( .A({N74, N75, N76, N77, N78, N79, N80, N81, N82, 
        N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, 
        N97, N98, N99, N100, N101, N102, N103, N104, N105}), .SUM({N137, N136, 
        N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106}) );
  DFFQX1 \ns_reg[1]  ( .D(n91), .CK(clk), .Q(ns[1]) );
  DFFQX2 \in_mem_addr_reg[1]  ( .D(n59), .CK(clk), .Q(in_mem_addr[1]) );
  DFFQX2 \in_mem_addr_reg[2]  ( .D(n60), .CK(clk), .Q(in_mem_addr[2]) );
  DFFQX2 \in_mem_addr_reg[3]  ( .D(n61), .CK(clk), .Q(in_mem_addr[3]) );
  DFFQX2 \in_mem_addr_reg[4]  ( .D(n62), .CK(clk), .Q(in_mem_addr[4]) );
  DFFQX2 \in_mem_addr_reg[5]  ( .D(n63), .CK(clk), .Q(in_mem_addr[5]) );
  DFFQX2 \in_mem_addr_reg[6]  ( .D(n64), .CK(clk), .Q(in_mem_addr[6]) );
  DFFQX2 \in_mem_addr_reg[7]  ( .D(n65), .CK(clk), .Q(in_mem_addr[7]) );
  DFFQX2 \in_mem_addr_reg[8]  ( .D(n66), .CK(clk), .Q(in_mem_addr[8]) );
  DFFQX2 \in_mem_addr_reg[9]  ( .D(n67), .CK(clk), .Q(in_mem_addr[9]) );
  DFFQX2 \in_mem_addr_reg[10]  ( .D(n68), .CK(clk), .Q(in_mem_addr[10]) );
  DFFQX2 \in_mem_addr_reg[11]  ( .D(n69), .CK(clk), .Q(in_mem_addr[11]) );
  DFFQX2 \in_mem_addr_reg[12]  ( .D(n70), .CK(clk), .Q(in_mem_addr[12]) );
  DFFQX2 \in_mem_addr_reg[13]  ( .D(n71), .CK(clk), .Q(in_mem_addr[13]) );
  DFFQX2 \in_mem_addr_reg[14]  ( .D(n72), .CK(clk), .Q(in_mem_addr[14]) );
  DFFQX2 \in_mem_addr_reg[15]  ( .D(n73), .CK(clk), .Q(in_mem_addr[15]) );
  DFFQX2 \in_mem_addr_reg[16]  ( .D(n74), .CK(clk), .Q(in_mem_addr[16]) );
  DFFQX2 \in_mem_addr_reg[17]  ( .D(n75), .CK(clk), .Q(in_mem_addr[17]) );
  DFFQX2 \in_mem_addr_reg[18]  ( .D(n76), .CK(clk), .Q(in_mem_addr[18]) );
  DFFQX2 \in_mem_addr_reg[19]  ( .D(n77), .CK(clk), .Q(in_mem_addr[19]) );
  DFFQX2 \in_mem_addr_reg[20]  ( .D(n78), .CK(clk), .Q(in_mem_addr[20]) );
  DFFQX2 \in_mem_addr_reg[21]  ( .D(n79), .CK(clk), .Q(in_mem_addr[21]) );
  DFFQX2 \in_mem_addr_reg[22]  ( .D(n80), .CK(clk), .Q(in_mem_addr[22]) );
  DFFQX2 \in_mem_addr_reg[23]  ( .D(n81), .CK(clk), .Q(in_mem_addr[23]) );
  DFFQX2 \in_mem_addr_reg[24]  ( .D(n82), .CK(clk), .Q(in_mem_addr[24]) );
  DFFQX2 \in_mem_addr_reg[25]  ( .D(n83), .CK(clk), .Q(in_mem_addr[25]) );
  DFFQX2 \in_mem_addr_reg[26]  ( .D(n84), .CK(clk), .Q(in_mem_addr[26]) );
  DFFQX2 \in_mem_addr_reg[27]  ( .D(n85), .CK(clk), .Q(in_mem_addr[27]) );
  DFFQX2 \in_mem_addr_reg[28]  ( .D(n86), .CK(clk), .Q(in_mem_addr[28]) );
  DFFQX2 \in_mem_addr_reg[29]  ( .D(n87), .CK(clk), .Q(in_mem_addr[29]) );
  DFFQX2 \in_mem_addr_reg[30]  ( .D(n88), .CK(clk), .Q(in_mem_addr[30]) );
  DFFQX2 \in_mem_addr_reg[31]  ( .D(n89), .CK(clk), .Q(in_mem_addr[31]) );
  DFFQX2 \in_mem_addr_reg[0]  ( .D(n90), .CK(clk), .Q(in_mem_addr[0]) );
  DFFTRX1 \cs_reg[1]  ( .D(ns[1]), .RN(n113), .CK(clk), .Q(cs[1]), .QN(n8) );
  DFFQX2 done_reg ( .D(N36), .CK(clk), .Q(done) );
  DFFQX2 out_mem_read_reg ( .D(N36), .CK(clk), .Q(out_mem_read) );
  EDFFX2 \out_mem_addr_reg[31]  ( .D(N137), .E(n102), .CK(clk), .Q(
        out_mem_addr[31]) );
  EDFFX2 \out_mem_addr_reg[30]  ( .D(N136), .E(n102), .CK(clk), .Q(
        out_mem_addr[30]) );
  EDFFX2 \out_mem_addr_reg[29]  ( .D(N135), .E(n102), .CK(clk), .Q(
        out_mem_addr[29]) );
  EDFFX2 \out_mem_addr_reg[28]  ( .D(N134), .E(n102), .CK(clk), .Q(
        out_mem_addr[28]) );
  EDFFX2 \out_mem_addr_reg[27]  ( .D(N133), .E(n102), .CK(clk), .Q(
        out_mem_addr[27]) );
  EDFFX2 \out_mem_addr_reg[26]  ( .D(N132), .E(n102), .CK(clk), .Q(
        out_mem_addr[26]) );
  EDFFX2 \out_mem_addr_reg[25]  ( .D(N131), .E(n102), .CK(clk), .Q(
        out_mem_addr[25]) );
  EDFFX2 \out_mem_addr_reg[24]  ( .D(N130), .E(n99), .CK(clk), .Q(
        out_mem_addr[24]) );
  EDFFX2 \out_mem_addr_reg[23]  ( .D(N129), .E(n99), .CK(clk), .Q(
        out_mem_addr[23]) );
  EDFFX2 \out_mem_addr_reg[22]  ( .D(N128), .E(n99), .CK(clk), .Q(
        out_mem_addr[22]) );
  EDFFX2 \out_mem_addr_reg[21]  ( .D(N127), .E(n99), .CK(clk), .Q(
        out_mem_addr[21]) );
  EDFFX2 \out_mem_addr_reg[20]  ( .D(N126), .E(n99), .CK(clk), .Q(
        out_mem_addr[20]) );
  EDFFX2 \out_mem_addr_reg[19]  ( .D(N125), .E(n99), .CK(clk), .Q(
        out_mem_addr[19]) );
  EDFFX2 \out_mem_addr_reg[18]  ( .D(N124), .E(n99), .CK(clk), .Q(
        out_mem_addr[18]) );
  EDFFX2 \out_mem_addr_reg[17]  ( .D(N123), .E(n99), .CK(clk), .Q(
        out_mem_addr[17]) );
  EDFFX2 \out_mem_addr_reg[16]  ( .D(N122), .E(n99), .CK(clk), .Q(
        out_mem_addr[16]) );
  EDFFX2 \out_mem_addr_reg[15]  ( .D(N121), .E(n99), .CK(clk), .Q(
        out_mem_addr[15]) );
  EDFFX2 \out_mem_addr_reg[14]  ( .D(N120), .E(n99), .CK(clk), .Q(
        out_mem_addr[14]) );
  EDFFX2 \out_mem_addr_reg[13]  ( .D(N119), .E(N35), .CK(clk), .Q(
        out_mem_addr[13]) );
  EDFFX2 \out_mem_addr_reg[12]  ( .D(N118), .E(N35), .CK(clk), .Q(
        out_mem_addr[12]) );
  EDFFX2 \out_mem_addr_reg[11]  ( .D(N117), .E(N35), .CK(clk), .Q(
        out_mem_addr[11]) );
  EDFFX2 \out_mem_addr_reg[10]  ( .D(N116), .E(n99), .CK(clk), .Q(
        out_mem_addr[10]) );
  EDFFX2 \out_mem_addr_reg[9]  ( .D(N115), .E(n99), .CK(clk), .Q(
        out_mem_addr[9]) );
  EDFFX2 \out_mem_addr_reg[8]  ( .D(N114), .E(n99), .CK(clk), .Q(
        out_mem_addr[8]) );
  EDFFX2 \out_mem_addr_reg[7]  ( .D(N113), .E(n99), .CK(clk), .Q(
        out_mem_addr[7]) );
  EDFFX2 \out_mem_addr_reg[6]  ( .D(N112), .E(n99), .CK(clk), .Q(
        out_mem_addr[6]) );
  EDFFX2 \out_mem_addr_reg[5]  ( .D(N111), .E(n100), .CK(clk), .Q(
        out_mem_addr[5]) );
  EDFFX2 \out_mem_addr_reg[4]  ( .D(N110), .E(n100), .CK(clk), .Q(
        out_mem_addr[4]) );
  EDFFX2 \out_mem_addr_reg[3]  ( .D(N109), .E(n100), .CK(clk), .Q(
        out_mem_addr[3]) );
  EDFFX2 \out_mem_addr_reg[2]  ( .D(N108), .E(n100), .CK(clk), .Q(
        out_mem_addr[2]) );
  EDFFX2 \out_mem_addr_reg[1]  ( .D(N107), .E(n101), .CK(clk), .Q(
        out_mem_addr[1]) );
  DFFQX2 en_in_mem_reg ( .D(n98), .CK(clk), .Q(en_in_mem) );
  EDFFX2 \out_mem_addr_reg[0]  ( .D(N106), .E(n101), .CK(clk), .Q(
        out_mem_addr[0]) );
  DFFTRX1 \cs_reg[0]  ( .D(n113), .RN(ns[0]), .CK(clk), .Q(cs[0]) );
  DFFQX2 en_out_mem_reg ( .D(n100), .CK(clk), .Q(en_out_mem) );
  DFFQX2 out_mem_write_reg ( .D(n100), .CK(clk), .Q(out_mem_write) );
  DFFTRX1 \cs_reg[2]  ( .D(n113), .RN(n1), .CK(clk), .Q(cs[2]), .QN(n6) );
  DFFX1 \ns_reg[2]  ( .D(n93), .CK(clk), .Q(n1), .QN(n3) );
  DFFQX1 \ns_reg[0]  ( .D(n92), .CK(clk), .Q(ns[0]) );
  AOI22X4 U3 ( .A0(N201), .A1(n108), .B0(N137), .B1(n102), .Y(n40) );
  BUFX8 U4 ( .A(n39), .Y(n2) );
  OA21XL U5 ( .A0(cs[2]), .A1(cs[0]), .B0(n43), .Y(n47) );
  NAND2X1 U6 ( .A(n49), .B(n50), .Y(n48) );
  NAND3X1 U7 ( .A(cs[1]), .B(n6), .C(cs[0]), .Y(n46) );
  NOR2X1 U8 ( .A(rst), .B(n9), .Y(N105) );
  OR2X1 U9 ( .A(n44), .B(n3), .Y(n4) );
  OR2X1 U10 ( .A(n46), .B(n48), .Y(n5) );
  NAND2X1 U11 ( .A(n4), .B(n5), .Y(n93) );
  NOR2X8 U12 ( .A(rst), .B(n24), .Y(N90) );
  CLKINVX1 U13 ( .A(rst), .Y(n113) );
  NOR2X1 U14 ( .A(n112), .B(n19), .Y(N95) );
  NOR2X1 U15 ( .A(n112), .B(n20), .Y(N94) );
  NOR2X1 U16 ( .A(n112), .B(n22), .Y(N92) );
  NAND3X1 U17 ( .A(n7), .B(n94), .C(n47), .Y(n92) );
  CLKINVX1 U18 ( .A(n48), .Y(n45) );
  OR2X1 U19 ( .A(n45), .B(n46), .Y(n7) );
  CLKBUFX3 U20 ( .A(N35), .Y(n99) );
  CLKINVX3 U21 ( .A(n105), .Y(n102) );
  NOR2XL U22 ( .A(n112), .B(n14), .Y(N100) );
  NOR2X1 U23 ( .A(n112), .B(n17), .Y(N97) );
  OR2X1 U24 ( .A(n44), .B(n114), .Y(n94) );
  NAND3XL U25 ( .A(n95), .B(n46), .C(n47), .Y(n44) );
  INVX3 U26 ( .A(n113), .Y(n112) );
  AOI22X1 U27 ( .A0(N196), .A1(n107), .B0(N132), .B1(n101), .Y(n35) );
  NOR2X1 U28 ( .A(rst), .B(n10), .Y(N104) );
  NOR2X1 U29 ( .A(rst), .B(n12), .Y(N102) );
  NOR2X4 U30 ( .A(n112), .B(n15), .Y(N99) );
  NOR2X2 U31 ( .A(n112), .B(n13), .Y(N101) );
  NOR2X1 U32 ( .A(rst), .B(n25), .Y(N89) );
  NOR2X1 U33 ( .A(rst), .B(n26), .Y(N88) );
  NOR3X1 U34 ( .A(cs[0]), .B(cs[2]), .C(n8), .Y(N35) );
  CLKINVX1 U35 ( .A(n99), .Y(n111) );
  CLKINVX1 U36 ( .A(n99), .Y(n110) );
  CLKINVX1 U37 ( .A(n41), .Y(n98) );
  OR4XL U38 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(n51) );
  NAND3XL U39 ( .A(n8), .B(n6), .C(cs[0]), .Y(n41) );
  NOR3XL U40 ( .A(n6), .B(cs[1]), .C(cs[0]), .Y(N36) );
  INVX4 U41 ( .A(n106), .Y(n100) );
  INVX3 U42 ( .A(n104), .Y(n101) );
  NAND4X1 U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n55) );
  CLKBUFX3 U44 ( .A(n111), .Y(n105) );
  CLKBUFX3 U45 ( .A(n110), .Y(n108) );
  CLKBUFX3 U46 ( .A(n110), .Y(n109) );
  CLKBUFX3 U47 ( .A(n111), .Y(n103) );
  CLKBUFX3 U48 ( .A(n111), .Y(n106) );
  CLKBUFX3 U49 ( .A(n111), .Y(n104) );
  CLKBUFX3 U50 ( .A(n110), .Y(n107) );
  INVX3 U51 ( .A(n98), .Y(n95) );
  INVX3 U52 ( .A(n98), .Y(n96) );
  INVX3 U53 ( .A(n98), .Y(n97) );
  AOI22X1 U54 ( .A0(N199), .A1(n108), .B0(N135), .B1(n101), .Y(n38) );
  AOI22X1 U55 ( .A0(N200), .A1(n108), .B0(N136), .B1(n102), .Y(n39) );
  AOI22X1 U56 ( .A0(N198), .A1(n104), .B0(N134), .B1(n101), .Y(n37) );
  AOI22X1 U58 ( .A0(N197), .A1(n104), .B0(N133), .B1(n101), .Y(n36) );
  CLKINVX1 U60 ( .A(ns[0]), .Y(n114) );
  NAND4BBXL U62 ( .AN(n27), .BN(n26), .C(n2), .D(n40), .Y(n54) );
  NOR4X1 U64 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n50) );
  NOR4X1 U66 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n49) );
  NOR2X1 U68 ( .A(rst), .B(n11), .Y(N103) );
  OAI2BB2XL U70 ( .B0(n95), .B1(n40), .A0N(in_mem_addr[31]), .A1N(n97), .Y(n89) );
  OAI2BB2XL U72 ( .B0(n95), .B1(n38), .A0N(in_mem_addr[29]), .A1N(n97), .Y(n87) );
  OAI2BB2XL U74 ( .B0(n95), .B1(n2), .A0N(in_mem_addr[30]), .A1N(n97), .Y(n88)
         );
  OAI2BB2XL U76 ( .B0(n95), .B1(n37), .A0N(in_mem_addr[28]), .A1N(n97), .Y(n86) );
  OAI2BB2XL U78 ( .B0(n95), .B1(n36), .A0N(in_mem_addr[27]), .A1N(n97), .Y(n85) );
  NOR2X1 U80 ( .A(n112), .B(n16), .Y(N98) );
  OAI2BB2XL U82 ( .B0(n95), .B1(n35), .A0N(in_mem_addr[26]), .A1N(n97), .Y(n84) );
  NOR2X1 U84 ( .A(n112), .B(n18), .Y(N96) );
  NOR2X1 U86 ( .A(n112), .B(n21), .Y(N93) );
  NOR2X1 U88 ( .A(n112), .B(n23), .Y(N91) );
  NOR2X1 U90 ( .A(rst), .B(n28), .Y(N86) );
  NOR2X1 U92 ( .A(rst), .B(n29), .Y(N85) );
  NOR2X1 U94 ( .A(rst), .B(n27), .Y(N87) );
  NOR2X1 U97 ( .A(rst), .B(n30), .Y(N84) );
  NOR2X1 U99 ( .A(rst), .B(n31), .Y(N83) );
  NOR2X1 U101 ( .A(rst), .B(n32), .Y(N82) );
  NOR2X1 U103 ( .A(rst), .B(n33), .Y(N81) );
  NOR2X1 U105 ( .A(rst), .B(n34), .Y(N80) );
  NAND4X1 U107 ( .A(n17), .B(n19), .C(n20), .D(n22), .Y(n58) );
  NAND4X1 U108 ( .A(n24), .B(n28), .C(n29), .D(n30), .Y(n57) );
  NAND4X1 U109 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n56) );
  OR4X1 U110 ( .A(n25), .B(n23), .C(n21), .D(n18), .Y(n53) );
  OR4X1 U112 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(n52) );
  OAI21XL U114 ( .A0(cs[0]), .A1(cs[1]), .B0(cs[2]), .Y(n43) );
  OAI2BB2XL U116 ( .B0(n95), .B1(n34), .A0N(in_mem_addr[25]), .A1N(n96), .Y(
        n83) );
  OAI2BB2XL U118 ( .B0(n96), .B1(n30), .A0N(in_mem_addr[21]), .A1N(n97), .Y(
        n79) );
  OAI2BB2XL U120 ( .B0(n96), .B1(n22), .A0N(in_mem_addr[13]), .A1N(n97), .Y(
        n71) );
  OAI2BB2XL U122 ( .B0(n97), .B1(n33), .A0N(in_mem_addr[24]), .A1N(n97), .Y(
        n82) );
  OAI2BB2XL U123 ( .B0(n96), .B1(n29), .A0N(in_mem_addr[20]), .A1N(n97), .Y(
        n78) );
  OAI2BB2XL U124 ( .B0(n97), .B1(n20), .A0N(in_mem_addr[11]), .A1N(n97), .Y(
        n69) );
  OAI2BB2XL U125 ( .B0(n96), .B1(n32), .A0N(in_mem_addr[23]), .A1N(n97), .Y(
        n81) );
  OAI2BB2XL U126 ( .B0(n96), .B1(n28), .A0N(in_mem_addr[19]), .A1N(n97), .Y(
        n77) );
  OAI2BB2XL U127 ( .B0(n96), .B1(n19), .A0N(in_mem_addr[10]), .A1N(n96), .Y(
        n68) );
  OAI2BB2XL U128 ( .B0(n95), .B1(n31), .A0N(in_mem_addr[22]), .A1N(n97), .Y(
        n80) );
  OAI2BB2XL U129 ( .B0(n96), .B1(n24), .A0N(in_mem_addr[15]), .A1N(n97), .Y(
        n73) );
  OAI2BB2XL U130 ( .B0(n95), .B1(n17), .A0N(in_mem_addr[8]), .A1N(n96), .Y(n66) );
  OAI2BB2XL U131 ( .B0(n96), .B1(n23), .A0N(in_mem_addr[14]), .A1N(n97), .Y(
        n72) );
  OAI2BB2XL U132 ( .B0(n95), .B1(n15), .A0N(in_mem_addr[6]), .A1N(n96), .Y(n64) );
  OAI2BB2XL U133 ( .B0(n95), .B1(n11), .A0N(in_mem_addr[2]), .A1N(n96), .Y(n60) );
  OAI2BB2XL U134 ( .B0(n95), .B1(n9), .A0N(in_mem_addr[0]), .A1N(n96), .Y(n90)
         );
  OAI2BB2XL U135 ( .B0(n95), .B1(n18), .A0N(in_mem_addr[9]), .A1N(n96), .Y(n67) );
  OAI2BB2XL U136 ( .B0(n95), .B1(n13), .A0N(in_mem_addr[4]), .A1N(n96), .Y(n62) );
  OAI2BB2XL U137 ( .B0(n96), .B1(n21), .A0N(in_mem_addr[12]), .A1N(n97), .Y(
        n70) );
  OAI2BB2XL U138 ( .B0(n95), .B1(n14), .A0N(in_mem_addr[5]), .A1N(n96), .Y(n63) );
  OAI2BB2XL U139 ( .B0(n95), .B1(n10), .A0N(in_mem_addr[1]), .A1N(n96), .Y(n59) );
  OAI2BB2XL U140 ( .B0(n95), .B1(n25), .A0N(in_mem_addr[16]), .A1N(n97), .Y(
        n74) );
  OAI2BB2XL U141 ( .B0(n95), .B1(n16), .A0N(in_mem_addr[7]), .A1N(n96), .Y(n65) );
  OAI2BB2XL U142 ( .B0(n95), .B1(n12), .A0N(in_mem_addr[3]), .A1N(n96), .Y(n61) );
  OAI2BB2XL U143 ( .B0(n41), .B1(n27), .A0N(in_mem_addr[18]), .A1N(n97), .Y(
        n76) );
  OAI2BB2XL U144 ( .B0(n41), .B1(n26), .A0N(in_mem_addr[17]), .A1N(n97), .Y(
        n75) );
  NAND4X1 U145 ( .A(n42), .B(n96), .C(n103), .D(n43), .Y(n91) );
  NAND2BX1 U146 ( .AN(n44), .B(ns[1]), .Y(n42) );
endmodule


module top ( clk, rst, done, in_mem_data, gray_data, en_in_mem, in_mem_addr, 
        en_out_mem, out_mem_addr, out_mem_read, out_mem_write );
  input [23:0] in_mem_data;
  output [7:0] gray_data;
  output [31:0] in_mem_addr;
  output [31:0] out_mem_addr;
  input clk, rst;
  output done, en_in_mem, en_out_mem, out_mem_read, out_mem_write;


  grayscale gray ( .d(in_mem_data), .q(gray_data) );
  controller ctrl ( .clk(clk), .rst(rst), .en_in_mem(en_in_mem), .in_mem_addr(
        in_mem_addr), .en_out_mem(en_out_mem), .out_mem_read(out_mem_read), 
        .out_mem_write(out_mem_write), .out_mem_addr(out_mem_addr), .done(done) );
endmodule

