/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Thu Apr  1 16:59:48 2021
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


module controller_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  ADDHXL U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  ADDHXL U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  ADDHXL U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  ADDHXL U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  ADDHXL U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  ADDHXL U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  ADDHXL U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  ADDHXL U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  ADDHXL U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  ADDHXL U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  ADDHXL U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  ADDHXL U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[31]), .B(A[31]), .Y(SUM[31]) );
endmodule


module controller ( clk, rst, en_in_mem, in_mem_addr, en_out_mem, out_mem_read, 
        out_mem_write, out_mem_addr, done );
  output [31:0] in_mem_addr;
  output [31:0] out_mem_addr;
  input clk, rst;
  output en_in_mem, en_out_mem, out_mem_read, out_mem_write, done;
  wire   N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, n1, n2, n5, n6, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n3, n4, n7, n8, n56, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168;
  wire   [31:0] count;

  controller_DW01_inc_0 add_79 ( .A(count), .SUM({N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20}) );
  DFFQX2 \out_mem_addr_reg[0]  ( .D(n89), .CK(clk), .Q(out_mem_addr[0]) );
  DFFQX2 \out_mem_addr_reg[2]  ( .D(n87), .CK(clk), .Q(out_mem_addr[2]) );
  DFFQX2 \out_mem_addr_reg[3]  ( .D(n86), .CK(clk), .Q(out_mem_addr[3]) );
  DFFQX2 \out_mem_addr_reg[4]  ( .D(n85), .CK(clk), .Q(out_mem_addr[4]) );
  DFFQX2 \out_mem_addr_reg[5]  ( .D(n84), .CK(clk), .Q(out_mem_addr[5]) );
  DFFQX2 \out_mem_addr_reg[6]  ( .D(n83), .CK(clk), .Q(out_mem_addr[6]) );
  DFFQX2 \out_mem_addr_reg[7]  ( .D(n82), .CK(clk), .Q(out_mem_addr[7]) );
  DFFQX2 \out_mem_addr_reg[8]  ( .D(n81), .CK(clk), .Q(out_mem_addr[8]) );
  DFFQX2 \out_mem_addr_reg[9]  ( .D(n80), .CK(clk), .Q(out_mem_addr[9]) );
  DFFQX2 \out_mem_addr_reg[10]  ( .D(n79), .CK(clk), .Q(out_mem_addr[10]) );
  DFFQX2 \out_mem_addr_reg[11]  ( .D(n78), .CK(clk), .Q(out_mem_addr[11]) );
  DFFQX2 \out_mem_addr_reg[12]  ( .D(n77), .CK(clk), .Q(out_mem_addr[12]) );
  DFFQX2 \out_mem_addr_reg[13]  ( .D(n76), .CK(clk), .Q(out_mem_addr[13]) );
  DFFQX2 \out_mem_addr_reg[14]  ( .D(n75), .CK(clk), .Q(out_mem_addr[14]) );
  DFFQX2 \out_mem_addr_reg[15]  ( .D(n74), .CK(clk), .Q(out_mem_addr[15]) );
  DFFQX2 \out_mem_addr_reg[16]  ( .D(n73), .CK(clk), .Q(out_mem_addr[16]) );
  DFFQX2 \out_mem_addr_reg[17]  ( .D(n72), .CK(clk), .Q(out_mem_addr[17]) );
  DFFQX2 \out_mem_addr_reg[18]  ( .D(n71), .CK(clk), .Q(out_mem_addr[18]) );
  DFFQX2 \out_mem_addr_reg[19]  ( .D(n70), .CK(clk), .Q(out_mem_addr[19]) );
  DFFQX2 \out_mem_addr_reg[20]  ( .D(n69), .CK(clk), .Q(out_mem_addr[20]) );
  DFFQX2 \out_mem_addr_reg[21]  ( .D(n68), .CK(clk), .Q(out_mem_addr[21]) );
  DFFQX2 \out_mem_addr_reg[22]  ( .D(n67), .CK(clk), .Q(out_mem_addr[22]) );
  DFFQX2 \out_mem_addr_reg[23]  ( .D(n66), .CK(clk), .Q(out_mem_addr[23]) );
  DFFQX2 \out_mem_addr_reg[24]  ( .D(n65), .CK(clk), .Q(out_mem_addr[24]) );
  DFFQX2 \out_mem_addr_reg[25]  ( .D(n64), .CK(clk), .Q(out_mem_addr[25]) );
  DFFQX2 \out_mem_addr_reg[26]  ( .D(n63), .CK(clk), .Q(out_mem_addr[26]) );
  DFFQX2 \out_mem_addr_reg[27]  ( .D(n62), .CK(clk), .Q(out_mem_addr[27]) );
  DFFQX2 \out_mem_addr_reg[28]  ( .D(n61), .CK(clk), .Q(out_mem_addr[28]) );
  DFFQX2 \out_mem_addr_reg[29]  ( .D(n60), .CK(clk), .Q(out_mem_addr[29]) );
  DFFQX2 \out_mem_addr_reg[30]  ( .D(n59), .CK(clk), .Q(out_mem_addr[30]) );
  DFFQX2 \out_mem_addr_reg[31]  ( .D(n58), .CK(clk), .Q(out_mem_addr[31]) );
  DFFQX2 \out_mem_addr_reg[1]  ( .D(n88), .CK(clk), .Q(out_mem_addr[1]) );
  DFFQX2 \in_mem_addr_reg[31]  ( .D(n90), .CK(clk), .Q(in_mem_addr[31]) );
  DFFQX2 \in_mem_addr_reg[30]  ( .D(n91), .CK(clk), .Q(in_mem_addr[30]) );
  DFFQX2 \in_mem_addr_reg[29]  ( .D(n92), .CK(clk), .Q(in_mem_addr[29]) );
  DFFQX2 \in_mem_addr_reg[28]  ( .D(n93), .CK(clk), .Q(in_mem_addr[28]) );
  DFFQX2 \in_mem_addr_reg[27]  ( .D(n94), .CK(clk), .Q(in_mem_addr[27]) );
  DFFQX2 \in_mem_addr_reg[26]  ( .D(n95), .CK(clk), .Q(in_mem_addr[26]) );
  DFFQX2 \in_mem_addr_reg[25]  ( .D(n96), .CK(clk), .Q(in_mem_addr[25]) );
  DFFQX2 \in_mem_addr_reg[24]  ( .D(n97), .CK(clk), .Q(in_mem_addr[24]) );
  DFFQX2 \in_mem_addr_reg[23]  ( .D(n98), .CK(clk), .Q(in_mem_addr[23]) );
  DFFQX2 \in_mem_addr_reg[22]  ( .D(n99), .CK(clk), .Q(in_mem_addr[22]) );
  DFFQX2 \in_mem_addr_reg[21]  ( .D(n100), .CK(clk), .Q(in_mem_addr[21]) );
  DFFQX2 \in_mem_addr_reg[20]  ( .D(n101), .CK(clk), .Q(in_mem_addr[20]) );
  DFFQX2 \in_mem_addr_reg[19]  ( .D(n102), .CK(clk), .Q(in_mem_addr[19]) );
  DFFQX2 \in_mem_addr_reg[18]  ( .D(n103), .CK(clk), .Q(in_mem_addr[18]) );
  DFFQX2 \in_mem_addr_reg[17]  ( .D(n104), .CK(clk), .Q(in_mem_addr[17]) );
  DFFQX2 \in_mem_addr_reg[16]  ( .D(n105), .CK(clk), .Q(in_mem_addr[16]) );
  DFFQX2 \in_mem_addr_reg[15]  ( .D(n106), .CK(clk), .Q(in_mem_addr[15]) );
  DFFQX2 \in_mem_addr_reg[14]  ( .D(n107), .CK(clk), .Q(in_mem_addr[14]) );
  DFFQX2 \in_mem_addr_reg[13]  ( .D(n108), .CK(clk), .Q(in_mem_addr[13]) );
  DFFQX2 \in_mem_addr_reg[12]  ( .D(n109), .CK(clk), .Q(in_mem_addr[12]) );
  DFFQX2 \in_mem_addr_reg[11]  ( .D(n110), .CK(clk), .Q(in_mem_addr[11]) );
  DFFQX2 \in_mem_addr_reg[10]  ( .D(n111), .CK(clk), .Q(in_mem_addr[10]) );
  DFFQX2 \in_mem_addr_reg[9]  ( .D(n112), .CK(clk), .Q(in_mem_addr[9]) );
  DFFQX2 \in_mem_addr_reg[8]  ( .D(n113), .CK(clk), .Q(in_mem_addr[8]) );
  DFFQX2 \in_mem_addr_reg[7]  ( .D(n114), .CK(clk), .Q(in_mem_addr[7]) );
  DFFQX2 \in_mem_addr_reg[6]  ( .D(n115), .CK(clk), .Q(in_mem_addr[6]) );
  DFFQX2 \in_mem_addr_reg[5]  ( .D(n116), .CK(clk), .Q(in_mem_addr[5]) );
  DFFQX2 \in_mem_addr_reg[4]  ( .D(n117), .CK(clk), .Q(in_mem_addr[4]) );
  DFFQX2 \in_mem_addr_reg[3]  ( .D(n118), .CK(clk), .Q(in_mem_addr[3]) );
  DFFQX2 \in_mem_addr_reg[2]  ( .D(n119), .CK(clk), .Q(in_mem_addr[2]) );
  DFFQX2 \in_mem_addr_reg[1]  ( .D(n120), .CK(clk), .Q(in_mem_addr[1]) );
  DFFQX2 \in_mem_addr_reg[0]  ( .D(n121), .CK(clk), .Q(in_mem_addr[0]) );
  DFFRX2 done_reg ( .D(n20), .CK(clk), .RN(n160), .Q(done), .QN(n19) );
  DFFRX2 out_mem_read_reg ( .D(n57), .CK(clk), .RN(n160), .Q(out_mem_read) );
  DFFRX1 \cs_reg[1]  ( .D(n155), .CK(clk), .RN(n160), .Q(n7), .QN(n54) );
  DFFRX1 \cs_reg[2]  ( .D(n122), .CK(clk), .RN(n160), .QN(n53) );
  DFFRX1 \count_reg[0]  ( .D(n153), .CK(clk), .RN(n158), .Q(count[0]), .QN(n52) );
  DFFRX1 \count_reg[26]  ( .D(n128), .CK(clk), .RN(n160), .Q(count[26]), .QN(
        n26) );
  DFFRX1 \count_reg[27]  ( .D(n127), .CK(clk), .RN(n160), .Q(count[27]), .QN(
        n25) );
  DFFRX1 \count_reg[28]  ( .D(n126), .CK(clk), .RN(n160), .Q(count[28]), .QN(
        n24) );
  DFFRX1 \count_reg[29]  ( .D(n125), .CK(clk), .RN(n160), .Q(count[29]), .QN(
        n23) );
  DFFRX1 \count_reg[31]  ( .D(n123), .CK(clk), .RN(n160), .Q(count[31]), .QN(
        n21) );
  DFFRX1 \count_reg[30]  ( .D(n124), .CK(clk), .RN(n160), .Q(count[30]), .QN(
        n22) );
  DFFRX2 en_in_mem_reg ( .D(N52), .CK(clk), .RN(n160), .Q(en_in_mem) );
  DFFRX1 \count_reg[20]  ( .D(n134), .CK(clk), .RN(n159), .Q(count[20]), .QN(
        n32) );
  DFFRX1 \count_reg[21]  ( .D(n133), .CK(clk), .RN(n159), .Q(count[21]), .QN(
        n31) );
  DFFRX1 \count_reg[22]  ( .D(n132), .CK(clk), .RN(n159), .Q(count[22]), .QN(
        n30) );
  DFFRX1 \count_reg[23]  ( .D(n131), .CK(clk), .RN(n159), .Q(count[23]), .QN(
        n29) );
  DFFRX1 \count_reg[24]  ( .D(n130), .CK(clk), .RN(n160), .Q(count[24]), .QN(
        n28) );
  DFFRX1 \count_reg[25]  ( .D(n129), .CK(clk), .RN(n160), .Q(count[25]), .QN(
        n27) );
  DFFSX1 \cs_reg[0]  ( .D(n156), .CK(clk), .SN(n160), .QN(n55) );
  DFFRX1 \count_reg[14]  ( .D(n140), .CK(clk), .RN(n159), .Q(count[14]), .QN(
        n38) );
  DFFRX1 \count_reg[15]  ( .D(n139), .CK(clk), .RN(n159), .Q(count[15]), .QN(
        n37) );
  DFFRX1 \count_reg[16]  ( .D(n138), .CK(clk), .RN(n159), .Q(count[16]), .QN(
        n36) );
  DFFRX1 \count_reg[17]  ( .D(n137), .CK(clk), .RN(n159), .Q(count[17]), .QN(
        n35) );
  DFFRX1 \count_reg[18]  ( .D(n136), .CK(clk), .RN(n159), .Q(count[18]), .QN(
        n34) );
  DFFRX1 \count_reg[19]  ( .D(n135), .CK(clk), .RN(n159), .Q(count[19]), .QN(
        n33) );
  DFFRX1 \count_reg[7]  ( .D(n147), .CK(clk), .RN(n158), .Q(count[7]), .QN(n45) );
  DFFRX1 \count_reg[8]  ( .D(n146), .CK(clk), .RN(n158), .Q(count[8]), .QN(n44) );
  DFFRX1 \count_reg[9]  ( .D(n145), .CK(clk), .RN(n158), .Q(count[9]), .QN(n43) );
  DFFRX1 \count_reg[10]  ( .D(n144), .CK(clk), .RN(n158), .Q(count[10]), .QN(
        n42) );
  DFFRX1 \count_reg[11]  ( .D(n143), .CK(clk), .RN(n159), .Q(count[11]), .QN(
        n41) );
  DFFRX1 \count_reg[12]  ( .D(n142), .CK(clk), .RN(n159), .Q(count[12]), .QN(
        n40) );
  DFFRX1 \count_reg[13]  ( .D(n141), .CK(clk), .RN(n159), .Q(count[13]), .QN(
        n39) );
  DFFRX1 \count_reg[1]  ( .D(n154), .CK(clk), .RN(n158), .Q(count[1]), .QN(n51) );
  DFFRX1 \count_reg[2]  ( .D(n152), .CK(clk), .RN(n158), .Q(count[2]), .QN(n50) );
  DFFRX1 \count_reg[3]  ( .D(n151), .CK(clk), .RN(n158), .Q(count[3]), .QN(n49) );
  DFFRX1 \count_reg[4]  ( .D(n150), .CK(clk), .RN(n158), .Q(count[4]), .QN(n48) );
  DFFRX1 \count_reg[5]  ( .D(n149), .CK(clk), .RN(n158), .Q(count[5]), .QN(n47) );
  DFFRX1 \count_reg[6]  ( .D(n148), .CK(clk), .RN(n158), .Q(count[6]), .QN(n46) );
  DFFRX2 en_out_mem_reg ( .D(n8), .CK(clk), .RN(n159), .Q(en_out_mem) );
  DFFRX2 out_mem_write_reg ( .D(n56), .CK(clk), .RN(n158), .Q(out_mem_write)
         );
  NAND2X1 U3 ( .A(N52), .B(n158), .Y(n3) );
  NAND2X1 U4 ( .A(n56), .B(n158), .Y(n4) );
  CLKINVX1 U5 ( .A(n5), .Y(n167) );
  CLKINVX1 U6 ( .A(rst), .Y(n168) );
  NOR3BX1 U7 ( .AN(n53), .B(n7), .C(n55), .Y(N52) );
  CLKBUFX3 U8 ( .A(n4), .Y(n166) );
  CLKBUFX3 U9 ( .A(n164), .Y(n165) );
  CLKBUFX3 U10 ( .A(n3), .Y(n163) );
  CLKBUFX3 U11 ( .A(n161), .Y(n162) );
  CLKBUFX3 U12 ( .A(n4), .Y(n164) );
  CLKBUFX3 U13 ( .A(n3), .Y(n161) );
  CLKBUFX3 U14 ( .A(n167), .Y(n56) );
  CLKBUFX3 U15 ( .A(n167), .Y(n157) );
  CLKBUFX3 U16 ( .A(n167), .Y(n8) );
  CLKBUFX3 U17 ( .A(n168), .Y(n158) );
  AO21X1 U18 ( .A0(n7), .A1(n5), .B0(N52), .Y(n155) );
  CLKBUFX3 U19 ( .A(n168), .Y(n159) );
  CLKBUFX3 U20 ( .A(n168), .Y(n160) );
  OAI2BB2XL U21 ( .B0(n51), .B1(n162), .A0N(in_mem_addr[1]), .A1N(n161), .Y(
        n120) );
  OAI2BB2XL U22 ( .B0(n47), .B1(n162), .A0N(in_mem_addr[5]), .A1N(n163), .Y(
        n116) );
  OAI2BB2XL U23 ( .B0(n41), .B1(n162), .A0N(in_mem_addr[11]), .A1N(n163), .Y(
        n110) );
  OAI2BB2XL U24 ( .B0(n32), .B1(n161), .A0N(in_mem_addr[20]), .A1N(n161), .Y(
        n101) );
  OAI2BB2XL U25 ( .B0(n28), .B1(n161), .A0N(in_mem_addr[24]), .A1N(n163), .Y(
        n97) );
  OAI2BB2XL U26 ( .B0(n24), .B1(n3), .A0N(in_mem_addr[28]), .A1N(n163), .Y(n93) );
  OAI2BB2XL U27 ( .B0(n51), .B1(n165), .A0N(out_mem_addr[1]), .A1N(n164), .Y(
        n88) );
  OAI2BB2XL U28 ( .B0(n24), .B1(n4), .A0N(out_mem_addr[28]), .A1N(n166), .Y(
        n61) );
  OAI2BB2XL U29 ( .B0(n28), .B1(n164), .A0N(out_mem_addr[24]), .A1N(n166), .Y(
        n65) );
  OAI2BB2XL U30 ( .B0(n32), .B1(n164), .A0N(out_mem_addr[20]), .A1N(n164), .Y(
        n69) );
  OAI2BB2XL U31 ( .B0(n41), .B1(n165), .A0N(out_mem_addr[11]), .A1N(n166), .Y(
        n78) );
  OAI2BB2XL U32 ( .B0(n47), .B1(n165), .A0N(out_mem_addr[5]), .A1N(n166), .Y(
        n84) );
  OAI2BB2XL U33 ( .B0(n50), .B1(n162), .A0N(in_mem_addr[2]), .A1N(n161), .Y(
        n119) );
  OAI2BB2XL U34 ( .B0(n46), .B1(n162), .A0N(in_mem_addr[6]), .A1N(n163), .Y(
        n115) );
  OAI2BB2XL U35 ( .B0(n39), .B1(n161), .A0N(in_mem_addr[13]), .A1N(n163), .Y(
        n108) );
  OAI2BB2XL U36 ( .B0(n31), .B1(n161), .A0N(in_mem_addr[21]), .A1N(n163), .Y(
        n100) );
  OAI2BB2XL U37 ( .B0(n27), .B1(n3), .A0N(in_mem_addr[25]), .A1N(n163), .Y(n96) );
  OAI2BB2XL U38 ( .B0(n23), .B1(n3), .A0N(in_mem_addr[29]), .A1N(n163), .Y(n92) );
  OAI2BB2XL U39 ( .B0(n23), .B1(n4), .A0N(out_mem_addr[29]), .A1N(n166), .Y(
        n60) );
  OAI2BB2XL U40 ( .B0(n27), .B1(n4), .A0N(out_mem_addr[25]), .A1N(n166), .Y(
        n64) );
  OAI2BB2XL U41 ( .B0(n31), .B1(n164), .A0N(out_mem_addr[21]), .A1N(n166), .Y(
        n68) );
  OAI2BB2XL U42 ( .B0(n39), .B1(n164), .A0N(out_mem_addr[13]), .A1N(n166), .Y(
        n76) );
  OAI2BB2XL U43 ( .B0(n46), .B1(n165), .A0N(out_mem_addr[6]), .A1N(n166), .Y(
        n83) );
  OAI2BB2XL U44 ( .B0(n50), .B1(n165), .A0N(out_mem_addr[2]), .A1N(n164), .Y(
        n87) );
  OAI2BB2XL U45 ( .B0(n49), .B1(n162), .A0N(in_mem_addr[3]), .A1N(n163), .Y(
        n118) );
  OAI2BB2XL U46 ( .B0(n45), .B1(n162), .A0N(in_mem_addr[7]), .A1N(n163), .Y(
        n114) );
  OAI2BB2XL U47 ( .B0(n37), .B1(n161), .A0N(in_mem_addr[15]), .A1N(n161), .Y(
        n106) );
  OAI2BB2XL U48 ( .B0(n30), .B1(n161), .A0N(in_mem_addr[22]), .A1N(n163), .Y(
        n99) );
  OAI2BB2XL U49 ( .B0(n26), .B1(n161), .A0N(in_mem_addr[26]), .A1N(n163), .Y(
        n95) );
  OAI2BB2XL U50 ( .B0(n22), .B1(n161), .A0N(in_mem_addr[30]), .A1N(n162), .Y(
        n91) );
  OAI2BB2XL U51 ( .B0(n22), .B1(n164), .A0N(out_mem_addr[30]), .A1N(n165), .Y(
        n59) );
  OAI2BB2XL U52 ( .B0(n26), .B1(n164), .A0N(out_mem_addr[26]), .A1N(n166), .Y(
        n63) );
  OAI2BB2XL U53 ( .B0(n30), .B1(n164), .A0N(out_mem_addr[22]), .A1N(n166), .Y(
        n67) );
  OAI2BB2XL U54 ( .B0(n37), .B1(n164), .A0N(out_mem_addr[15]), .A1N(n164), .Y(
        n74) );
  OAI2BB2XL U55 ( .B0(n45), .B1(n165), .A0N(out_mem_addr[7]), .A1N(n166), .Y(
        n82) );
  OAI2BB2XL U56 ( .B0(n49), .B1(n165), .A0N(out_mem_addr[3]), .A1N(n166), .Y(
        n86) );
  OAI2BB2XL U57 ( .B0(n48), .B1(n162), .A0N(in_mem_addr[4]), .A1N(n161), .Y(
        n117) );
  OAI2BB2XL U58 ( .B0(n42), .B1(n162), .A0N(in_mem_addr[10]), .A1N(n163), .Y(
        n111) );
  OAI2BB2XL U59 ( .B0(n33), .B1(n161), .A0N(in_mem_addr[19]), .A1N(n163), .Y(
        n102) );
  OAI2BB2XL U60 ( .B0(n29), .B1(n161), .A0N(in_mem_addr[23]), .A1N(n163), .Y(
        n98) );
  OAI2BB2XL U61 ( .B0(n25), .B1(n161), .A0N(in_mem_addr[27]), .A1N(n163), .Y(
        n94) );
  OAI2BB2XL U62 ( .B0(n21), .B1(n161), .A0N(in_mem_addr[31]), .A1N(n161), .Y(
        n90) );
  OAI2BB2XL U63 ( .B0(n21), .B1(n164), .A0N(out_mem_addr[31]), .A1N(n164), .Y(
        n58) );
  OAI2BB2XL U64 ( .B0(n25), .B1(n164), .A0N(out_mem_addr[27]), .A1N(n166), .Y(
        n62) );
  OAI2BB2XL U65 ( .B0(n29), .B1(n164), .A0N(out_mem_addr[23]), .A1N(n166), .Y(
        n66) );
  OAI2BB2XL U66 ( .B0(n33), .B1(n164), .A0N(out_mem_addr[19]), .A1N(n166), .Y(
        n70) );
  OAI2BB2XL U67 ( .B0(n42), .B1(n165), .A0N(out_mem_addr[10]), .A1N(n166), .Y(
        n79) );
  OAI2BB2XL U68 ( .B0(n48), .B1(n165), .A0N(out_mem_addr[4]), .A1N(n164), .Y(
        n85) );
  OAI2BB2XL U69 ( .B0(n44), .B1(n162), .A0N(in_mem_addr[8]), .A1N(n163), .Y(
        n113) );
  OAI2BB2XL U70 ( .B0(n36), .B1(n161), .A0N(in_mem_addr[16]), .A1N(n163), .Y(
        n105) );
  OAI2BB2XL U71 ( .B0(n36), .B1(n164), .A0N(out_mem_addr[16]), .A1N(n166), .Y(
        n73) );
  OAI2BB2XL U72 ( .B0(n44), .B1(n165), .A0N(out_mem_addr[8]), .A1N(n166), .Y(
        n81) );
  OAI2BB2XL U73 ( .B0(n40), .B1(n162), .A0N(in_mem_addr[12]), .A1N(n163), .Y(
        n109) );
  OAI2BB2XL U74 ( .B0(n34), .B1(n162), .A0N(in_mem_addr[18]), .A1N(n3), .Y(
        n103) );
  OAI2BB2XL U75 ( .B0(n34), .B1(n165), .A0N(out_mem_addr[18]), .A1N(n4), .Y(
        n71) );
  OAI2BB2XL U76 ( .B0(n40), .B1(n165), .A0N(out_mem_addr[12]), .A1N(n166), .Y(
        n77) );
  OAI2BB2XL U77 ( .B0(n43), .B1(n162), .A0N(in_mem_addr[9]), .A1N(n163), .Y(
        n112) );
  OAI2BB2XL U78 ( .B0(n35), .B1(n162), .A0N(in_mem_addr[17]), .A1N(n3), .Y(
        n104) );
  OAI2BB2XL U79 ( .B0(n35), .B1(n165), .A0N(out_mem_addr[17]), .A1N(n4), .Y(
        n72) );
  OAI2BB2XL U80 ( .B0(n43), .B1(n165), .A0N(out_mem_addr[9]), .A1N(n166), .Y(
        n80) );
  OAI2BB2XL U81 ( .B0(n38), .B1(n162), .A0N(in_mem_addr[14]), .A1N(n163), .Y(
        n107) );
  OAI2BB2XL U82 ( .B0(n38), .B1(n165), .A0N(out_mem_addr[14]), .A1N(n166), .Y(
        n75) );
  OAI2BB2XL U83 ( .B0(n52), .B1(n162), .A0N(in_mem_addr[0]), .A1N(n161), .Y(
        n121) );
  OAI2BB2XL U84 ( .B0(n52), .B1(n165), .A0N(out_mem_addr[0]), .A1N(n164), .Y(
        n89) );
  OAI2BB2XL U85 ( .B0(n8), .B1(n24), .A0N(N48), .A1N(n157), .Y(n126) );
  OAI2BB2XL U86 ( .B0(n56), .B1(n23), .A0N(N49), .A1N(n157), .Y(n125) );
  OAI2BB2XL U87 ( .B0(n56), .B1(n22), .A0N(N50), .A1N(n157), .Y(n124) );
  OAI2BB2XL U88 ( .B0(n56), .B1(n21), .A0N(N51), .A1N(n8), .Y(n123) );
  OAI2BB2XL U89 ( .B0(n56), .B1(n25), .A0N(N47), .A1N(n157), .Y(n127) );
  OAI2BB2XL U90 ( .B0(n56), .B1(n28), .A0N(N44), .A1N(n8), .Y(n130) );
  OAI2BB2XL U91 ( .B0(n8), .B1(n32), .A0N(N40), .A1N(n56), .Y(n134) );
  OAI2BB2XL U92 ( .B0(n56), .B1(n27), .A0N(N45), .A1N(n157), .Y(n129) );
  OAI2BB2XL U93 ( .B0(n8), .B1(n31), .A0N(N41), .A1N(n56), .Y(n133) );
  OAI2BB2XL U94 ( .B0(n56), .B1(n26), .A0N(N46), .A1N(n157), .Y(n128) );
  OAI2BB2XL U95 ( .B0(n8), .B1(n30), .A0N(N42), .A1N(n157), .Y(n132) );
  OAI2BB2XL U96 ( .B0(n8), .B1(n29), .A0N(N43), .A1N(n56), .Y(n131) );
  OAI2BB2XL U97 ( .B0(n8), .B1(n37), .A0N(N35), .A1N(n157), .Y(n139) );
  OAI2BB2XL U98 ( .B0(n8), .B1(n33), .A0N(N39), .A1N(n56), .Y(n135) );
  OAI2BB2XL U99 ( .B0(n8), .B1(n36), .A0N(N36), .A1N(n157), .Y(n138) );
  OAI2BB2XL U100 ( .B0(n8), .B1(n34), .A0N(N38), .A1N(n56), .Y(n136) );
  OAI2BB2XL U101 ( .B0(n8), .B1(n35), .A0N(N37), .A1N(n56), .Y(n137) );
  OAI2BB2XL U102 ( .B0(n8), .B1(n38), .A0N(N34), .A1N(n157), .Y(n140) );
  NAND3X1 U103 ( .A(n55), .B(n7), .C(n53), .Y(n5) );
  OAI2BB2XL U104 ( .B0(n157), .B1(n41), .A0N(N31), .A1N(n157), .Y(n143) );
  OAI2BB2XL U105 ( .B0(n8), .B1(n39), .A0N(N33), .A1N(n157), .Y(n141) );
  OAI2BB2XL U106 ( .B0(n8), .B1(n45), .A0N(N27), .A1N(n157), .Y(n147) );
  OAI2BB2XL U107 ( .B0(n157), .B1(n42), .A0N(N30), .A1N(n157), .Y(n144) );
  OAI2BB2XL U108 ( .B0(n8), .B1(n44), .A0N(N28), .A1N(n157), .Y(n146) );
  OAI2BB2XL U109 ( .B0(n56), .B1(n40), .A0N(N32), .A1N(n157), .Y(n142) );
  OAI2BB2XL U110 ( .B0(n56), .B1(n43), .A0N(N29), .A1N(n157), .Y(n145) );
  NAND3BX1 U111 ( .AN(n53), .B(n55), .C(n54), .Y(n1) );
  NAND4X1 U112 ( .A(n42), .B(n45), .C(n46), .D(n47), .Y(n14) );
  NAND4X1 U113 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n18) );
  NAND4X1 U114 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n13) );
  NAND4X1 U115 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n17) );
  NAND4X1 U116 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n16) );
  NAND2X1 U117 ( .A(n9), .B(n10), .Y(n6) );
  NOR4X1 U118 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n9) );
  NOR4X1 U119 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  NAND4X1 U120 ( .A(n33), .B(n37), .C(n39), .D(n41), .Y(n15) );
  OAI2BB2XL U121 ( .B0(n55), .B1(N52), .A0N(n6), .A1N(n8), .Y(n156) );
  OAI21XL U122 ( .A0(n5), .A1(n6), .B0(n53), .Y(n122) );
  OAI2BB2XL U123 ( .B0(n167), .B1(n47), .A0N(N25), .A1N(n157), .Y(n149) );
  OAI2BB2XL U124 ( .B0(n8), .B1(n51), .A0N(N21), .A1N(n56), .Y(n154) );
  OAI2BB2XL U125 ( .B0(n167), .B1(n46), .A0N(N26), .A1N(n157), .Y(n148) );
  OAI2BB2XL U126 ( .B0(n167), .B1(n50), .A0N(N22), .A1N(n8), .Y(n152) );
  OAI2BB2XL U127 ( .B0(n8), .B1(n49), .A0N(N23), .A1N(n56), .Y(n151) );
  OAI2BB2XL U128 ( .B0(n167), .B1(n48), .A0N(N24), .A1N(n157), .Y(n150) );
  OR4X1 U129 ( .A(count[0]), .B(n44), .C(n43), .D(n40), .Y(n12) );
  OR4X1 U130 ( .A(n38), .B(n36), .C(n35), .D(n34), .Y(n11) );
  NAND2X1 U131 ( .A(n19), .B(n1), .Y(n20) );
  NAND2X1 U132 ( .A(n1), .B(n2), .Y(n57) );
  OAI21XL U133 ( .A0(N52), .A1(n56), .B0(out_mem_read), .Y(n2) );
  AO22X1 U134 ( .A0(n5), .A1(count[0]), .B0(N20), .B1(n56), .Y(n153) );
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

