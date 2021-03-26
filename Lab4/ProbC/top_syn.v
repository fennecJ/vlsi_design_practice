/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 27 01:31:37 2021
/////////////////////////////////////////////////////////////


module CONV_DW_mult_tc_8 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252;

  ADDFXL U3 ( .A(n17), .B(n203), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n202), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n201), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  BUFX6 U140 ( .A(n227), .Y(n198) );
  XNOR2XL U141 ( .A(a[4]), .B(a[3]), .Y(n227) );
  OAI22X4 U142 ( .A0(n212), .A1(n191), .B0(n213), .B1(n209), .Y(n85) );
  OAI22X4 U143 ( .A0(n211), .A1(n191), .B0(n212), .B1(n209), .Y(n86) );
  ADDFX2 U144 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFHX2 U145 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  INVX6 U146 ( .A(n210), .Y(n189) );
  CLKINVX6 U147 ( .A(n189), .Y(n190) );
  INVX12 U148 ( .A(n189), .Y(n191) );
  CLKXOR2X4 U149 ( .A(n193), .B(n208), .Y(n211) );
  NAND2X8 U150 ( .A(n218), .B(n250), .Y(n220) );
  CLKXOR2X2 U151 ( .A(a[3]), .B(n192), .Y(n250) );
  ADDHXL U152 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OAI22X1 U153 ( .A0(n228), .A1(n229), .B0(n198), .B1(n230), .Y(n70) );
  XOR2X1 U154 ( .A(n193), .B(n207), .Y(n221) );
  CLKXOR2X2 U155 ( .A(b[3]), .B(n208), .Y(n213) );
  INVX4 U156 ( .A(a[0]), .Y(n209) );
  ADDFHX1 U157 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  OAI22X1 U158 ( .A0(n213), .A1(n191), .B0(n214), .B1(n209), .Y(n84) );
  ADDHX1 U159 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  ADDFX1 U160 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDFXL U161 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFX2 U162 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFX2 U163 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  INVX3 U164 ( .A(a[1]), .Y(n208) );
  NAND2X4 U165 ( .A(n198), .B(n251), .Y(n229) );
  BUFX6 U166 ( .A(a[2]), .Y(n192) );
  XOR2X1 U167 ( .A(b[4]), .B(n208), .Y(n214) );
  XOR2X2 U168 ( .A(n192), .B(a[1]), .Y(n197) );
  ADDFHX2 U169 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHX1 U170 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  BUFX6 U171 ( .A(b[1]), .Y(n193) );
  BUFX6 U172 ( .A(b[2]), .Y(n194) );
  ADDFHX2 U173 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  OR2X2 U174 ( .A(n219), .B(n220), .Y(n195) );
  OR2XL U175 ( .A(n218), .B(n221), .Y(n196) );
  NAND2X1 U176 ( .A(n195), .B(n196), .Y(n78) );
  XOR2XL U177 ( .A(n207), .B(b[0]), .Y(n219) );
  INVX8 U178 ( .A(n197), .Y(n218) );
  ADDHXL U179 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  XOR2XL U180 ( .A(b[6]), .B(n208), .Y(n216) );
  OAI22X1 U181 ( .A0(b[0]), .A1(n191), .B0(n211), .B1(n209), .Y(n87) );
  XOR2XL U182 ( .A(n193), .B(n206), .Y(n230) );
  INVX6 U183 ( .A(a[3]), .Y(n207) );
  XOR2XL U184 ( .A(n194), .B(n207), .Y(n222) );
  XOR2XL U185 ( .A(b[3]), .B(n207), .Y(n223) );
  INVX3 U186 ( .A(a[5]), .Y(n206) );
  XOR2XL U187 ( .A(b[4]), .B(n207), .Y(n224) );
  ADDFXL U188 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U189 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U190 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U191 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  NAND2X2 U192 ( .A(n199), .B(n252), .Y(n239) );
  INVX1 U193 ( .A(n29), .Y(n201) );
  AO21XL U194 ( .A0(n239), .A1(n199), .B0(n246), .Y(n56) );
  OAI32XL U195 ( .A0(n205), .A1(b[0]), .A2(n199), .B0(n205), .B1(n239), .Y(n52) );
  XOR2XL U196 ( .A(n205), .B(b[0]), .Y(n238) );
  NAND2BXL U197 ( .AN(n247), .B(n248), .Y(n34) );
  OAI2BB1XL U198 ( .A0N(n209), .A1N(n191), .B0(n217), .Y(n247) );
  XOR2XL U199 ( .A(n194), .B(n206), .Y(n231) );
  XOR2XL U200 ( .A(b[3]), .B(n206), .Y(n232) );
  XOR2XL U201 ( .A(n193), .B(n205), .Y(n240) );
  XOR2XL U202 ( .A(b[7]), .B(a[1]), .Y(n217) );
  XOR2XL U203 ( .A(b[6]), .B(n206), .Y(n235) );
  XOR2XL U204 ( .A(b[4]), .B(n206), .Y(n233) );
  XOR2XL U205 ( .A(n194), .B(n205), .Y(n241) );
  XOR2XL U206 ( .A(b[5]), .B(n206), .Y(n234) );
  XOR2XL U207 ( .A(b[3]), .B(n205), .Y(n242) );
  XOR2XL U208 ( .A(b[5]), .B(n207), .Y(n225) );
  XOR2XL U209 ( .A(b[6]), .B(n207), .Y(n249) );
  XOR2XL U210 ( .A(b[7]), .B(n207), .Y(n226) );
  XOR2XL U211 ( .A(b[7]), .B(n206), .Y(n236) );
  XOR2XL U212 ( .A(b[4]), .B(n205), .Y(n243) );
  XOR2XL U213 ( .A(b[5]), .B(n205), .Y(n244) );
  XOR2XL U214 ( .A(b[6]), .B(n205), .Y(n245) );
  XOR2XL U215 ( .A(b[7]), .B(n205), .Y(n246) );
  CLKINVX1 U216 ( .A(n15), .Y(n203) );
  CLKINVX1 U217 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U218 ( .A(b[0]), .Y(n204) );
  CLKINVX1 U219 ( .A(n21), .Y(n202) );
  NAND2X2 U220 ( .A(a[1]), .B(n209), .Y(n210) );
  INVX3 U221 ( .A(a[7]), .Y(n205) );
  CLKBUFX3 U222 ( .A(n237), .Y(n199) );
  XNOR2X1 U223 ( .A(a[6]), .B(a[5]), .Y(n237) );
  NOR2X1 U224 ( .A(n209), .B(n204), .Y(product[0]) );
  XOR2X1 U225 ( .A(n194), .B(n208), .Y(n212) );
  OAI22XL U226 ( .A0(n214), .A1(n191), .B0(n215), .B1(n209), .Y(n83) );
  OAI22XL U227 ( .A0(n215), .A1(n191), .B0(n216), .B1(n209), .Y(n82) );
  XOR2X1 U228 ( .A(b[5]), .B(n208), .Y(n215) );
  OAI2BB2XL U229 ( .B0(n216), .B1(n191), .A0N(n217), .A1N(a[0]), .Y(n81) );
  NOR2X1 U230 ( .A(n218), .B(n204), .Y(n79) );
  OAI22XL U231 ( .A0(n221), .A1(n220), .B0(n218), .B1(n222), .Y(n77) );
  OAI22XL U232 ( .A0(n222), .A1(n220), .B0(n218), .B1(n223), .Y(n76) );
  OAI22XL U233 ( .A0(n223), .A1(n220), .B0(n218), .B1(n224), .Y(n75) );
  OAI22XL U234 ( .A0(n224), .A1(n220), .B0(n218), .B1(n225), .Y(n74) );
  AO21X1 U235 ( .A0(n220), .A1(n218), .B0(n226), .Y(n72) );
  NOR2X1 U236 ( .A(n198), .B(n204), .Y(n71) );
  XOR2X1 U237 ( .A(n206), .B(b[0]), .Y(n228) );
  OAI22XL U238 ( .A0(n230), .A1(n229), .B0(n198), .B1(n231), .Y(n69) );
  OAI22XL U239 ( .A0(n231), .A1(n229), .B0(n198), .B1(n232), .Y(n68) );
  OAI22XL U240 ( .A0(n232), .A1(n229), .B0(n198), .B1(n233), .Y(n67) );
  OAI22XL U241 ( .A0(n233), .A1(n229), .B0(n198), .B1(n234), .Y(n66) );
  OAI22XL U242 ( .A0(n234), .A1(n229), .B0(n198), .B1(n235), .Y(n65) );
  AO21X1 U243 ( .A0(n229), .A1(n198), .B0(n236), .Y(n64) );
  NOR2X1 U244 ( .A(n199), .B(n204), .Y(n63) );
  OAI22XL U245 ( .A0(n238), .A1(n239), .B0(n199), .B1(n240), .Y(n62) );
  OAI22XL U246 ( .A0(n240), .A1(n239), .B0(n199), .B1(n241), .Y(n61) );
  OAI22XL U247 ( .A0(n241), .A1(n239), .B0(n199), .B1(n242), .Y(n60) );
  OAI22XL U248 ( .A0(n242), .A1(n239), .B0(n199), .B1(n243), .Y(n59) );
  OAI22XL U249 ( .A0(n243), .A1(n239), .B0(n199), .B1(n244), .Y(n58) );
  OAI22XL U250 ( .A0(n244), .A1(n239), .B0(n199), .B1(n245), .Y(n57) );
  OAI21XL U251 ( .A0(b[0]), .A1(n208), .B0(n190), .Y(n55) );
  OAI32X1 U252 ( .A0(n207), .A1(b[0]), .A2(n218), .B0(n207), .B1(n220), .Y(n54) );
  OAI32X1 U253 ( .A0(n206), .A1(b[0]), .A2(n198), .B0(n206), .B1(n229), .Y(n53) );
  XOR2X1 U254 ( .A(n247), .B(n248), .Y(n35) );
  OA22X1 U255 ( .A0(n225), .A1(n220), .B0(n218), .B1(n249), .Y(n248) );
  OAI22XL U256 ( .A0(n218), .A1(n226), .B0(n249), .B1(n220), .Y(n29) );
  OAI22XL U257 ( .A0(n198), .A1(n236), .B0(n235), .B1(n229), .Y(n21) );
  XOR2X1 U258 ( .A(a[5]), .B(a[4]), .Y(n251) );
  OAI22XL U259 ( .A0(n199), .A1(n246), .B0(n245), .B1(n239), .Y(n15) );
  XOR2X1 U260 ( .A(a[7]), .B(a[6]), .Y(n252) );
endmodule


module CONV_DW_mult_tc_7 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250;

  ADDFXL U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n202), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n201), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFHX2 U140 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  INVX3 U141 ( .A(b[4]), .Y(n189) );
  CLKINVX4 U142 ( .A(n189), .Y(n190) );
  OAI22X1 U143 ( .A0(n227), .A1(n228), .B0(n191), .B1(n229), .Y(n70) );
  ADDFHX2 U144 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  INVX4 U145 ( .A(a[0]), .Y(n209) );
  XOR2X1 U146 ( .A(n207), .B(b[0]), .Y(n219) );
  XOR2X1 U147 ( .A(b[1]), .B(n206), .Y(n229) );
  INVX3 U148 ( .A(a[5]), .Y(n206) );
  OAI22XL U149 ( .A0(n221), .A1(n220), .B0(n198), .B1(n222), .Y(n77) );
  ADDFX2 U150 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  NAND2X4 U151 ( .A(n191), .B(n249), .Y(n228) );
  ADDFX2 U152 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDFXL U153 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  XNOR2X4 U154 ( .A(a[4]), .B(n193), .Y(n191) );
  NAND2X4 U155 ( .A(a[1]), .B(n209), .Y(n210) );
  CLKBUFX3 U156 ( .A(b[3]), .Y(n192) );
  XOR2X4 U157 ( .A(n190), .B(n208), .Y(n214) );
  CLKXOR2X2 U158 ( .A(n193), .B(a[2]), .Y(n197) );
  BUFX6 U159 ( .A(a[3]), .Y(n193) );
  INVX4 U160 ( .A(n193), .Y(n207) );
  ADDHX2 U161 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U162 ( .A0(n212), .A1(n210), .B0(n213), .B1(n209), .Y(n85) );
  OAI32X4 U163 ( .A0(n206), .A1(b[0]), .A2(n191), .B0(n206), .B1(n228), .Y(n53) );
  ADDFX2 U164 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  BUFX6 U165 ( .A(b[2]), .Y(n194) );
  ADDFHX2 U166 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  XOR2X4 U167 ( .A(b[1]), .B(n208), .Y(n211) );
  XOR2X1 U168 ( .A(b[1]), .B(n205), .Y(n239) );
  OR2X2 U169 ( .A(n219), .B(n220), .Y(n195) );
  OR2X2 U170 ( .A(n198), .B(n221), .Y(n196) );
  NAND2X4 U171 ( .A(n195), .B(n196), .Y(n78) );
  NAND2X6 U172 ( .A(n198), .B(n197), .Y(n220) );
  ADDHX1 U173 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  OAI32XL U174 ( .A0(n205), .A1(b[0]), .A2(n199), .B0(n205), .B1(n238), .Y(n52) );
  XOR2XL U175 ( .A(n205), .B(b[0]), .Y(n237) );
  ADDHXL U176 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  XOR2X1 U177 ( .A(n194), .B(n207), .Y(n222) );
  NAND2X2 U178 ( .A(n199), .B(n250), .Y(n238) );
  INVX1 U179 ( .A(n29), .Y(n201) );
  OAI2BB1XL U180 ( .A0N(n209), .A1N(n210), .B0(n217), .Y(n246) );
  NAND2BXL U181 ( .AN(n246), .B(n247), .Y(n34) );
  AO21XL U182 ( .A0(n228), .A1(n191), .B0(n235), .Y(n64) );
  XOR2XL U183 ( .A(n192), .B(n207), .Y(n223) );
  XOR2X4 U184 ( .A(n192), .B(n208), .Y(n213) );
  INVX12 U185 ( .A(a[1]), .Y(n208) );
  XOR2XL U186 ( .A(n190), .B(n207), .Y(n224) );
  XOR2XL U187 ( .A(n194), .B(n206), .Y(n230) );
  XOR2XL U188 ( .A(n192), .B(n206), .Y(n231) );
  XOR2XL U189 ( .A(b[5]), .B(n207), .Y(n225) );
  XOR2XL U190 ( .A(b[6]), .B(n206), .Y(n234) );
  XOR2XL U191 ( .A(n190), .B(n206), .Y(n232) );
  XOR2XL U192 ( .A(n194), .B(n205), .Y(n240) );
  XOR2XL U193 ( .A(b[5]), .B(n206), .Y(n233) );
  XOR2XL U194 ( .A(n192), .B(n205), .Y(n241) );
  XOR2XL U195 ( .A(b[6]), .B(n207), .Y(n248) );
  XOR2XL U196 ( .A(b[7]), .B(n207), .Y(n226) );
  XOR2XL U197 ( .A(n190), .B(n205), .Y(n242) );
  XOR2XL U198 ( .A(b[5]), .B(n205), .Y(n243) );
  XOR2XL U199 ( .A(b[7]), .B(n206), .Y(n235) );
  XOR2XL U200 ( .A(b[6]), .B(n205), .Y(n244) );
  XOR2XL U201 ( .A(b[7]), .B(n205), .Y(n245) );
  CLKINVX1 U202 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U203 ( .A(n15), .Y(n203) );
  CLKINVX1 U204 ( .A(b[0]), .Y(n204) );
  CLKINVX1 U205 ( .A(n21), .Y(n202) );
  BUFX20 U206 ( .A(n218), .Y(n198) );
  INVX3 U207 ( .A(a[7]), .Y(n205) );
  CLKBUFX3 U208 ( .A(n236), .Y(n199) );
  XNOR2X1 U209 ( .A(a[6]), .B(a[5]), .Y(n236) );
  ADDFX2 U210 ( .A(n17), .B(n203), .CI(n3), .CO(n2), .S(product[13]) );
  XNOR2X4 U211 ( .A(a[2]), .B(a[1]), .Y(n218) );
  NOR2X1 U212 ( .A(n209), .B(n204), .Y(product[0]) );
  OAI22XL U213 ( .A0(b[0]), .A1(n210), .B0(n211), .B1(n209), .Y(n87) );
  OAI22XL U214 ( .A0(n211), .A1(n210), .B0(n212), .B1(n209), .Y(n86) );
  XOR2X1 U215 ( .A(n194), .B(n208), .Y(n212) );
  OAI22XL U216 ( .A0(n213), .A1(n210), .B0(n214), .B1(n209), .Y(n84) );
  OAI22XL U217 ( .A0(n214), .A1(n210), .B0(n215), .B1(n209), .Y(n83) );
  OAI22XL U218 ( .A0(n215), .A1(n210), .B0(n216), .B1(n209), .Y(n82) );
  XOR2X1 U219 ( .A(b[5]), .B(n208), .Y(n215) );
  OAI2BB2XL U220 ( .B0(n216), .B1(n210), .A0N(n217), .A1N(a[0]), .Y(n81) );
  XOR2X1 U221 ( .A(b[6]), .B(n208), .Y(n216) );
  NOR2X1 U222 ( .A(n198), .B(n204), .Y(n79) );
  XOR2X1 U223 ( .A(b[1]), .B(n207), .Y(n221) );
  OAI22XL U224 ( .A0(n222), .A1(n220), .B0(n198), .B1(n223), .Y(n76) );
  OAI22XL U225 ( .A0(n223), .A1(n220), .B0(n198), .B1(n224), .Y(n75) );
  OAI22XL U226 ( .A0(n224), .A1(n220), .B0(n198), .B1(n225), .Y(n74) );
  AO21X1 U227 ( .A0(n220), .A1(n198), .B0(n226), .Y(n72) );
  NOR2X1 U228 ( .A(n191), .B(n204), .Y(n71) );
  XOR2X1 U229 ( .A(n206), .B(b[0]), .Y(n227) );
  OAI22XL U230 ( .A0(n229), .A1(n228), .B0(n191), .B1(n230), .Y(n69) );
  OAI22XL U231 ( .A0(n230), .A1(n228), .B0(n191), .B1(n231), .Y(n68) );
  OAI22XL U232 ( .A0(n231), .A1(n228), .B0(n191), .B1(n232), .Y(n67) );
  OAI22XL U233 ( .A0(n232), .A1(n228), .B0(n191), .B1(n233), .Y(n66) );
  OAI22XL U234 ( .A0(n233), .A1(n228), .B0(n191), .B1(n234), .Y(n65) );
  NOR2X1 U235 ( .A(n199), .B(n204), .Y(n63) );
  OAI22XL U236 ( .A0(n237), .A1(n238), .B0(n199), .B1(n239), .Y(n62) );
  OAI22XL U237 ( .A0(n239), .A1(n238), .B0(n199), .B1(n240), .Y(n61) );
  OAI22XL U238 ( .A0(n240), .A1(n238), .B0(n199), .B1(n241), .Y(n60) );
  OAI22XL U239 ( .A0(n241), .A1(n238), .B0(n199), .B1(n242), .Y(n59) );
  OAI22XL U240 ( .A0(n242), .A1(n238), .B0(n199), .B1(n243), .Y(n58) );
  OAI22XL U241 ( .A0(n243), .A1(n238), .B0(n199), .B1(n244), .Y(n57) );
  AO21X1 U242 ( .A0(n238), .A1(n199), .B0(n245), .Y(n56) );
  OAI21XL U243 ( .A0(b[0]), .A1(n208), .B0(n210), .Y(n55) );
  OAI32X1 U244 ( .A0(n207), .A1(b[0]), .A2(n198), .B0(n207), .B1(n220), .Y(n54) );
  XOR2X1 U245 ( .A(n246), .B(n247), .Y(n35) );
  OA22X1 U246 ( .A0(n225), .A1(n220), .B0(n198), .B1(n248), .Y(n247) );
  XOR2X1 U247 ( .A(b[7]), .B(a[1]), .Y(n217) );
  OAI22XL U248 ( .A0(n198), .A1(n226), .B0(n248), .B1(n220), .Y(n29) );
  OAI22XL U249 ( .A0(n191), .A1(n235), .B0(n234), .B1(n228), .Y(n21) );
  XOR2X1 U250 ( .A(a[5]), .B(a[4]), .Y(n249) );
  OAI22XL U251 ( .A0(n199), .A1(n245), .B0(n244), .B1(n238), .Y(n15) );
  XOR2X1 U252 ( .A(a[7]), .B(a[6]), .Y(n250) );
endmodule


module CONV_DW_mult_tc_6 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249;

  ADDFXL U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n201), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n200), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  XOR2X1 U140 ( .A(n192), .B(n205), .Y(n229) );
  ADDHX1 U141 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  OAI22X1 U142 ( .A0(n210), .A1(n209), .B0(n211), .B1(n208), .Y(n86) );
  XOR2X2 U143 ( .A(n192), .B(n207), .Y(n211) );
  INVX8 U144 ( .A(a[1]), .Y(n207) );
  INVX6 U145 ( .A(a[0]), .Y(n208) );
  CLKBUFX3 U146 ( .A(b[4]), .Y(n190) );
  INVX4 U147 ( .A(a[5]), .Y(n205) );
  CLKBUFX3 U148 ( .A(a[3]), .Y(n191) );
  INVX3 U149 ( .A(n191), .Y(n206) );
  XOR2X1 U150 ( .A(b[3]), .B(n207), .Y(n212) );
  XOR2X1 U151 ( .A(n193), .B(n206), .Y(n220) );
  XOR2X1 U152 ( .A(n192), .B(n206), .Y(n221) );
  XOR2X1 U153 ( .A(b[6]), .B(n207), .Y(n215) );
  NAND2X6 U154 ( .A(n217), .B(n196), .Y(n219) );
  XOR2X1 U155 ( .A(n191), .B(a[2]), .Y(n196) );
  OAI22XL U156 ( .A0(n236), .A1(n237), .B0(n197), .B1(n238), .Y(n62) );
  ADDFX2 U157 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  OR2X1 U158 ( .A(n218), .B(n219), .Y(n194) );
  XNOR2X4 U159 ( .A(a[4]), .B(n191), .Y(n189) );
  XOR2X1 U160 ( .A(n193), .B(n205), .Y(n228) );
  NAND2X6 U161 ( .A(a[1]), .B(n208), .Y(n209) );
  NAND2X4 U162 ( .A(n197), .B(n249), .Y(n237) );
  ADDFX1 U163 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDFX2 U164 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFHX2 U165 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFX2 U166 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  OAI22X1 U167 ( .A0(n198), .A1(n209), .B0(n210), .B1(n208), .Y(n87) );
  XOR2X4 U168 ( .A(n193), .B(n207), .Y(n210) );
  CMPR22X2 U169 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U170 ( .A0(n211), .A1(n209), .B0(n212), .B1(n208), .Y(n85) );
  XOR2X1 U171 ( .A(b[3]), .B(n206), .Y(n222) );
  XOR2X1 U172 ( .A(n190), .B(n206), .Y(n223) );
  BUFX6 U173 ( .A(b[2]), .Y(n192) );
  OAI22X1 U174 ( .A0(n220), .A1(n219), .B0(n217), .B1(n221), .Y(n77) );
  OAI22X2 U175 ( .A0(n226), .A1(n227), .B0(n189), .B1(n228), .Y(n70) );
  NAND2X4 U176 ( .A(n189), .B(n248), .Y(n227) );
  OAI32X4 U177 ( .A0(n205), .A1(n198), .A2(n189), .B0(n205), .B1(n227), .Y(n53) );
  BUFX6 U178 ( .A(b[1]), .Y(n193) );
  OR2X2 U179 ( .A(n217), .B(n220), .Y(n195) );
  NAND2X2 U180 ( .A(n194), .B(n195), .Y(n78) );
  ADDHX1 U181 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  CLKINVX1 U182 ( .A(n1), .Y(product[15]) );
  XOR2X1 U183 ( .A(n204), .B(n198), .Y(n236) );
  OAI32X1 U184 ( .A0(n204), .A1(n198), .A2(n197), .B0(n204), .B1(n237), .Y(n52) );
  INVX1 U185 ( .A(n29), .Y(n200) );
  OAI2BB1XL U186 ( .A0N(n208), .A1N(n209), .B0(n216), .Y(n245) );
  NAND2BXL U187 ( .AN(n245), .B(n246), .Y(n34) );
  AO21XL U188 ( .A0(n227), .A1(n189), .B0(n234), .Y(n64) );
  BUFX8 U189 ( .A(b[0]), .Y(n198) );
  XOR2XL U190 ( .A(b[3]), .B(n205), .Y(n230) );
  XOR2XL U191 ( .A(n193), .B(n204), .Y(n238) );
  XOR2XL U192 ( .A(b[6]), .B(n205), .Y(n233) );
  XOR2XL U193 ( .A(n190), .B(n205), .Y(n231) );
  XOR2XL U194 ( .A(n192), .B(n204), .Y(n239) );
  XOR2XL U195 ( .A(b[5]), .B(n205), .Y(n232) );
  XOR2XL U196 ( .A(b[3]), .B(n204), .Y(n240) );
  XOR2XL U197 ( .A(n190), .B(n204), .Y(n241) );
  XOR2XL U198 ( .A(b[5]), .B(n206), .Y(n224) );
  XOR2XL U199 ( .A(b[6]), .B(n206), .Y(n247) );
  XOR2XL U200 ( .A(b[7]), .B(n206), .Y(n225) );
  XOR2XL U201 ( .A(b[7]), .B(n205), .Y(n234) );
  XOR2XL U202 ( .A(b[5]), .B(n204), .Y(n242) );
  XOR2XL U203 ( .A(b[6]), .B(n204), .Y(n243) );
  XOR2XL U204 ( .A(b[7]), .B(n204), .Y(n244) );
  ADDFX2 U205 ( .A(n17), .B(n202), .CI(n3), .CO(n2), .S(product[13]) );
  CLKINVX1 U206 ( .A(n15), .Y(n202) );
  CLKINVX1 U207 ( .A(n198), .Y(n203) );
  CLKINVX1 U208 ( .A(n21), .Y(n201) );
  INVX3 U209 ( .A(a[7]), .Y(n204) );
  CLKBUFX3 U210 ( .A(n235), .Y(n197) );
  XNOR2X1 U211 ( .A(a[6]), .B(a[5]), .Y(n235) );
  XNOR2X4 U212 ( .A(a[2]), .B(a[1]), .Y(n217) );
  NOR2X1 U213 ( .A(n208), .B(n203), .Y(product[0]) );
  OAI22XL U214 ( .A0(n212), .A1(n209), .B0(n213), .B1(n208), .Y(n84) );
  OAI22XL U215 ( .A0(n213), .A1(n209), .B0(n214), .B1(n208), .Y(n83) );
  XOR2X1 U216 ( .A(n190), .B(n207), .Y(n213) );
  OAI22XL U217 ( .A0(n214), .A1(n209), .B0(n215), .B1(n208), .Y(n82) );
  XOR2X1 U218 ( .A(b[5]), .B(n207), .Y(n214) );
  OAI2BB2XL U219 ( .B0(n215), .B1(n209), .A0N(n216), .A1N(a[0]), .Y(n81) );
  NOR2X1 U220 ( .A(n217), .B(n203), .Y(n79) );
  XOR2X1 U221 ( .A(n206), .B(n198), .Y(n218) );
  OAI22XL U222 ( .A0(n221), .A1(n219), .B0(n217), .B1(n222), .Y(n76) );
  OAI22XL U223 ( .A0(n222), .A1(n219), .B0(n217), .B1(n223), .Y(n75) );
  OAI22XL U224 ( .A0(n223), .A1(n219), .B0(n217), .B1(n224), .Y(n74) );
  AO21X1 U225 ( .A0(n219), .A1(n217), .B0(n225), .Y(n72) );
  NOR2X1 U226 ( .A(n189), .B(n203), .Y(n71) );
  XOR2X1 U227 ( .A(n205), .B(n198), .Y(n226) );
  OAI22XL U228 ( .A0(n228), .A1(n227), .B0(n189), .B1(n229), .Y(n69) );
  OAI22XL U229 ( .A0(n229), .A1(n227), .B0(n189), .B1(n230), .Y(n68) );
  OAI22XL U230 ( .A0(n230), .A1(n227), .B0(n189), .B1(n231), .Y(n67) );
  OAI22XL U231 ( .A0(n231), .A1(n227), .B0(n189), .B1(n232), .Y(n66) );
  OAI22XL U232 ( .A0(n232), .A1(n227), .B0(n189), .B1(n233), .Y(n65) );
  NOR2X1 U233 ( .A(n197), .B(n203), .Y(n63) );
  OAI22XL U234 ( .A0(n238), .A1(n237), .B0(n197), .B1(n239), .Y(n61) );
  OAI22XL U235 ( .A0(n239), .A1(n237), .B0(n197), .B1(n240), .Y(n60) );
  OAI22XL U236 ( .A0(n240), .A1(n237), .B0(n197), .B1(n241), .Y(n59) );
  OAI22XL U237 ( .A0(n241), .A1(n237), .B0(n197), .B1(n242), .Y(n58) );
  OAI22XL U238 ( .A0(n242), .A1(n237), .B0(n197), .B1(n243), .Y(n57) );
  AO21X1 U239 ( .A0(n237), .A1(n197), .B0(n244), .Y(n56) );
  OAI21XL U240 ( .A0(n198), .A1(n207), .B0(n209), .Y(n55) );
  OAI32X1 U241 ( .A0(n206), .A1(n198), .A2(n217), .B0(n206), .B1(n219), .Y(n54) );
  XOR2X1 U242 ( .A(n245), .B(n246), .Y(n35) );
  OA22X1 U243 ( .A0(n224), .A1(n219), .B0(n217), .B1(n247), .Y(n246) );
  XOR2X1 U244 ( .A(b[7]), .B(a[1]), .Y(n216) );
  OAI22XL U245 ( .A0(n217), .A1(n225), .B0(n247), .B1(n219), .Y(n29) );
  OAI22XL U246 ( .A0(n189), .A1(n234), .B0(n233), .B1(n227), .Y(n21) );
  XOR2X1 U247 ( .A(a[5]), .B(a[4]), .Y(n248) );
  OAI22XL U248 ( .A0(n197), .A1(n244), .B0(n243), .B1(n237), .Y(n15) );
  XOR2X1 U249 ( .A(a[7]), .B(a[6]), .Y(n249) );
endmodule


module CONV_DW_mult_tc_5 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254;

  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n204), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n203), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  BUFX12 U140 ( .A(n220), .Y(n198) );
  ADDFX2 U141 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  NOR2X4 U142 ( .A(n199), .B(n206), .Y(n71) );
  NOR2XL U143 ( .A(n198), .B(n206), .Y(n79) );
  INVX2 U144 ( .A(n201), .Y(n206) );
  BUFX6 U145 ( .A(a[2]), .Y(n189) );
  XOR2X1 U146 ( .A(b[5]), .B(n210), .Y(n217) );
  OAI22X1 U147 ( .A0(n223), .A1(n222), .B0(n198), .B1(n224), .Y(n77) );
  NAND2X8 U148 ( .A(n198), .B(n252), .Y(n222) );
  XOR2X1 U149 ( .A(b[2]), .B(n209), .Y(n224) );
  OAI22X1 U150 ( .A0(n230), .A1(n231), .B0(n199), .B1(n232), .Y(n70) );
  NAND2X8 U151 ( .A(n199), .B(n253), .Y(n231) );
  BUFX8 U152 ( .A(b[0]), .Y(n201) );
  XOR2X2 U153 ( .A(b[1]), .B(n210), .Y(n213) );
  OAI22X1 U154 ( .A0(n215), .A1(n212), .B0(n216), .B1(n211), .Y(n84) );
  XOR2X2 U155 ( .A(b[2]), .B(n210), .Y(n214) );
  INVX6 U156 ( .A(a[0]), .Y(n211) );
  INVX3 U157 ( .A(a[5]), .Y(n208) );
  ADDFXL U158 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  BUFX6 U159 ( .A(n229), .Y(n199) );
  ADDFX2 U160 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFX2 U161 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  NAND2X1 U162 ( .A(n191), .B(n192), .Y(n86) );
  INVX3 U163 ( .A(a[1]), .Y(n210) );
  AND2X2 U164 ( .A(n85), .B(n78), .Y(n190) );
  ADDFX2 U165 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDHX1 U166 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFHX4 U167 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  OAI22X1 U168 ( .A0(n217), .A1(n212), .B0(n218), .B1(n211), .Y(n82) );
  OAI2BB2X1 U169 ( .B0(n218), .B1(n212), .A0N(n219), .A1N(a[0]), .Y(n81) );
  OR2XL U170 ( .A(n198), .B(n223), .Y(n197) );
  XOR2X1 U171 ( .A(b[1]), .B(n209), .Y(n223) );
  ADDHX1 U172 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  OR2XL U173 ( .A(n213), .B(n212), .Y(n191) );
  OR2X1 U174 ( .A(n214), .B(n211), .Y(n192) );
  NAND2X4 U175 ( .A(a[1]), .B(n211), .Y(n212) );
  ADDFHX2 U176 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  NAND2X1 U177 ( .A(b[4]), .B(a[1]), .Y(n194) );
  NAND2XL U178 ( .A(n193), .B(n210), .Y(n195) );
  NAND2X2 U179 ( .A(n194), .B(n195), .Y(n216) );
  INVX1 U180 ( .A(b[4]), .Y(n193) );
  OAI22X1 U181 ( .A0(n216), .A1(n212), .B0(n217), .B1(n211), .Y(n83) );
  OAI22X1 U182 ( .A0(n214), .A1(n212), .B0(n215), .B1(n211), .Y(n85) );
  INVX6 U183 ( .A(a[3]), .Y(n209) );
  OAI22X1 U184 ( .A0(n201), .A1(n212), .B0(n213), .B1(n211), .Y(n87) );
  NAND2X2 U185 ( .A(n196), .B(n197), .Y(n78) );
  OR2X4 U186 ( .A(n221), .B(n222), .Y(n196) );
  ADDFX2 U187 ( .A(n49), .B(n190), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U188 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U189 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U190 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U191 ( .A(n17), .B(n205), .CI(n3), .CO(n2), .S(product[13]) );
  OAI22XL U192 ( .A0(n224), .A1(n222), .B0(n198), .B1(n225), .Y(n76) );
  XOR2X1 U193 ( .A(b[3]), .B(n210), .Y(n215) );
  XNOR2X2 U194 ( .A(n189), .B(a[1]), .Y(n220) );
  NAND2X4 U195 ( .A(n200), .B(n254), .Y(n241) );
  INVX1 U196 ( .A(n29), .Y(n203) );
  AO21XL U197 ( .A0(n241), .A1(n200), .B0(n248), .Y(n56) );
  NAND2BXL U198 ( .AN(n249), .B(n250), .Y(n34) );
  OAI2BB1XL U199 ( .A0N(n211), .A1N(n212), .B0(n219), .Y(n249) );
  INVX1 U200 ( .A(n21), .Y(n204) );
  XOR2XL U201 ( .A(b[1]), .B(n208), .Y(n232) );
  XOR2XL U202 ( .A(b[4]), .B(n209), .Y(n226) );
  XOR2XL U203 ( .A(b[2]), .B(n208), .Y(n233) );
  XOR2XL U204 ( .A(b[3]), .B(n208), .Y(n234) );
  XOR2XL U205 ( .A(b[1]), .B(n207), .Y(n242) );
  XOR2XL U206 ( .A(b[6]), .B(n210), .Y(n218) );
  XOR2XL U207 ( .A(b[7]), .B(a[1]), .Y(n219) );
  XOR2XL U208 ( .A(b[4]), .B(n208), .Y(n235) );
  XOR2XL U209 ( .A(b[2]), .B(n207), .Y(n243) );
  XOR2XL U210 ( .A(b[5]), .B(n208), .Y(n236) );
  XOR2XL U211 ( .A(b[5]), .B(n209), .Y(n227) );
  XOR2XL U212 ( .A(b[6]), .B(n209), .Y(n251) );
  XOR2XL U213 ( .A(b[7]), .B(n209), .Y(n228) );
  XOR2XL U214 ( .A(b[6]), .B(n208), .Y(n237) );
  XOR2XL U215 ( .A(b[6]), .B(n207), .Y(n247) );
  XOR2XL U216 ( .A(b[3]), .B(n207), .Y(n244) );
  XOR2XL U217 ( .A(b[4]), .B(n207), .Y(n245) );
  XOR2XL U218 ( .A(b[5]), .B(n207), .Y(n246) );
  XOR2XL U219 ( .A(b[7]), .B(n208), .Y(n238) );
  XOR2XL U220 ( .A(b[7]), .B(n207), .Y(n248) );
  XOR2X1 U221 ( .A(n85), .B(n78), .Y(n51) );
  XOR2XL U222 ( .A(n209), .B(n201), .Y(n221) );
  CLKINVX1 U223 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U224 ( .A(n15), .Y(n205) );
  XNOR2X1 U225 ( .A(a[4]), .B(a[3]), .Y(n229) );
  INVX3 U226 ( .A(a[7]), .Y(n207) );
  CLKBUFX3 U227 ( .A(n239), .Y(n200) );
  XNOR2X1 U228 ( .A(a[6]), .B(a[5]), .Y(n239) );
  NOR2X1 U229 ( .A(n211), .B(n206), .Y(product[0]) );
  OAI22XL U230 ( .A0(n225), .A1(n222), .B0(n198), .B1(n226), .Y(n75) );
  XOR2X1 U231 ( .A(b[3]), .B(n209), .Y(n225) );
  OAI22XL U232 ( .A0(n226), .A1(n222), .B0(n198), .B1(n227), .Y(n74) );
  AO21X1 U233 ( .A0(n222), .A1(n198), .B0(n228), .Y(n72) );
  XOR2X1 U234 ( .A(n208), .B(n201), .Y(n230) );
  OAI22XL U235 ( .A0(n232), .A1(n231), .B0(n199), .B1(n233), .Y(n69) );
  OAI22XL U236 ( .A0(n233), .A1(n231), .B0(n199), .B1(n234), .Y(n68) );
  OAI22XL U237 ( .A0(n234), .A1(n231), .B0(n199), .B1(n235), .Y(n67) );
  OAI22XL U238 ( .A0(n235), .A1(n231), .B0(n199), .B1(n236), .Y(n66) );
  OAI22XL U239 ( .A0(n236), .A1(n231), .B0(n199), .B1(n237), .Y(n65) );
  AO21X1 U240 ( .A0(n231), .A1(n199), .B0(n238), .Y(n64) );
  NOR2X1 U241 ( .A(n200), .B(n206), .Y(n63) );
  OAI22XL U242 ( .A0(n240), .A1(n241), .B0(n200), .B1(n242), .Y(n62) );
  XOR2X1 U243 ( .A(n207), .B(n201), .Y(n240) );
  OAI22XL U244 ( .A0(n242), .A1(n241), .B0(n200), .B1(n243), .Y(n61) );
  OAI22XL U245 ( .A0(n243), .A1(n241), .B0(n200), .B1(n244), .Y(n60) );
  OAI22XL U246 ( .A0(n244), .A1(n241), .B0(n200), .B1(n245), .Y(n59) );
  OAI22XL U247 ( .A0(n245), .A1(n241), .B0(n200), .B1(n246), .Y(n58) );
  OAI22XL U248 ( .A0(n246), .A1(n241), .B0(n200), .B1(n247), .Y(n57) );
  OAI21XL U249 ( .A0(n201), .A1(n210), .B0(n212), .Y(n55) );
  OAI32X1 U250 ( .A0(n209), .A1(n201), .A2(n198), .B0(n209), .B1(n222), .Y(n54) );
  OAI32X1 U251 ( .A0(n208), .A1(n201), .A2(n199), .B0(n208), .B1(n231), .Y(n53) );
  OAI32X1 U252 ( .A0(n207), .A1(n201), .A2(n200), .B0(n207), .B1(n241), .Y(n52) );
  XOR2X1 U253 ( .A(n249), .B(n250), .Y(n35) );
  OA22X1 U254 ( .A0(n227), .A1(n222), .B0(n198), .B1(n251), .Y(n250) );
  OAI22XL U255 ( .A0(n198), .A1(n228), .B0(n251), .B1(n222), .Y(n29) );
  XOR2X1 U256 ( .A(a[3]), .B(n189), .Y(n252) );
  OAI22XL U257 ( .A0(n199), .A1(n238), .B0(n237), .B1(n231), .Y(n21) );
  XOR2X1 U258 ( .A(a[5]), .B(a[4]), .Y(n253) );
  OAI22XL U259 ( .A0(n200), .A1(n248), .B0(n247), .B1(n241), .Y(n15) );
  XOR2X1 U260 ( .A(a[7]), .B(a[6]), .Y(n254) );
endmodule


module CONV_DW_mult_tc_4 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48,
         n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77, n78,
         n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256;

  ADDFXL U3 ( .A(n17), .B(n207), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n206), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n205), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n190), .S(n43), 
        .ICO(n41), .CO(n42) );
  OAI21X1 U140 ( .A0(n203), .A1(n212), .B0(n214), .Y(n55) );
  NAND2X4 U141 ( .A(a[1]), .B(n213), .Y(n214) );
  BUFX4 U142 ( .A(n241), .Y(n202) );
  OR2X1 U143 ( .A(n201), .B(n234), .Y(n197) );
  INVX3 U144 ( .A(a[0]), .Y(n213) );
  OAI22X1 U145 ( .A0(n218), .A1(n214), .B0(n219), .B1(n213), .Y(n83) );
  OAI22XL U146 ( .A0(n219), .A1(n214), .B0(n220), .B1(n213), .Y(n82) );
  XOR2X1 U147 ( .A(b[2]), .B(n211), .Y(n226) );
  XOR2X1 U148 ( .A(b[4]), .B(n212), .Y(n218) );
  XOR2X1 U149 ( .A(b[5]), .B(n212), .Y(n219) );
  INVX3 U150 ( .A(a[5]), .Y(n210) );
  CLKBUFX3 U151 ( .A(b[3]), .Y(n191) );
  OR2X2 U152 ( .A(n215), .B(n213), .Y(n195) );
  BUFX8 U153 ( .A(b[0]), .Y(n203) );
  XOR2X1 U154 ( .A(b[2]), .B(n210), .Y(n235) );
  XOR2X1 U155 ( .A(b[2]), .B(n209), .Y(n245) );
  BUFX4 U156 ( .A(n231), .Y(n201) );
  NAND2X4 U157 ( .A(n222), .B(n254), .Y(n224) );
  ADDFHX1 U158 ( .A(n49), .B(n189), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFHX1 U159 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  XOR2X1 U160 ( .A(b[4]), .B(n211), .Y(n228) );
  AND2X2 U161 ( .A(n85), .B(n78), .Y(n189) );
  AND2X2 U162 ( .A(n70), .B(n53), .Y(n190) );
  ADDFHX1 U163 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  OAI22X1 U164 ( .A0(n215), .A1(n214), .B0(n216), .B1(n213), .Y(n86) );
  ADDFHX2 U165 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  INVX8 U166 ( .A(a[1]), .Y(n212) );
  XOR2X4 U167 ( .A(n85), .B(n78), .Y(n51) );
  NAND2X2 U168 ( .A(n198), .B(n199), .Y(n78) );
  ADDFHX2 U169 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  OAI22X1 U170 ( .A0(n217), .A1(n214), .B0(n218), .B1(n213), .Y(n84) );
  ADDFHX4 U171 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  BUFX6 U172 ( .A(a[2]), .Y(n192) );
  BUFX6 U173 ( .A(b[1]), .Y(n193) );
  XOR2X2 U174 ( .A(n192), .B(a[1]), .Y(n200) );
  OR2X2 U175 ( .A(n203), .B(n214), .Y(n194) );
  NAND2X4 U176 ( .A(n194), .B(n195), .Y(n87) );
  ADDHX2 U177 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFHX2 U178 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  OR2X2 U179 ( .A(n232), .B(n233), .Y(n196) );
  NAND2X4 U180 ( .A(n196), .B(n197), .Y(n70) );
  XOR2X4 U181 ( .A(n70), .B(n53), .Y(n47) );
  XOR2XL U182 ( .A(n210), .B(n203), .Y(n232) );
  NAND2X8 U183 ( .A(n201), .B(n255), .Y(n233) );
  OAI32X4 U184 ( .A0(n210), .A1(n203), .A2(n201), .B0(n210), .B1(n233), .Y(n53) );
  OR2X1 U185 ( .A(n223), .B(n224), .Y(n198) );
  OR2XL U186 ( .A(n222), .B(n225), .Y(n199) );
  XOR2XL U187 ( .A(n211), .B(n203), .Y(n223) );
  INVX8 U188 ( .A(n200), .Y(n222) );
  OAI22X1 U189 ( .A0(n216), .A1(n214), .B0(n217), .B1(n213), .Y(n85) );
  INVX4 U190 ( .A(a[3]), .Y(n211) );
  ADDFX1 U191 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U192 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U193 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U194 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U195 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  XOR2X1 U196 ( .A(n193), .B(n211), .Y(n225) );
  XOR2X1 U197 ( .A(b[6]), .B(n212), .Y(n220) );
  NAND2X2 U198 ( .A(n202), .B(n256), .Y(n243) );
  INVX1 U199 ( .A(n29), .Y(n205) );
  NOR2XL U200 ( .A(n202), .B(n208), .Y(n63) );
  NOR2XL U201 ( .A(n213), .B(n208), .Y(product[0]) );
  NAND2BXL U202 ( .AN(n251), .B(n252), .Y(n34) );
  OAI2BB1XL U203 ( .A0N(n213), .A1N(n214), .B0(n221), .Y(n251) );
  INVX1 U204 ( .A(n21), .Y(n206) );
  XOR2XL U205 ( .A(n193), .B(n210), .Y(n234) );
  XOR2XL U206 ( .A(n191), .B(n211), .Y(n227) );
  XOR2XL U207 ( .A(n191), .B(n210), .Y(n236) );
  XOR2XL U208 ( .A(n193), .B(n209), .Y(n244) );
  XOR2XL U209 ( .A(b[5]), .B(n211), .Y(n229) );
  XOR2XL U210 ( .A(b[7]), .B(a[1]), .Y(n221) );
  XOR2XL U211 ( .A(b[6]), .B(n210), .Y(n239) );
  XOR2XL U212 ( .A(b[4]), .B(n210), .Y(n237) );
  XOR2XL U213 ( .A(b[5]), .B(n210), .Y(n238) );
  XOR2XL U214 ( .A(n191), .B(n209), .Y(n246) );
  XOR2XL U215 ( .A(b[4]), .B(n209), .Y(n247) );
  XOR2XL U216 ( .A(b[6]), .B(n211), .Y(n253) );
  XOR2XL U217 ( .A(b[7]), .B(n211), .Y(n230) );
  XOR2XL U218 ( .A(b[7]), .B(n210), .Y(n240) );
  XOR2XL U219 ( .A(b[6]), .B(n209), .Y(n249) );
  XOR2XL U220 ( .A(b[5]), .B(n209), .Y(n248) );
  XOR2XL U221 ( .A(b[7]), .B(n209), .Y(n250) );
  CLKINVX1 U222 ( .A(n15), .Y(n207) );
  CLKINVX1 U223 ( .A(n1), .Y(product[15]) );
  ADDFXL U224 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  CLKINVX1 U225 ( .A(n203), .Y(n208) );
  XNOR2X1 U226 ( .A(a[4]), .B(a[3]), .Y(n231) );
  XNOR2X1 U227 ( .A(a[6]), .B(a[5]), .Y(n241) );
  INVX3 U228 ( .A(a[7]), .Y(n209) );
  XOR2X1 U229 ( .A(n193), .B(n212), .Y(n215) );
  XOR2X1 U230 ( .A(b[2]), .B(n212), .Y(n216) );
  XOR2X1 U231 ( .A(n191), .B(n212), .Y(n217) );
  OAI2BB2XL U232 ( .B0(n220), .B1(n214), .A0N(n221), .A1N(a[0]), .Y(n81) );
  NOR2X1 U233 ( .A(n222), .B(n208), .Y(n79) );
  OAI22XL U234 ( .A0(n225), .A1(n224), .B0(n222), .B1(n226), .Y(n77) );
  OAI22XL U235 ( .A0(n226), .A1(n224), .B0(n222), .B1(n227), .Y(n76) );
  OAI22XL U236 ( .A0(n227), .A1(n224), .B0(n222), .B1(n228), .Y(n75) );
  OAI22XL U237 ( .A0(n228), .A1(n224), .B0(n222), .B1(n229), .Y(n74) );
  AO21X1 U238 ( .A0(n224), .A1(n222), .B0(n230), .Y(n72) );
  NOR2X1 U239 ( .A(n201), .B(n208), .Y(n71) );
  OAI22XL U240 ( .A0(n234), .A1(n233), .B0(n201), .B1(n235), .Y(n69) );
  OAI22XL U241 ( .A0(n235), .A1(n233), .B0(n201), .B1(n236), .Y(n68) );
  OAI22XL U242 ( .A0(n236), .A1(n233), .B0(n201), .B1(n237), .Y(n67) );
  OAI22XL U243 ( .A0(n237), .A1(n233), .B0(n201), .B1(n238), .Y(n66) );
  OAI22XL U244 ( .A0(n238), .A1(n233), .B0(n201), .B1(n239), .Y(n65) );
  AO21X1 U245 ( .A0(n233), .A1(n201), .B0(n240), .Y(n64) );
  OAI22XL U246 ( .A0(n242), .A1(n243), .B0(n202), .B1(n244), .Y(n62) );
  XOR2X1 U247 ( .A(n209), .B(n203), .Y(n242) );
  OAI22XL U248 ( .A0(n244), .A1(n243), .B0(n202), .B1(n245), .Y(n61) );
  OAI22XL U249 ( .A0(n245), .A1(n243), .B0(n202), .B1(n246), .Y(n60) );
  OAI22XL U250 ( .A0(n246), .A1(n243), .B0(n202), .B1(n247), .Y(n59) );
  OAI22XL U251 ( .A0(n247), .A1(n243), .B0(n202), .B1(n248), .Y(n58) );
  OAI22XL U252 ( .A0(n248), .A1(n243), .B0(n202), .B1(n249), .Y(n57) );
  AO21X1 U253 ( .A0(n243), .A1(n202), .B0(n250), .Y(n56) );
  OAI32X1 U254 ( .A0(n211), .A1(n203), .A2(n222), .B0(n211), .B1(n224), .Y(n54) );
  OAI32X1 U255 ( .A0(n209), .A1(n203), .A2(n202), .B0(n209), .B1(n243), .Y(n52) );
  XOR2X1 U256 ( .A(n251), .B(n252), .Y(n35) );
  OA22X1 U257 ( .A0(n229), .A1(n224), .B0(n222), .B1(n253), .Y(n252) );
  OAI22XL U258 ( .A0(n222), .A1(n230), .B0(n253), .B1(n224), .Y(n29) );
  XOR2X1 U259 ( .A(a[3]), .B(n192), .Y(n254) );
  OAI22XL U260 ( .A0(n201), .A1(n240), .B0(n239), .B1(n233), .Y(n21) );
  XOR2X1 U261 ( .A(a[5]), .B(a[4]), .Y(n255) );
  OAI22XL U262 ( .A0(n202), .A1(n250), .B0(n249), .B1(n243), .Y(n15) );
  XOR2X1 U263 ( .A(a[7]), .B(a[6]), .Y(n256) );
endmodule


module CONV_DW_mult_tc_3 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247;

  ADDFXL U3 ( .A(n17), .B(n199), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n198), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  INVX1 U140 ( .A(n195), .Y(n200) );
  CLKBUFX3 U141 ( .A(b[1]), .Y(n190) );
  BUFX6 U142 ( .A(b[0]), .Y(n195) );
  ADDHXL U143 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKBUFX3 U144 ( .A(b[4]), .Y(n192) );
  CLKBUFX3 U145 ( .A(b[3]), .Y(n191) );
  INVX3 U146 ( .A(a[3]), .Y(n203) );
  OAI22X1 U147 ( .A0(n207), .A1(n206), .B0(n208), .B1(n205), .Y(n86) );
  XOR2X1 U148 ( .A(n190), .B(n202), .Y(n225) );
  INVX3 U149 ( .A(a[5]), .Y(n202) );
  ADDHX1 U150 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U151 ( .A0(n214), .A1(n215), .B0(n189), .B1(n216), .Y(n78) );
  ADDFX2 U152 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  XOR2X2 U153 ( .A(b[2]), .B(n204), .Y(n208) );
  INVX3 U154 ( .A(a[0]), .Y(n205) );
  XNOR2X4 U155 ( .A(a[2]), .B(a[1]), .Y(n189) );
  OAI22X1 U156 ( .A0(n195), .A1(n206), .B0(n207), .B1(n205), .Y(n87) );
  CLKXOR2X2 U157 ( .A(n190), .B(n204), .Y(n207) );
  NAND2X4 U158 ( .A(n193), .B(n246), .Y(n224) );
  OAI22X1 U159 ( .A0(n211), .A1(n206), .B0(n212), .B1(n205), .Y(n82) );
  OAI21XL U160 ( .A0(n195), .A1(n204), .B0(n206), .Y(n55) );
  NAND2X4 U161 ( .A(a[1]), .B(n205), .Y(n206) );
  NAND2X4 U162 ( .A(n189), .B(n245), .Y(n215) );
  XOR2X1 U163 ( .A(b[5]), .B(n204), .Y(n211) );
  OAI22X1 U164 ( .A0(n208), .A1(n206), .B0(n209), .B1(n205), .Y(n85) );
  ADDFX1 U165 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHX1 U166 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  OAI22X1 U167 ( .A0(n209), .A1(n206), .B0(n210), .B1(n205), .Y(n84) );
  ADDFHX4 U168 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  OAI22X2 U169 ( .A0(n216), .A1(n215), .B0(n189), .B1(n217), .Y(n77) );
  XOR2X1 U170 ( .A(n190), .B(n203), .Y(n216) );
  ADDFX2 U171 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDFHX2 U172 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  INVX2 U173 ( .A(a[1]), .Y(n204) );
  ADDFXL U174 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U175 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDHXL U176 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  XOR2X1 U177 ( .A(n192), .B(n204), .Y(n210) );
  NAND2X2 U178 ( .A(n194), .B(n247), .Y(n234) );
  INVX1 U179 ( .A(n29), .Y(n197) );
  AO21XL U180 ( .A0(n234), .A1(n194), .B0(n241), .Y(n56) );
  OAI32XL U181 ( .A0(n201), .A1(n195), .A2(n194), .B0(n201), .B1(n234), .Y(n52) );
  XOR2XL U182 ( .A(n201), .B(n195), .Y(n233) );
  NAND2BXL U183 ( .AN(n242), .B(n243), .Y(n34) );
  OAI2BB1XL U184 ( .A0N(n205), .A1N(n206), .B0(n213), .Y(n242) );
  BUFX8 U185 ( .A(n222), .Y(n193) );
  XOR2XL U186 ( .A(n191), .B(n203), .Y(n218) );
  XOR2XL U187 ( .A(n192), .B(n203), .Y(n219) );
  XOR2XL U188 ( .A(b[2]), .B(n202), .Y(n226) );
  XOR2XL U189 ( .A(n191), .B(n202), .Y(n227) );
  XOR2XL U190 ( .A(n190), .B(n201), .Y(n235) );
  XOR2XL U191 ( .A(b[6]), .B(n204), .Y(n212) );
  XOR2XL U192 ( .A(b[7]), .B(a[1]), .Y(n213) );
  XOR2XL U193 ( .A(b[6]), .B(n202), .Y(n230) );
  XOR2XL U194 ( .A(n192), .B(n202), .Y(n228) );
  XOR2XL U195 ( .A(b[2]), .B(n201), .Y(n236) );
  XOR2XL U196 ( .A(b[5]), .B(n202), .Y(n229) );
  XOR2XL U197 ( .A(n191), .B(n201), .Y(n237) );
  XOR2XL U198 ( .A(b[5]), .B(n203), .Y(n220) );
  XOR2XL U199 ( .A(b[6]), .B(n203), .Y(n244) );
  XOR2XL U200 ( .A(b[7]), .B(n203), .Y(n221) );
  XOR2XL U201 ( .A(b[7]), .B(n202), .Y(n231) );
  XOR2XL U202 ( .A(b[6]), .B(n201), .Y(n240) );
  XOR2XL U203 ( .A(n192), .B(n201), .Y(n238) );
  XOR2XL U204 ( .A(b[5]), .B(n201), .Y(n239) );
  XOR2XL U205 ( .A(b[7]), .B(n201), .Y(n241) );
  CLKINVX1 U206 ( .A(n15), .Y(n199) );
  ADDFXL U207 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  CLKINVX1 U208 ( .A(n1), .Y(product[15]) );
  ADDFXL U209 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U210 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  CLKINVX1 U211 ( .A(n21), .Y(n198) );
  XNOR2X1 U212 ( .A(a[4]), .B(a[3]), .Y(n222) );
  INVX3 U213 ( .A(a[7]), .Y(n201) );
  CLKBUFX3 U214 ( .A(n232), .Y(n194) );
  XNOR2X1 U215 ( .A(a[6]), .B(a[5]), .Y(n232) );
  NOR2X1 U216 ( .A(n205), .B(n200), .Y(product[0]) );
  XOR2X1 U217 ( .A(n191), .B(n204), .Y(n209) );
  OAI22XL U218 ( .A0(n210), .A1(n206), .B0(n211), .B1(n205), .Y(n83) );
  OAI2BB2XL U219 ( .B0(n212), .B1(n206), .A0N(n213), .A1N(a[0]), .Y(n81) );
  NOR2X1 U220 ( .A(n189), .B(n200), .Y(n79) );
  XOR2X1 U221 ( .A(n203), .B(n195), .Y(n214) );
  OAI22XL U222 ( .A0(n217), .A1(n215), .B0(n189), .B1(n218), .Y(n76) );
  XOR2X1 U223 ( .A(b[2]), .B(n203), .Y(n217) );
  OAI22XL U224 ( .A0(n218), .A1(n215), .B0(n189), .B1(n219), .Y(n75) );
  OAI22XL U225 ( .A0(n219), .A1(n215), .B0(n189), .B1(n220), .Y(n74) );
  AO21X1 U226 ( .A0(n215), .A1(n189), .B0(n221), .Y(n72) );
  NOR2X1 U227 ( .A(n193), .B(n200), .Y(n71) );
  OAI22XL U228 ( .A0(n223), .A1(n224), .B0(n193), .B1(n225), .Y(n70) );
  XOR2X1 U229 ( .A(n202), .B(n195), .Y(n223) );
  OAI22XL U230 ( .A0(n225), .A1(n224), .B0(n193), .B1(n226), .Y(n69) );
  OAI22XL U231 ( .A0(n226), .A1(n224), .B0(n193), .B1(n227), .Y(n68) );
  OAI22XL U232 ( .A0(n227), .A1(n224), .B0(n193), .B1(n228), .Y(n67) );
  OAI22XL U233 ( .A0(n228), .A1(n224), .B0(n193), .B1(n229), .Y(n66) );
  OAI22XL U234 ( .A0(n229), .A1(n224), .B0(n193), .B1(n230), .Y(n65) );
  AO21X1 U235 ( .A0(n224), .A1(n193), .B0(n231), .Y(n64) );
  NOR2X1 U236 ( .A(n194), .B(n200), .Y(n63) );
  OAI22XL U237 ( .A0(n233), .A1(n234), .B0(n194), .B1(n235), .Y(n62) );
  OAI22XL U238 ( .A0(n235), .A1(n234), .B0(n194), .B1(n236), .Y(n61) );
  OAI22XL U239 ( .A0(n236), .A1(n234), .B0(n194), .B1(n237), .Y(n60) );
  OAI22XL U240 ( .A0(n237), .A1(n234), .B0(n194), .B1(n238), .Y(n59) );
  OAI22XL U241 ( .A0(n238), .A1(n234), .B0(n194), .B1(n239), .Y(n58) );
  OAI22XL U242 ( .A0(n239), .A1(n234), .B0(n194), .B1(n240), .Y(n57) );
  OAI32X1 U243 ( .A0(n203), .A1(n195), .A2(n189), .B0(n203), .B1(n215), .Y(n54) );
  OAI32X1 U244 ( .A0(n202), .A1(n195), .A2(n193), .B0(n202), .B1(n224), .Y(n53) );
  XOR2X1 U245 ( .A(n242), .B(n243), .Y(n35) );
  OA22X1 U246 ( .A0(n220), .A1(n215), .B0(n189), .B1(n244), .Y(n243) );
  OAI22XL U247 ( .A0(n189), .A1(n221), .B0(n244), .B1(n215), .Y(n29) );
  XOR2X1 U248 ( .A(a[3]), .B(a[2]), .Y(n245) );
  OAI22XL U249 ( .A0(n193), .A1(n231), .B0(n230), .B1(n224), .Y(n21) );
  XOR2X1 U250 ( .A(a[5]), .B(a[4]), .Y(n246) );
  OAI22XL U251 ( .A0(n194), .A1(n241), .B0(n240), .B1(n234), .Y(n15) );
  XOR2X1 U252 ( .A(a[7]), .B(a[6]), .Y(n247) );
endmodule


module CONV_DW_mult_tc_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246;

  ADDFXL U3 ( .A(n17), .B(n199), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n198), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  XOR2XL U140 ( .A(b[4]), .B(n203), .Y(n220) );
  ADDFHX2 U141 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  OAI22X1 U142 ( .A0(n223), .A1(n224), .B0(n189), .B1(n225), .Y(n70) );
  NAND2X4 U143 ( .A(n189), .B(n245), .Y(n224) );
  ADDFX2 U144 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  XOR2X1 U145 ( .A(b[1]), .B(n202), .Y(n225) );
  XOR2X1 U146 ( .A(b[5]), .B(n204), .Y(n211) );
  XOR2X2 U147 ( .A(b[1]), .B(n204), .Y(n207) );
  ADDFXL U148 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDFXL U149 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  CMPR42X1 U150 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), 
        .ICO(n36), .CO(n37) );
  ADDFX2 U151 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFHX2 U152 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  XNOR2X4 U153 ( .A(a[4]), .B(a[3]), .Y(n189) );
  NAND2X4 U154 ( .A(a[1]), .B(n205), .Y(n206) );
  CLKBUFX3 U155 ( .A(b[3]), .Y(n190) );
  CMPR42X2 U156 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  OAI22X1 U157 ( .A0(n211), .A1(n206), .B0(n212), .B1(n205), .Y(n82) );
  OAI22X1 U158 ( .A0(n210), .A1(n206), .B0(n211), .B1(n205), .Y(n83) );
  XOR2X1 U159 ( .A(b[4]), .B(n204), .Y(n210) );
  ADDHX1 U160 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  OAI22X1 U161 ( .A0(n218), .A1(n216), .B0(n193), .B1(n219), .Y(n76) );
  XOR2X1 U162 ( .A(n191), .B(n203), .Y(n218) );
  XOR2X1 U163 ( .A(n190), .B(n203), .Y(n219) );
  OAI22X1 U164 ( .A0(n215), .A1(n216), .B0(n193), .B1(n217), .Y(n78) );
  NAND2X6 U165 ( .A(n193), .B(n192), .Y(n216) );
  OAI22X1 U166 ( .A0(n208), .A1(n206), .B0(n209), .B1(n205), .Y(n85) );
  ADDFHX2 U167 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHX1 U168 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  BUFX6 U169 ( .A(b[2]), .Y(n191) );
  XOR2X1 U170 ( .A(b[1]), .B(n201), .Y(n235) );
  XOR2X1 U171 ( .A(b[1]), .B(n203), .Y(n217) );
  CLKINVX8 U172 ( .A(a[0]), .Y(n205) );
  XOR2XL U173 ( .A(n203), .B(n195), .Y(n215) );
  NAND2X2 U174 ( .A(n194), .B(n246), .Y(n234) );
  INVX6 U175 ( .A(a[5]), .Y(n202) );
  BUFX6 U176 ( .A(b[0]), .Y(n195) );
  INVX1 U177 ( .A(n29), .Y(n197) );
  ADDHX1 U178 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI2BB1XL U179 ( .A0N(n205), .A1N(n206), .B0(n213), .Y(n242) );
  INVX12 U180 ( .A(a[1]), .Y(n204) );
  CLKXOR2X2 U181 ( .A(a[3]), .B(a[2]), .Y(n192) );
  XOR2XL U182 ( .A(n191), .B(n201), .Y(n236) );
  XOR2XL U183 ( .A(n190), .B(n201), .Y(n237) );
  XOR2XL U184 ( .A(b[4]), .B(n201), .Y(n238) );
  XOR2XL U185 ( .A(b[5]), .B(n203), .Y(n221) );
  XOR2XL U186 ( .A(b[6]), .B(n203), .Y(n244) );
  XOR2XL U187 ( .A(b[7]), .B(n203), .Y(n222) );
  XOR2XL U188 ( .A(b[5]), .B(n201), .Y(n239) );
  XOR2XL U189 ( .A(b[6]), .B(n201), .Y(n240) );
  XOR2XL U190 ( .A(b[7]), .B(n201), .Y(n241) );
  CLKINVX1 U191 ( .A(n15), .Y(n199) );
  CLKINVX1 U192 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U193 ( .A(n195), .Y(n200) );
  CLKINVX1 U194 ( .A(n21), .Y(n198) );
  INVX3 U195 ( .A(a[3]), .Y(n203) );
  BUFX20 U196 ( .A(n214), .Y(n193) );
  CLKBUFX3 U197 ( .A(n232), .Y(n194) );
  XNOR2X1 U198 ( .A(a[6]), .B(a[5]), .Y(n232) );
  INVX3 U199 ( .A(a[7]), .Y(n201) );
  OAI22X1 U200 ( .A0(n209), .A1(n206), .B0(n210), .B1(n205), .Y(n84) );
  XNOR2X4 U201 ( .A(a[2]), .B(a[1]), .Y(n214) );
  NOR2X1 U202 ( .A(n205), .B(n200), .Y(product[0]) );
  OAI22XL U203 ( .A0(n195), .A1(n206), .B0(n207), .B1(n205), .Y(n87) );
  OAI22XL U204 ( .A0(n207), .A1(n206), .B0(n208), .B1(n205), .Y(n86) );
  XOR2X1 U205 ( .A(n191), .B(n204), .Y(n208) );
  XOR2X1 U206 ( .A(n190), .B(n204), .Y(n209) );
  OAI2BB2XL U207 ( .B0(n212), .B1(n206), .A0N(n213), .A1N(a[0]), .Y(n81) );
  XOR2X1 U208 ( .A(b[6]), .B(n204), .Y(n212) );
  NOR2X1 U209 ( .A(n193), .B(n200), .Y(n79) );
  OAI22XL U210 ( .A0(n217), .A1(n216), .B0(n193), .B1(n218), .Y(n77) );
  OAI22XL U211 ( .A0(n219), .A1(n216), .B0(n193), .B1(n220), .Y(n75) );
  OAI22XL U212 ( .A0(n220), .A1(n216), .B0(n193), .B1(n221), .Y(n74) );
  AO21X1 U213 ( .A0(n216), .A1(n193), .B0(n222), .Y(n72) );
  NOR2X1 U214 ( .A(n189), .B(n200), .Y(n71) );
  XOR2X1 U215 ( .A(n202), .B(n195), .Y(n223) );
  OAI22XL U216 ( .A0(n225), .A1(n224), .B0(n189), .B1(n226), .Y(n69) );
  OAI22XL U217 ( .A0(n226), .A1(n224), .B0(n189), .B1(n227), .Y(n68) );
  XOR2X1 U218 ( .A(n191), .B(n202), .Y(n226) );
  OAI22XL U219 ( .A0(n227), .A1(n224), .B0(n189), .B1(n228), .Y(n67) );
  XOR2X1 U220 ( .A(n190), .B(n202), .Y(n227) );
  OAI22XL U221 ( .A0(n228), .A1(n224), .B0(n189), .B1(n229), .Y(n66) );
  XOR2X1 U222 ( .A(b[4]), .B(n202), .Y(n228) );
  OAI22XL U223 ( .A0(n229), .A1(n224), .B0(n189), .B1(n230), .Y(n65) );
  XOR2X1 U224 ( .A(b[5]), .B(n202), .Y(n229) );
  AO21X1 U225 ( .A0(n224), .A1(n189), .B0(n231), .Y(n64) );
  NOR2X1 U226 ( .A(n194), .B(n200), .Y(n63) );
  OAI22XL U227 ( .A0(n233), .A1(n234), .B0(n194), .B1(n235), .Y(n62) );
  XOR2X1 U228 ( .A(n201), .B(n195), .Y(n233) );
  OAI22XL U229 ( .A0(n235), .A1(n234), .B0(n194), .B1(n236), .Y(n61) );
  OAI22XL U230 ( .A0(n236), .A1(n234), .B0(n194), .B1(n237), .Y(n60) );
  OAI22XL U231 ( .A0(n237), .A1(n234), .B0(n194), .B1(n238), .Y(n59) );
  OAI22XL U232 ( .A0(n238), .A1(n234), .B0(n194), .B1(n239), .Y(n58) );
  OAI22XL U233 ( .A0(n239), .A1(n234), .B0(n194), .B1(n240), .Y(n57) );
  AO21X1 U234 ( .A0(n234), .A1(n194), .B0(n241), .Y(n56) );
  OAI21XL U235 ( .A0(n195), .A1(n204), .B0(n206), .Y(n55) );
  OAI32X1 U236 ( .A0(n203), .A1(n195), .A2(n193), .B0(n203), .B1(n216), .Y(n54) );
  OAI32X1 U237 ( .A0(n202), .A1(n195), .A2(n189), .B0(n202), .B1(n224), .Y(n53) );
  OAI32X1 U238 ( .A0(n201), .A1(n195), .A2(n194), .B0(n201), .B1(n234), .Y(n52) );
  XOR2X1 U239 ( .A(n242), .B(n243), .Y(n35) );
  NAND2BX1 U240 ( .AN(n242), .B(n243), .Y(n34) );
  OA22X1 U241 ( .A0(n221), .A1(n216), .B0(n193), .B1(n244), .Y(n243) );
  XOR2X1 U242 ( .A(b[7]), .B(a[1]), .Y(n213) );
  OAI22XL U243 ( .A0(n193), .A1(n222), .B0(n244), .B1(n216), .Y(n29) );
  OAI22XL U244 ( .A0(n189), .A1(n231), .B0(n230), .B1(n224), .Y(n21) );
  XOR2X1 U245 ( .A(a[5]), .B(a[4]), .Y(n245) );
  XOR2X1 U246 ( .A(b[6]), .B(n202), .Y(n230) );
  XOR2X1 U247 ( .A(b[7]), .B(n202), .Y(n231) );
  OAI22XL U248 ( .A0(n194), .A1(n241), .B0(n240), .B1(n234), .Y(n15) );
  XOR2X1 U249 ( .A(a[7]), .B(a[6]), .Y(n246) );
endmodule


module CONV_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268;

  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n218), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n217), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n189), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  NAND2X4 U140 ( .A(n213), .B(n267), .Y(n245) );
  XOR2X1 U141 ( .A(b[3]), .B(n223), .Y(n239) );
  OAI22X1 U142 ( .A0(n256), .A1(n255), .B0(n214), .B1(n257), .Y(n61) );
  BUFX4 U143 ( .A(n253), .Y(n214) );
  CLKXOR2X1 U144 ( .A(b[1]), .B(n221), .Y(n256) );
  OAI22X1 U145 ( .A0(n240), .A1(n236), .B0(n234), .B1(n241), .Y(n74) );
  XOR2X1 U146 ( .A(b[4]), .B(n223), .Y(n240) );
  NAND2X6 U147 ( .A(n214), .B(n268), .Y(n255) );
  INVX8 U148 ( .A(n224), .Y(n203) );
  NAND2X4 U149 ( .A(n202), .B(n224), .Y(n205) );
  OAI21X1 U150 ( .A0(n215), .A1(n224), .B0(n226), .Y(n55) );
  XOR2X1 U151 ( .A(b[3]), .B(n224), .Y(n229) );
  XOR2X4 U152 ( .A(b[5]), .B(n224), .Y(n231) );
  INVX8 U153 ( .A(a[1]), .Y(n224) );
  CLKXOR2X2 U154 ( .A(a[3]), .B(n192), .Y(n266) );
  BUFX8 U155 ( .A(n40), .Y(n189) );
  ADDHX1 U156 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  BUFX6 U157 ( .A(a[2]), .Y(n192) );
  NAND2X4 U158 ( .A(n48), .B(n11), .Y(n199) );
  XOR2X2 U159 ( .A(b[2]), .B(n223), .Y(n238) );
  INVX6 U160 ( .A(a[3]), .Y(n223) );
  OAI32X4 U161 ( .A0(n223), .A1(n215), .A2(n234), .B0(n223), .B1(n236), .Y(n54) );
  NAND2X1 U162 ( .A(n194), .B(n223), .Y(n196) );
  INVX6 U163 ( .A(a[0]), .Y(n225) );
  CMPR22X2 U164 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  NAND2X4 U165 ( .A(n200), .B(n201), .Y(n70) );
  OR2XL U166 ( .A(n213), .B(n246), .Y(n201) );
  ADDFHX2 U167 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  NAND3X4 U168 ( .A(n197), .B(n198), .C(n199), .Y(n10) );
  NAND2X2 U169 ( .A(n48), .B(n45), .Y(n198) );
  NAND2X2 U170 ( .A(n11), .B(n45), .Y(n197) );
  INVX3 U171 ( .A(a[5]), .Y(n222) );
  XOR2X1 U172 ( .A(b[7]), .B(a[1]), .Y(n233) );
  ADDFX2 U173 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDFX2 U174 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFX2 U175 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  CLKINVX1 U176 ( .A(n193), .Y(n79) );
  NAND2BX1 U177 ( .AN(n234), .B(n215), .Y(n193) );
  AND2X2 U178 ( .A(n85), .B(n78), .Y(n190) );
  OAI22XL U179 ( .A0(n239), .A1(n236), .B0(n234), .B1(n240), .Y(n75) );
  ADDHX1 U180 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OAI22X1 U181 ( .A0(n254), .A1(n255), .B0(n214), .B1(n256), .Y(n62) );
  CLKBUFX3 U182 ( .A(b[6]), .Y(n191) );
  XOR2X1 U183 ( .A(b[4]), .B(n224), .Y(n230) );
  OAI22X1 U184 ( .A0(n247), .A1(n245), .B0(n213), .B1(n248), .Y(n68) );
  OAI22X1 U185 ( .A0(n229), .A1(n226), .B0(n230), .B1(n225), .Y(n84) );
  INVX1 U186 ( .A(n215), .Y(n220) );
  ADDFHX4 U187 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  NAND2XL U188 ( .A(b[1]), .B(a[3]), .Y(n195) );
  NAND2X2 U189 ( .A(n195), .B(n196), .Y(n237) );
  INVXL U190 ( .A(b[1]), .Y(n194) );
  XOR3X2 U191 ( .A(n45), .B(n48), .C(n11), .Y(product[5]) );
  ADDFHX4 U192 ( .A(n49), .B(n190), .CI(n12), .CO(n11), .S(product[4]) );
  OR2X2 U193 ( .A(n244), .B(n245), .Y(n200) );
  XOR2XL U194 ( .A(n222), .B(n215), .Y(n244) );
  BUFX12 U195 ( .A(n243), .Y(n213) );
  XOR2X1 U196 ( .A(b[1]), .B(n222), .Y(n246) );
  NAND2BX2 U197 ( .AN(b[1]), .B(n224), .Y(n211) );
  OR2XL U198 ( .A(n228), .B(n225), .Y(n209) );
  NAND2X2 U199 ( .A(n208), .B(n209), .Y(n86) );
  OAI22X1 U200 ( .A0(n228), .A1(n226), .B0(n229), .B1(n225), .Y(n85) );
  NAND2X6 U201 ( .A(n234), .B(n266), .Y(n236) );
  NAND2X1 U202 ( .A(b[1]), .B(a[1]), .Y(n210) );
  NAND2X1 U203 ( .A(b[2]), .B(n203), .Y(n204) );
  NAND2X2 U204 ( .A(n204), .B(n205), .Y(n228) );
  INVX3 U205 ( .A(b[2]), .Y(n202) );
  INVX8 U206 ( .A(n212), .Y(n234) );
  OR2XL U207 ( .A(n235), .B(n236), .Y(n206) );
  OR2XL U208 ( .A(n234), .B(n237), .Y(n207) );
  NAND2X1 U209 ( .A(n206), .B(n207), .Y(n78) );
  XOR2X1 U210 ( .A(n85), .B(n78), .Y(n51) );
  XOR2XL U211 ( .A(n223), .B(n215), .Y(n235) );
  NAND2X2 U212 ( .A(a[1]), .B(n225), .Y(n226) );
  XOR2XL U213 ( .A(b[2]), .B(n222), .Y(n247) );
  XOR2XL U214 ( .A(b[2]), .B(n221), .Y(n257) );
  OR2XL U215 ( .A(n227), .B(n226), .Y(n208) );
  ADDFHX2 U216 ( .A(n13), .B(n54), .CI(n51), .CO(n12), .S(product[3]) );
  OAI22X1 U217 ( .A0(n215), .A1(n226), .B0(n227), .B1(n225), .Y(n87) );
  XOR2X2 U218 ( .A(n192), .B(a[1]), .Y(n212) );
  ADDFXL U219 ( .A(n17), .B(n219), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U220 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U221 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  BUFX8 U222 ( .A(b[0]), .Y(n215) );
  NAND2X4 U223 ( .A(n210), .B(n211), .Y(n227) );
  INVX1 U224 ( .A(n29), .Y(n217) );
  OA22XL U225 ( .A0(n241), .A1(n236), .B0(n234), .B1(n265), .Y(n264) );
  NAND2BXL U226 ( .AN(n263), .B(n264), .Y(n34) );
  OAI2BB1XL U227 ( .A0N(n225), .A1N(n226), .B0(n233), .Y(n263) );
  INVX1 U228 ( .A(n21), .Y(n218) );
  AO21XL U229 ( .A0(n236), .A1(n234), .B0(n242), .Y(n72) );
  XOR2XL U230 ( .A(b[3]), .B(n222), .Y(n248) );
  XOR2XL U231 ( .A(b[5]), .B(n223), .Y(n241) );
  XOR2XL U232 ( .A(b[4]), .B(n222), .Y(n249) );
  XOR2XL U233 ( .A(b[5]), .B(n222), .Y(n250) );
  XOR2XL U234 ( .A(b[3]), .B(n221), .Y(n258) );
  XOR2XL U235 ( .A(n191), .B(n223), .Y(n265) );
  XOR2XL U236 ( .A(b[7]), .B(n223), .Y(n242) );
  XOR2XL U237 ( .A(n191), .B(n222), .Y(n251) );
  XOR2XL U238 ( .A(n191), .B(n221), .Y(n261) );
  XOR2XL U239 ( .A(b[4]), .B(n221), .Y(n259) );
  XOR2XL U240 ( .A(b[5]), .B(n221), .Y(n260) );
  XOR2XL U241 ( .A(b[7]), .B(n222), .Y(n252) );
  XOR2XL U242 ( .A(b[7]), .B(n221), .Y(n262) );
  CLKINVX1 U243 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U244 ( .A(n15), .Y(n219) );
  XNOR2X1 U245 ( .A(a[4]), .B(a[3]), .Y(n243) );
  INVX3 U246 ( .A(a[7]), .Y(n221) );
  XNOR2X1 U247 ( .A(a[6]), .B(a[5]), .Y(n253) );
  NOR2X1 U248 ( .A(n225), .B(n220), .Y(product[0]) );
  OAI22XL U249 ( .A0(n230), .A1(n226), .B0(n231), .B1(n225), .Y(n83) );
  OAI22XL U250 ( .A0(n231), .A1(n226), .B0(n232), .B1(n225), .Y(n82) );
  OAI2BB2XL U251 ( .B0(n232), .B1(n226), .A0N(n233), .A1N(a[0]), .Y(n81) );
  XOR2X1 U252 ( .A(n191), .B(n224), .Y(n232) );
  OAI22XL U253 ( .A0(n237), .A1(n236), .B0(n234), .B1(n238), .Y(n77) );
  OAI22XL U254 ( .A0(n238), .A1(n236), .B0(n234), .B1(n239), .Y(n76) );
  NOR2X1 U255 ( .A(n213), .B(n220), .Y(n71) );
  OAI22XL U256 ( .A0(n246), .A1(n245), .B0(n213), .B1(n247), .Y(n69) );
  OAI22XL U257 ( .A0(n248), .A1(n245), .B0(n213), .B1(n249), .Y(n67) );
  OAI22XL U258 ( .A0(n249), .A1(n245), .B0(n213), .B1(n250), .Y(n66) );
  OAI22XL U259 ( .A0(n250), .A1(n245), .B0(n213), .B1(n251), .Y(n65) );
  AO21X1 U260 ( .A0(n245), .A1(n213), .B0(n252), .Y(n64) );
  NOR2X1 U261 ( .A(n214), .B(n220), .Y(n63) );
  XOR2X1 U262 ( .A(n221), .B(n215), .Y(n254) );
  OAI22XL U263 ( .A0(n257), .A1(n255), .B0(n214), .B1(n258), .Y(n60) );
  OAI22XL U264 ( .A0(n258), .A1(n255), .B0(n214), .B1(n259), .Y(n59) );
  OAI22XL U265 ( .A0(n259), .A1(n255), .B0(n214), .B1(n260), .Y(n58) );
  OAI22XL U266 ( .A0(n260), .A1(n255), .B0(n214), .B1(n261), .Y(n57) );
  AO21X1 U267 ( .A0(n255), .A1(n214), .B0(n262), .Y(n56) );
  OAI32X1 U268 ( .A0(n222), .A1(n215), .A2(n213), .B0(n222), .B1(n245), .Y(n53) );
  OAI32X1 U269 ( .A0(n221), .A1(n215), .A2(n214), .B0(n221), .B1(n255), .Y(n52) );
  XOR2X1 U270 ( .A(n263), .B(n264), .Y(n35) );
  OAI22XL U271 ( .A0(n234), .A1(n242), .B0(n265), .B1(n236), .Y(n29) );
  OAI22XL U272 ( .A0(n213), .A1(n252), .B0(n251), .B1(n245), .Y(n21) );
  XOR2X1 U273 ( .A(a[5]), .B(a[4]), .Y(n267) );
  OAI22XL U274 ( .A0(n214), .A1(n262), .B0(n261), .B1(n255), .Y(n15) );
  XOR2X1 U275 ( .A(a[7]), .B(a[6]), .Y(n268) );
endmodule


module CONV_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256;

  ADDFXL U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n206), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n205), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  BUFX6 U140 ( .A(a[4]), .Y(n189) );
  CLKBUFX3 U141 ( .A(b[1]), .Y(n194) );
  BUFX4 U142 ( .A(b[0]), .Y(n203) );
  OAI22XL U143 ( .A0(n219), .A1(n214), .B0(n220), .B1(n213), .Y(n82) );
  XOR2X2 U144 ( .A(n194), .B(n212), .Y(n215) );
  ADDFX1 U145 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  XOR2X1 U146 ( .A(a[5]), .B(n189), .Y(n255) );
  OR2X1 U147 ( .A(n232), .B(n233), .Y(n196) );
  XOR2X1 U148 ( .A(n192), .B(n211), .Y(n227) );
  XOR2X1 U149 ( .A(n193), .B(n212), .Y(n218) );
  XOR2X1 U150 ( .A(n191), .B(n212), .Y(n219) );
  CLKBUFX3 U151 ( .A(b[2]), .Y(n195) );
  INVX3 U152 ( .A(a[5]), .Y(n210) );
  CLKBUFX3 U153 ( .A(b[5]), .Y(n191) );
  CLKBUFX3 U154 ( .A(b[3]), .Y(n192) );
  CLKBUFX3 U155 ( .A(b[4]), .Y(n193) );
  XOR2X1 U156 ( .A(n195), .B(n212), .Y(n216) );
  INVX3 U157 ( .A(a[3]), .Y(n211) );
  XOR2X1 U158 ( .A(b[6]), .B(n212), .Y(n220) );
  CLKBUFX6 U159 ( .A(n231), .Y(n201) );
  NAND2X6 U160 ( .A(n222), .B(n190), .Y(n224) );
  BUFX4 U161 ( .A(n254), .Y(n190) );
  BUFX4 U162 ( .A(n241), .Y(n202) );
  ADDHX1 U163 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  NOR2X1 U164 ( .A(n213), .B(n208), .Y(product[0]) );
  ADDFX2 U165 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFHX2 U166 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  XNOR2X2 U167 ( .A(n189), .B(a[3]), .Y(n231) );
  OAI22XL U168 ( .A0(n227), .A1(n224), .B0(n222), .B1(n228), .Y(n75) );
  OR2X1 U169 ( .A(n201), .B(n234), .Y(n197) );
  XOR2X1 U170 ( .A(n194), .B(n210), .Y(n234) );
  ADDFHX4 U171 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFX2 U172 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  INVX6 U173 ( .A(a[1]), .Y(n212) );
  OAI22X2 U174 ( .A0(n216), .A1(n214), .B0(n217), .B1(n213), .Y(n85) );
  OAI32X4 U175 ( .A0(n210), .A1(n203), .A2(n201), .B0(n210), .B1(n233), .Y(n53) );
  ADDFHX2 U176 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  OAI22X1 U177 ( .A0(n215), .A1(n214), .B0(n216), .B1(n213), .Y(n86) );
  OAI21X1 U178 ( .A0(n203), .A1(n212), .B0(n214), .Y(n55) );
  XOR2X1 U179 ( .A(n194), .B(n211), .Y(n225) );
  XOR2X2 U180 ( .A(a[2]), .B(a[1]), .Y(n200) );
  OAI22X1 U181 ( .A0(n226), .A1(n224), .B0(n222), .B1(n227), .Y(n76) );
  CMPR22X2 U182 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U183 ( .A0(n218), .A1(n214), .B0(n219), .B1(n213), .Y(n83) );
  OAI22X1 U184 ( .A0(n203), .A1(n214), .B0(n215), .B1(n213), .Y(n87) );
  NAND2X8 U185 ( .A(a[1]), .B(n213), .Y(n214) );
  ADDFHX2 U186 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  NAND2X6 U187 ( .A(n196), .B(n197), .Y(n70) );
  ADDHX4 U188 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  XOR2XL U189 ( .A(n210), .B(n203), .Y(n232) );
  NAND2X8 U190 ( .A(n201), .B(n255), .Y(n233) );
  OR2X2 U191 ( .A(n223), .B(n224), .Y(n198) );
  OR2X2 U192 ( .A(n222), .B(n225), .Y(n199) );
  NAND2X4 U193 ( .A(n198), .B(n199), .Y(n78) );
  XOR2XL U194 ( .A(n211), .B(n203), .Y(n223) );
  INVX8 U195 ( .A(n200), .Y(n222) );
  ADDFXL U196 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  CLKINVX3 U197 ( .A(a[0]), .Y(n213) );
  ADDFXL U198 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U199 ( .A(n17), .B(n207), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U200 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U201 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  NAND2X2 U202 ( .A(n202), .B(n256), .Y(n243) );
  INVX1 U203 ( .A(n29), .Y(n205) );
  NOR2XL U204 ( .A(n202), .B(n208), .Y(n63) );
  NAND2BXL U205 ( .AN(n251), .B(n252), .Y(n34) );
  OAI2BB1XL U206 ( .A0N(n213), .A1N(n214), .B0(n221), .Y(n251) );
  INVX1 U207 ( .A(n21), .Y(n206) );
  XOR2XL U208 ( .A(n193), .B(n211), .Y(n228) );
  XOR2XL U209 ( .A(n195), .B(n210), .Y(n235) );
  XOR2XL U210 ( .A(n192), .B(n210), .Y(n236) );
  XOR2XL U211 ( .A(n194), .B(n209), .Y(n244) );
  XOR2XL U212 ( .A(b[7]), .B(a[1]), .Y(n221) );
  XOR2XL U213 ( .A(b[6]), .B(n210), .Y(n239) );
  XOR2XL U214 ( .A(n193), .B(n210), .Y(n237) );
  XOR2XL U215 ( .A(n195), .B(n209), .Y(n245) );
  XOR2XL U216 ( .A(n191), .B(n210), .Y(n238) );
  XOR2XL U217 ( .A(n192), .B(n209), .Y(n246) );
  XOR2XL U218 ( .A(n193), .B(n209), .Y(n247) );
  XOR2XL U219 ( .A(n191), .B(n211), .Y(n229) );
  XOR2XL U220 ( .A(b[6]), .B(n211), .Y(n253) );
  XOR2XL U221 ( .A(b[7]), .B(n211), .Y(n230) );
  XOR2XL U222 ( .A(b[7]), .B(n210), .Y(n240) );
  XOR2XL U223 ( .A(b[6]), .B(n209), .Y(n249) );
  XOR2XL U224 ( .A(n191), .B(n209), .Y(n248) );
  XOR2XL U225 ( .A(b[7]), .B(n209), .Y(n250) );
  ADDFXL U226 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  CLKINVX1 U227 ( .A(n15), .Y(n207) );
  CLKINVX1 U228 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U229 ( .A(n203), .Y(n208) );
  XOR2X1 U230 ( .A(n192), .B(n212), .Y(n217) );
  INVX3 U231 ( .A(a[7]), .Y(n209) );
  XNOR2X1 U232 ( .A(a[6]), .B(a[5]), .Y(n241) );
  OAI22XL U233 ( .A0(n217), .A1(n214), .B0(n218), .B1(n213), .Y(n84) );
  OAI2BB2XL U234 ( .B0(n220), .B1(n214), .A0N(n221), .A1N(a[0]), .Y(n81) );
  NOR2X1 U235 ( .A(n222), .B(n208), .Y(n79) );
  OAI22XL U236 ( .A0(n225), .A1(n224), .B0(n222), .B1(n226), .Y(n77) );
  XOR2X1 U237 ( .A(n195), .B(n211), .Y(n226) );
  OAI22XL U238 ( .A0(n228), .A1(n224), .B0(n222), .B1(n229), .Y(n74) );
  AO21X1 U239 ( .A0(n224), .A1(n222), .B0(n230), .Y(n72) );
  NOR2X1 U240 ( .A(n201), .B(n208), .Y(n71) );
  OAI22XL U241 ( .A0(n234), .A1(n233), .B0(n201), .B1(n235), .Y(n69) );
  OAI22XL U242 ( .A0(n235), .A1(n233), .B0(n201), .B1(n236), .Y(n68) );
  OAI22XL U243 ( .A0(n236), .A1(n233), .B0(n201), .B1(n237), .Y(n67) );
  OAI22XL U244 ( .A0(n237), .A1(n233), .B0(n201), .B1(n238), .Y(n66) );
  OAI22XL U245 ( .A0(n238), .A1(n233), .B0(n201), .B1(n239), .Y(n65) );
  AO21X1 U246 ( .A0(n233), .A1(n201), .B0(n240), .Y(n64) );
  OAI22XL U247 ( .A0(n242), .A1(n243), .B0(n202), .B1(n244), .Y(n62) );
  XOR2X1 U248 ( .A(n209), .B(n203), .Y(n242) );
  OAI22XL U249 ( .A0(n244), .A1(n243), .B0(n202), .B1(n245), .Y(n61) );
  OAI22XL U250 ( .A0(n245), .A1(n243), .B0(n202), .B1(n246), .Y(n60) );
  OAI22XL U251 ( .A0(n246), .A1(n243), .B0(n202), .B1(n247), .Y(n59) );
  OAI22XL U252 ( .A0(n247), .A1(n243), .B0(n202), .B1(n248), .Y(n58) );
  OAI22XL U253 ( .A0(n248), .A1(n243), .B0(n202), .B1(n249), .Y(n57) );
  AO21X1 U254 ( .A0(n243), .A1(n202), .B0(n250), .Y(n56) );
  OAI32X1 U255 ( .A0(n211), .A1(n203), .A2(n222), .B0(n211), .B1(n224), .Y(n54) );
  OAI32X1 U256 ( .A0(n209), .A1(n203), .A2(n202), .B0(n209), .B1(n243), .Y(n52) );
  XOR2X1 U257 ( .A(n251), .B(n252), .Y(n35) );
  OA22X1 U258 ( .A0(n229), .A1(n224), .B0(n222), .B1(n253), .Y(n252) );
  OAI22XL U259 ( .A0(n222), .A1(n230), .B0(n253), .B1(n224), .Y(n29) );
  XOR2X1 U260 ( .A(a[3]), .B(a[2]), .Y(n254) );
  OAI22XL U261 ( .A0(n201), .A1(n240), .B0(n239), .B1(n233), .Y(n21) );
  OAI22XL U262 ( .A0(n202), .A1(n250), .B0(n249), .B1(n243), .Y(n15) );
  XOR2X1 U263 ( .A(a[7]), .B(a[6]), .Y(n256) );
endmodule


module CONV_DW01_add_7 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [16:1] carry;

  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR2XL U1 ( .A(carry[4]), .B(n2), .Y(SUM[4]) );
  NAND2X1 U2 ( .A(B[4]), .B(carry[4]), .Y(n4) );
  NAND3X1 U3 ( .A(n3), .B(n4), .C(n5), .Y(carry[5]) );
  NAND2X1 U4 ( .A(B[4]), .B(A[4]), .Y(n5) );
  NAND2X1 U5 ( .A(A[4]), .B(carry[4]), .Y(n3) );
  AND2X2 U6 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U7 ( .A(A[4]), .B(B[4]), .Y(n2) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_6 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [16:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n2), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX4 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKBUFX3 U1 ( .A(B[0]), .Y(n1) );
  NAND3X2 U2 ( .A(n4), .B(n5), .C(n6), .Y(carry[11]) );
  XOR2X1 U3 ( .A(carry[10]), .B(n3), .Y(SUM[10]) );
  AND2X2 U4 ( .A(n1), .B(A[0]), .Y(n2) );
  XOR2X1 U5 ( .A(B[10]), .B(A[10]), .Y(n3) );
  NAND2X2 U6 ( .A(B[10]), .B(carry[10]), .Y(n4) );
  NAND2X2 U7 ( .A(A[10]), .B(carry[10]), .Y(n5) );
  NAND2X1 U8 ( .A(A[10]), .B(B[10]), .Y(n6) );
  XOR2X1 U9 ( .A(n1), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_5 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [16:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPR32X2 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1 ( .A(B[8]), .B(carry[8]), .C(A[8]), .Y(SUM[8]) );
  AND2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
  NAND2XL U3 ( .A(A[8]), .B(B[8]), .Y(n2) );
  NAND2X1 U4 ( .A(carry[8]), .B(B[8]), .Y(n3) );
  NAND2X1 U5 ( .A(carry[8]), .B(A[8]), .Y(n4) );
  NAND3X1 U6 ( .A(n2), .B(n3), .C(n4), .Y(carry[9]) );
  CLKXOR2X4 U7 ( .A(B[11]), .B(A[11]), .Y(n5) );
  XOR2X4 U8 ( .A(carry[11]), .B(n5), .Y(SUM[11]) );
  NAND2X1 U9 ( .A(B[11]), .B(carry[11]), .Y(n6) );
  NAND2X1 U10 ( .A(A[11]), .B(carry[11]), .Y(n7) );
  NAND2XL U11 ( .A(A[11]), .B(B[11]), .Y(n8) );
  NAND3X2 U12 ( .A(n6), .B(n7), .C(n8), .Y(carry[12]) );
  XOR2X1 U13 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_4 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [16:1] carry;

  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR2X1 U1 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  NAND3X1 U2 ( .A(n3), .B(n4), .C(n5), .Y(carry[8]) );
  NAND2X1 U3 ( .A(B[7]), .B(A[7]), .Y(n5) );
  AND2X2 U4 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2 U5 ( .A(A[7]), .B(B[7]), .Y(n2) );
  XOR2X4 U6 ( .A(carry[7]), .B(n2), .Y(SUM[7]) );
  NAND2X1 U7 ( .A(A[7]), .B(carry[7]), .Y(n3) );
  NAND2X1 U8 ( .A(B[7]), .B(carry[7]), .Y(n4) );
endmodule


module CONV_DW01_add_3 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [16:1] carry;

  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CMPR32X2 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  NAND3X1 U1 ( .A(n5), .B(n6), .C(n7), .Y(carry[10]) );
  NAND2X1 U2 ( .A(carry[9]), .B(B[9]), .Y(n5) );
  AND2X2 U3 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR3X4 U4 ( .A(B[2]), .B(A[2]), .C(carry[2]), .Y(SUM[2]) );
  NAND2XL U5 ( .A(carry[2]), .B(B[2]), .Y(n2) );
  NAND2XL U6 ( .A(A[2]), .B(B[2]), .Y(n3) );
  NAND2XL U7 ( .A(A[2]), .B(carry[2]), .Y(n4) );
  NAND3X1 U8 ( .A(n2), .B(n3), .C(n4), .Y(carry[3]) );
  XOR3X2 U9 ( .A(B[9]), .B(A[9]), .C(carry[9]), .Y(SUM[9]) );
  NAND2X1 U10 ( .A(A[9]), .B(B[9]), .Y(n6) );
  NAND2X1 U11 ( .A(A[9]), .B(carry[9]), .Y(n7) );
  XOR2X1 U12 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_2 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [16:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  NAND2X1 U1 ( .A(carry[11]), .B(B[11]), .Y(n6) );
  XOR2X2 U2 ( .A(B[9]), .B(A[9]), .Y(n2) );
  NAND2X1 U3 ( .A(A[9]), .B(carry[9]), .Y(n4) );
  XOR3X1 U4 ( .A(B[11]), .B(A[11]), .C(carry[11]), .Y(SUM[11]) );
  AND2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X4 U6 ( .A(carry[9]), .B(n2), .Y(SUM[9]) );
  NAND2X2 U7 ( .A(B[9]), .B(carry[9]), .Y(n3) );
  NAND2X2 U8 ( .A(A[9]), .B(B[9]), .Y(n5) );
  NAND3X6 U9 ( .A(n3), .B(n4), .C(n5), .Y(carry[10]) );
  NAND2XL U10 ( .A(A[11]), .B(B[11]), .Y(n7) );
  NAND2X1 U11 ( .A(A[11]), .B(carry[11]), .Y(n8) );
  NAND3X2 U12 ( .A(n6), .B(n7), .C(n8), .Y(carry[12]) );
  XOR2X1 U13 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [16:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR2X2 U1 ( .A(carry[10]), .B(n5), .Y(SUM[10]) );
  AND2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR3X2 U3 ( .A(B[4]), .B(A[4]), .C(carry[4]), .Y(SUM[4]) );
  NAND2XL U4 ( .A(A[10]), .B(carry[10]), .Y(n7) );
  NAND2XL U5 ( .A(carry[4]), .B(B[4]), .Y(n2) );
  NAND2XL U6 ( .A(A[4]), .B(B[4]), .Y(n3) );
  NAND2XL U7 ( .A(A[4]), .B(carry[4]), .Y(n4) );
  NAND3X1 U8 ( .A(n2), .B(n3), .C(n4), .Y(carry[5]) );
  NAND2XL U9 ( .A(B[10]), .B(carry[10]), .Y(n6) );
  NAND2XL U10 ( .A(A[10]), .B(B[10]), .Y(n8) );
  XOR2X1 U11 ( .A(B[10]), .B(A[10]), .Y(n5) );
  NAND3X1 U12 ( .A(n6), .B(n7), .C(n8), .Y(carry[11]) );
  XOR2X1 U13 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [16:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_10 ( .A(A[10]), .B(n2), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  NAND2X2 U1 ( .A(A[6]), .B(B[6]), .Y(n12) );
  NAND2X1 U2 ( .A(A[5]), .B(carry[5]), .Y(n9) );
  NAND2X1 U3 ( .A(A[9]), .B(B[9]), .Y(n20) );
  XOR2X1 U4 ( .A(B[13]), .B(n21), .Y(SUM[13]) );
  AND2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n1) );
  BUFX8 U6 ( .A(B[10]), .Y(n2) );
  NAND3X4 U7 ( .A(n3), .B(n4), .C(n5), .Y(carry[5]) );
  NAND3X4 U8 ( .A(n7), .B(n8), .C(n9), .Y(carry[6]) );
  NAND2X4 U9 ( .A(carry[6]), .B(B[6]), .Y(n11) );
  NAND3X8 U10 ( .A(n11), .B(n12), .C(n13), .Y(carry[7]) );
  NAND2X1 U11 ( .A(B[4]), .B(carry[4]), .Y(n3) );
  NAND2X1 U12 ( .A(A[4]), .B(carry[4]), .Y(n4) );
  NAND2X1 U13 ( .A(A[4]), .B(B[4]), .Y(n5) );
  XOR3XL U14 ( .A(carry[4]), .B(A[4]), .C(B[4]), .Y(SUM[4]) );
  NAND2X2 U15 ( .A(A[9]), .B(carry[9]), .Y(n19) );
  NAND3X2 U16 ( .A(n18), .B(n19), .C(n20), .Y(carry[10]) );
  NAND2X1 U17 ( .A(carry[5]), .B(B[5]), .Y(n7) );
  NAND2X1 U18 ( .A(A[5]), .B(B[5]), .Y(n8) );
  NAND2X1 U19 ( .A(A[7]), .B(carry[7]), .Y(n15) );
  XOR2XL U20 ( .A(carry[5]), .B(A[5]), .Y(n6) );
  XOR2XL U21 ( .A(B[5]), .B(n6), .Y(SUM[5]) );
  NAND2X4 U22 ( .A(A[6]), .B(carry[6]), .Y(n13) );
  NAND2XL U23 ( .A(B[11]), .B(carry[11]), .Y(n25) );
  NAND2X1 U24 ( .A(A[11]), .B(B[11]), .Y(n27) );
  NAND2X1 U25 ( .A(B[7]), .B(carry[7]), .Y(n14) );
  XOR2XL U26 ( .A(carry[6]), .B(A[6]), .Y(n10) );
  XOR2XL U27 ( .A(B[6]), .B(n10), .Y(SUM[6]) );
  NAND2X1 U28 ( .A(carry[13]), .B(B[13]), .Y(n22) );
  NAND2X1 U29 ( .A(A[13]), .B(B[13]), .Y(n23) );
  XOR3XL U30 ( .A(carry[7]), .B(A[7]), .C(B[7]), .Y(SUM[7]) );
  NAND2X1 U31 ( .A(A[7]), .B(B[7]), .Y(n16) );
  NAND3X1 U32 ( .A(n14), .B(n15), .C(n16), .Y(carry[8]) );
  NAND2XL U33 ( .A(A[11]), .B(carry[11]), .Y(n26) );
  NAND2XL U34 ( .A(A[13]), .B(carry[13]), .Y(n24) );
  NAND2X1 U35 ( .A(B[9]), .B(carry[9]), .Y(n18) );
  XOR2X1 U36 ( .A(B[9]), .B(A[9]), .Y(n17) );
  XOR2X1 U37 ( .A(carry[9]), .B(n17), .Y(SUM[9]) );
  XOR2XL U38 ( .A(carry[13]), .B(A[13]), .Y(n21) );
  NAND3X1 U39 ( .A(n22), .B(n23), .C(n24), .Y(carry[14]) );
  NAND3X1 U40 ( .A(n25), .B(n26), .C(n27), .Y(carry[12]) );
  XOR3XL U41 ( .A(carry[11]), .B(A[11]), .C(B[11]), .Y(SUM[11]) );
  XOR2XL U42 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV ( clk, rst, w_w, if_w, w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, 
        w_in6, w_in7, w_in8, if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, 
        if_in6, if_in7, if_in8, out );
  input [7:0] w_in0;
  input [7:0] w_in1;
  input [7:0] w_in2;
  input [7:0] w_in3;
  input [7:0] w_in4;
  input [7:0] w_in5;
  input [7:0] w_in6;
  input [7:0] w_in7;
  input [7:0] w_in8;
  input [7:0] if_in0;
  input [7:0] if_in1;
  input [7:0] if_in2;
  input [7:0] if_in3;
  input [7:0] if_in4;
  input [7:0] if_in5;
  input [7:0] if_in6;
  input [7:0] if_in7;
  input [7:0] if_in8;
  output [16:0] out;
  input clk, rst, w_w, if_w;
  wire   \w_in[8][7] , \w_in[8][6] , \w_in[8][5] , \w_in[8][4] , \w_in[8][3] ,
         \w_in[8][2] , \w_in[8][1] , \w_in[8][0] , \w_in[7][7] , \w_in[7][6] ,
         \w_in[7][5] , \w_in[7][4] , \w_in[7][3] , \w_in[7][2] , \w_in[7][0] ,
         \w_in[6][7] , \w_in[6][6] , \w_in[6][5] , \w_in[6][4] , \w_in[6][3] ,
         \w_in[6][2] , \w_in[6][1] , \w_in[6][0] , \w_in[5][7] , \w_in[5][6] ,
         \w_in[5][5] , \w_in[5][4] , \w_in[5][3] , \w_in[5][2] , \w_in[5][1] ,
         \w_in[5][0] , \w_in[4][7] , \w_in[4][6] , \w_in[4][5] , \w_in[4][4] ,
         \w_in[4][3] , \w_in[4][2] , \w_in[4][1] , \w_in[4][0] , \w_in[3][7] ,
         \w_in[3][6] , \w_in[3][5] , \w_in[3][4] , \w_in[3][3] , \w_in[3][2] ,
         \w_in[3][1] , \w_in[3][0] , \w_in[2][7] , \w_in[2][6] , \w_in[2][5] ,
         \w_in[2][4] , \w_in[2][3] , \w_in[2][2] , \w_in[2][1] , \w_in[2][0] ,
         \w_in[1][7] , \w_in[1][6] , \w_in[1][5] , \w_in[1][4] , \w_in[1][3] ,
         \w_in[1][2] , \w_in[1][1] , \w_in[1][0] , \w_in[0][7] , \w_in[0][6] ,
         \w_in[0][5] , \w_in[0][4] , \w_in[0][3] , \w_in[0][2] , \w_in[0][1] ,
         \w_in[0][0] , \if_in[8][7] , \if_in[8][6] , \if_in[8][5] ,
         \if_in[8][4] , \if_in[8][3] , \if_in[8][2] , \if_in[8][1] ,
         \if_in[8][0] , \if_in[7][7] , \if_in[7][6] , \if_in[7][5] ,
         \if_in[7][4] , \if_in[7][3] , \if_in[7][2] , \if_in[7][1] ,
         \if_in[7][0] , \if_in[6][7] , \if_in[6][6] , \if_in[6][5] ,
         \if_in[6][4] , \if_in[6][3] , \if_in[6][2] , \if_in[6][1] ,
         \if_in[6][0] , \if_in[5][7] , \if_in[5][6] , \if_in[5][5] ,
         \if_in[5][4] , \if_in[5][3] , \if_in[5][2] , \if_in[5][1] ,
         \if_in[5][0] , \if_in[4][7] , \if_in[4][6] , \if_in[4][5] ,
         \if_in[4][4] , \if_in[4][3] , \if_in[4][2] , \if_in[4][1] ,
         \if_in[4][0] , \if_in[3][7] , \if_in[3][6] , \if_in[3][5] ,
         \if_in[3][4] , \if_in[3][3] , \if_in[3][2] , \if_in[3][1] ,
         \if_in[3][0] , \if_in[2][7] , \if_in[2][6] , \if_in[2][5] ,
         \if_in[2][4] , \if_in[2][3] , \if_in[2][2] , \if_in[2][1] ,
         \if_in[2][0] , \if_in[1][7] , \if_in[1][6] , \if_in[1][5] ,
         \if_in[1][4] , \if_in[1][3] , \if_in[1][2] , \if_in[1][1] ,
         \if_in[1][0] , \if_in[0][7] , \if_in[0][6] , \if_in[0][5] ,
         \if_in[0][4] , \if_in[0][3] , \if_in[0][2] , \if_in[0][1] ,
         \if_in[0][0] , N264, N265, N266, N267, N268, N269, N270, N271, N272,
         N273, N274, N275, N276, N277, N278, N279, N280, N284, N286, N99, N98,
         N97, N96, N95, N94, N93, N92, N91, N90, N9, N89, N88, N87, N86, N85,
         N84, N83, N82, N81, N80, N8, N79, N78, N77, N76, N75, N74, N73, N72,
         N71, N70, N7, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N6,
         N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N5, N49, N48, N47,
         N46, N45, N44, N43, N42, N41, N40, N4, N39, N38, N37, N36, N35, N34,
         N33, N32, N31, N30, N3, N29, N28, N27, N263, N262, N261, N260, N26,
         N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N25, N249,
         N248, N247, N246, N245, N244, N243, N242, N241, N240, N24, N239, N238,
         N237, N236, N235, N234, N233, N232, N231, N230, N23, N229, N228, N227,
         N226, N225, N224, N223, N222, N221, N220, N22, N219, N218, N217, N216,
         N215, N214, N213, N212, N211, N210, N21, N209, N208, N207, N206, N205,
         N204, N203, N202, N201, N200, N20, N2, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N19, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N18, N179, N178, N177, N176, N175, N174, N173,
         N172, N171, N170, N17, N169, N168, N167, N166, N165, N164, N163, N162,
         N161, N160, N16, N159, N158, N157, N156, N155, N154, N153, N152, N151,
         N150, N15, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140,
         N14, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, N13,
         N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N12, N119,
         N118, N117, N116, N115, N114, N113, N112, N111, N110, N11, N109, N108,
         N107, N106, N105, N104, N103, N102, N101, N100, N10, N1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13;

  EDFFX4 \w_in_reg[6][1]  ( .D(w_in6[1]), .E(n12), .CK(clk), .Q(\w_in[6][1] )
         );
  EDFFX4 \w_in_reg[1][1]  ( .D(w_in1[1]), .E(n9), .CK(clk), .Q(\w_in[1][1] )
         );
  CONV_DW_mult_tc_8 mult_62 ( .a({\w_in[0][7] , \w_in[0][6] , \w_in[0][5] , 
        \w_in[0][4] , \w_in[0][3] , \w_in[0][2] , \w_in[0][1] , \w_in[0][0] }), 
        .b({\if_in[0][7] , \if_in[0][6] , \if_in[0][5] , \if_in[0][4] , 
        \if_in[0][3] , \if_in[0][2] , \if_in[0][1] , \if_in[0][0] }), 
        .product({N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, 
        N3, N2, N1}) );
  CONV_DW_mult_tc_7 mult_62_2 ( .a({\w_in[1][7] , \w_in[1][6] , \w_in[1][5] , 
        \w_in[1][4] , \w_in[1][3] , \w_in[1][2] , \w_in[1][1] , \w_in[1][0] }), 
        .b({\if_in[1][7] , \if_in[1][6] , \if_in[1][5] , \if_in[1][4] , 
        \if_in[1][3] , \if_in[1][2] , \if_in[1][1] , \if_in[1][0] }), 
        .product({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, 
        N20, N19, N18, N17}) );
  CONV_DW_mult_tc_6 mult_62_3 ( .a({\w_in[2][7] , \w_in[2][6] , \w_in[2][5] , 
        \w_in[2][4] , \w_in[2][3] , \w_in[2][2] , \w_in[2][1] , \w_in[2][0] }), 
        .b({\if_in[2][7] , \if_in[2][6] , \if_in[2][5] , \if_in[2][4] , 
        \if_in[2][3] , \if_in[2][2] , \if_in[2][1] , \if_in[2][0] }), 
        .product({N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50}) );
  CONV_DW_mult_tc_5 mult_62_4 ( .a({\w_in[3][7] , \w_in[3][6] , \w_in[3][5] , 
        \w_in[3][4] , \w_in[3][3] , \w_in[3][2] , \w_in[3][1] , \w_in[3][0] }), 
        .b({\if_in[3][7] , \if_in[3][6] , \if_in[3][5] , \if_in[3][4] , 
        \if_in[3][3] , \if_in[3][2] , \if_in[3][1] , \if_in[3][0] }), 
        .product({N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        N86, N85, N84, N83}) );
  CONV_DW_mult_tc_4 mult_62_5 ( .a({\w_in[4][7] , \w_in[4][6] , \w_in[4][5] , 
        \w_in[4][4] , \w_in[4][3] , \w_in[4][2] , \w_in[4][1] , \w_in[4][0] }), 
        .b({\if_in[4][7] , \if_in[4][6] , \if_in[4][5] , \if_in[4][4] , 
        \if_in[4][3] , \if_in[4][2] , \if_in[4][1] , \if_in[4][0] }), 
        .product({N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116}) );
  CONV_DW_mult_tc_3 mult_62_6 ( .a({\w_in[5][7] , \w_in[5][6] , \w_in[5][5] , 
        \w_in[5][4] , \w_in[5][3] , \w_in[5][2] , \w_in[5][1] , \w_in[5][0] }), 
        .b({\if_in[5][7] , \if_in[5][6] , \if_in[5][5] , \if_in[5][4] , 
        \if_in[5][3] , \if_in[5][2] , \if_in[5][1] , \if_in[5][0] }), 
        .product({N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, 
        N154, N153, N152, N151, N150, N149}) );
  CONV_DW_mult_tc_2 mult_62_7 ( .a({\w_in[6][7] , \w_in[6][6] , \w_in[6][5] , 
        \w_in[6][4] , \w_in[6][3] , \w_in[6][2] , \w_in[6][1] , \w_in[6][0] }), 
        .b({\if_in[6][7] , \if_in[6][6] , \if_in[6][5] , \if_in[6][4] , 
        \if_in[6][3] , \if_in[6][2] , \if_in[6][1] , \if_in[6][0] }), 
        .product({N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183, N182}) );
  CONV_DW_mult_tc_1 mult_62_8 ( .a({\w_in[7][7] , \w_in[7][6] , \w_in[7][5] , 
        \w_in[7][4] , \w_in[7][3] , \w_in[7][2] , n2, \w_in[7][0] }), .b({
        \if_in[7][7] , \if_in[7][6] , \if_in[7][5] , \if_in[7][4] , 
        \if_in[7][3] , \if_in[7][2] , \if_in[7][1] , \if_in[7][0] }), 
        .product({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215}) );
  CONV_DW_mult_tc_0 mult_62_9 ( .a({\w_in[8][7] , \w_in[8][6] , \w_in[8][5] , 
        \w_in[8][4] , \w_in[8][3] , \w_in[8][2] , \w_in[8][1] , \w_in[8][0] }), 
        .b({\if_in[8][7] , \if_in[8][6] , \if_in[8][5] , \if_in[8][4] , 
        \if_in[8][3] , \if_in[8][2] , \if_in[8][1] , \if_in[8][0] }), 
        .product({N263, N262, N261, N260, N259, N258, N257, N256, N255, N254, 
        N253, N252, N251, N250, N249, N248}) );
  CONV_DW01_add_7 add_7_root_add_0_root_add_62_8 ( .A({N65, N65, N64, N63, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50}), .B({N197, 
        N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, 
        N185, N184, N183, N182}), .CI(1'b0), .SUM({N49, N48, N47, N46, N45, 
        N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}) );
  CONV_DW01_add_6 add_6_root_add_0_root_add_62_8 ( .A({N263, N263, N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248}), .B({N131, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116}), .CI(1'b0), .SUM({N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, 
        N168, N167, N166, N165}) );
  CONV_DW01_add_5 add_2_root_add_0_root_add_62_8 ( .A({N181, N180, N179, N178, 
        N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, 
        N165}), .B({N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, 
        N37, N36, N35, N34, N33}), .CI(1'b0), .SUM({N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66}) );
  CONV_DW01_add_4 add_4_root_add_0_root_add_62_8 ( .A({N98, N98, N97, N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83}), .B({N230, 
        N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, 
        N218, N217, N216, N215}), .CI(1'b0), .SUM({N247, N246, N245, N244, 
        N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, 
        N231}) );
  CONV_DW01_add_3 add_3_root_add_0_root_add_62_8 ( .A({N164, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, 
        N149}), .B({N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N115, 
        N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, N100, N99}) );
  CONV_DW01_add_2 add_5_root_add_0_root_add_62_8 ( .A({N16, N16, N15, N14, N13, 
        N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .B({N32, N32, N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17}), 
        .CI(1'b0), .SUM({N148, N147, N146, N145, N144, N143, N142, N141, N140, 
        N139, N138, N137, N136, N135, N134, N133, N132}) );
  CONV_DW01_add_1 add_1_root_add_0_root_add_62_8 ( .A({N148, N147, N146, N145, 
        N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, 
        N132}), .B({N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103, N102, N101, N100, N99}), .CI(1'b0), .SUM({N214, N213, 
        N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, 
        N200, N199, N198}) );
  CONV_DW01_add_0 add_0_root_add_0_root_add_62_8 ( .A({N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66}), .B({N214, 
        N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, 
        N201, N200, N199, N198}), .CI(1'b0), .SUM({N280, N279, N278, N277, 
        N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, 
        N264}) );
  EDFFX1 \if_in_reg[8][7]  ( .D(if_in8[7]), .E(n3), .CK(clk), .Q(\if_in[8][7] ) );
  EDFFX1 \if_in_reg[5][7]  ( .D(if_in5[7]), .E(n3), .CK(clk), .Q(\if_in[5][7] ) );
  EDFFX1 \if_in_reg[2][7]  ( .D(if_in2[7]), .E(n5), .CK(clk), .Q(\if_in[2][7] ) );
  EDFFX1 \if_in_reg[1][7]  ( .D(if_in1[7]), .E(n5), .CK(clk), .Q(\if_in[1][7] ) );
  EDFFX1 \w_in_reg[6][6]  ( .D(w_in6[6]), .E(n12), .CK(clk), .Q(\w_in[6][6] )
         );
  EDFFX1 \if_in_reg[6][7]  ( .D(if_in6[7]), .E(n7), .CK(clk), .Q(\if_in[6][7] ) );
  EDFFX1 \if_in_reg[4][7]  ( .D(if_in4[7]), .E(N286), .CK(clk), .Q(
        \if_in[4][7] ) );
  EDFFX1 \if_in_reg[0][7]  ( .D(if_in0[7]), .E(n4), .CK(clk), .Q(\if_in[0][7] ) );
  EDFFX1 \if_in_reg[6][0]  ( .D(if_in6[0]), .E(n7), .CK(clk), .Q(\if_in[6][0] ) );
  EDFFX1 \w_in_reg[6][2]  ( .D(w_in6[2]), .E(n12), .CK(clk), .Q(\w_in[6][2] )
         );
  EDFFX1 \w_in_reg[2][2]  ( .D(w_in2[2]), .E(n10), .CK(clk), .Q(\w_in[2][2] )
         );
  DFFRX2 \out_reg[16]  ( .D(N280), .CK(clk), .RN(n13), .Q(out[16]) );
  DFFRX2 \out_reg[15]  ( .D(N279), .CK(clk), .RN(n13), .Q(out[15]) );
  DFFRX2 \out_reg[14]  ( .D(N278), .CK(clk), .RN(n13), .Q(out[14]) );
  DFFRX2 \out_reg[13]  ( .D(N277), .CK(clk), .RN(n13), .Q(out[13]) );
  DFFRX2 \out_reg[12]  ( .D(N276), .CK(clk), .RN(n13), .Q(out[12]) );
  DFFRX2 \out_reg[11]  ( .D(N275), .CK(clk), .RN(n13), .Q(out[11]) );
  DFFRX2 \out_reg[10]  ( .D(N274), .CK(clk), .RN(n13), .Q(out[10]) );
  DFFRX2 \out_reg[9]  ( .D(N273), .CK(clk), .RN(n13), .Q(out[9]) );
  DFFRX2 \out_reg[8]  ( .D(N272), .CK(clk), .RN(n13), .Q(out[8]) );
  DFFRX2 \out_reg[7]  ( .D(N271), .CK(clk), .RN(n13), .Q(out[7]) );
  DFFRX2 \out_reg[6]  ( .D(N270), .CK(clk), .RN(n13), .Q(out[6]) );
  DFFRX2 \out_reg[5]  ( .D(N269), .CK(clk), .RN(n13), .Q(out[5]) );
  DFFRX2 \out_reg[4]  ( .D(N268), .CK(clk), .RN(n13), .Q(out[4]) );
  DFFRX2 \out_reg[3]  ( .D(N267), .CK(clk), .RN(n13), .Q(out[3]) );
  DFFRX2 \out_reg[2]  ( .D(N266), .CK(clk), .RN(n13), .Q(out[2]) );
  DFFRX2 \out_reg[1]  ( .D(N265), .CK(clk), .RN(n13), .Q(out[1]) );
  DFFRX2 \out_reg[0]  ( .D(N264), .CK(clk), .RN(n13), .Q(out[0]) );
  EDFFX4 \w_in_reg[3][1]  ( .D(w_in3[1]), .E(n11), .CK(clk), .Q(\w_in[3][1] )
         );
  EDFFX2 \if_in_reg[0][0]  ( .D(if_in0[0]), .E(n4), .CK(clk), .Q(\if_in[0][0] ) );
  EDFFX2 \if_in_reg[1][0]  ( .D(if_in1[0]), .E(n4), .CK(clk), .Q(\if_in[1][0] ) );
  EDFFX2 \if_in_reg[8][0]  ( .D(if_in8[0]), .E(n6), .CK(clk), .Q(\if_in[8][0] ) );
  EDFFX2 \w_in_reg[3][6]  ( .D(w_in3[6]), .E(n11), .CK(clk), .Q(\w_in[3][6] )
         );
  EDFFX2 \w_in_reg[5][4]  ( .D(w_in5[4]), .E(n9), .CK(clk), .Q(\w_in[5][4] )
         );
  EDFFX2 \w_in_reg[2][0]  ( .D(w_in2[0]), .E(n10), .CK(clk), .Q(\w_in[2][0] )
         );
  EDFFX2 \w_in_reg[1][0]  ( .D(w_in1[0]), .E(n9), .CK(clk), .Q(\w_in[1][0] )
         );
  EDFFX2 \w_in_reg[6][0]  ( .D(w_in6[0]), .E(n12), .CK(clk), .Q(\w_in[6][0] )
         );
  EDFFX2 \w_in_reg[0][0]  ( .D(w_in0[0]), .E(n9), .CK(clk), .Q(\w_in[0][0] )
         );
  EDFFX2 \w_in_reg[8][0]  ( .D(w_in8[0]), .E(n8), .CK(clk), .Q(\w_in[8][0] )
         );
  EDFFX2 \w_in_reg[5][0]  ( .D(w_in5[0]), .E(n10), .CK(clk), .Q(\w_in[5][0] )
         );
  EDFFX2 \w_in_reg[3][7]  ( .D(w_in3[7]), .E(n11), .CK(clk), .Q(\w_in[3][7] )
         );
  EDFFX4 \w_in_reg[7][0]  ( .D(w_in7[0]), .E(n12), .CK(clk), .Q(\w_in[7][0] )
         );
  EDFFX4 \w_in_reg[3][5]  ( .D(w_in3[5]), .E(n11), .CK(clk), .Q(\w_in[3][5] )
         );
  EDFFX2 \if_in_reg[3][2]  ( .D(if_in3[2]), .E(n6), .CK(clk), .Q(\if_in[3][2] ) );
  EDFFX2 \if_in_reg[3][3]  ( .D(if_in3[3]), .E(n6), .CK(clk), .Q(\if_in[3][3] ) );
  EDFFX2 \if_in_reg[3][1]  ( .D(if_in3[1]), .E(n6), .CK(clk), .Q(\if_in[3][1] ) );
  EDFFX4 \w_in_reg[4][1]  ( .D(w_in4[1]), .E(n11), .CK(clk), .Q(\w_in[4][1] )
         );
  EDFFX4 \w_in_reg[5][1]  ( .D(w_in5[1]), .E(n12), .CK(clk), .Q(\w_in[5][1] )
         );
  EDFFX1 \w_in_reg[8][2]  ( .D(w_in8[2]), .E(n8), .CK(clk), .Q(\w_in[8][2] )
         );
  EDFFX1 \w_in_reg[8][6]  ( .D(w_in8[6]), .E(n8), .CK(clk), .Q(\w_in[8][6] )
         );
  EDFFX1 \w_in_reg[4][6]  ( .D(w_in4[6]), .E(N284), .CK(clk), .Q(\w_in[4][6] )
         );
  EDFFX1 \w_in_reg[2][6]  ( .D(w_in2[6]), .E(n10), .CK(clk), .Q(\w_in[2][6] )
         );
  EDFFX1 \w_in_reg[1][6]  ( .D(w_in1[6]), .E(n10), .CK(clk), .Q(\w_in[1][6] )
         );
  EDFFX1 \w_in_reg[0][6]  ( .D(w_in0[6]), .E(n9), .CK(clk), .Q(\w_in[0][6] )
         );
  EDFFX1 \w_in_reg[5][6]  ( .D(w_in5[6]), .E(N284), .CK(clk), .Q(\w_in[5][6] )
         );
  EDFFX1 \w_in_reg[4][4]  ( .D(w_in4[4]), .E(n8), .CK(clk), .Q(\w_in[4][4] )
         );
  EDFFX1 \w_in_reg[8][7]  ( .D(w_in8[7]), .E(N284), .CK(clk), .Q(\w_in[8][7] )
         );
  EDFFX1 \w_in_reg[4][7]  ( .D(w_in4[7]), .E(n8), .CK(clk), .Q(\w_in[4][7] )
         );
  EDFFX1 \w_in_reg[2][7]  ( .D(w_in2[7]), .E(n10), .CK(clk), .Q(\w_in[2][7] )
         );
  EDFFX1 \w_in_reg[0][7]  ( .D(w_in0[7]), .E(n9), .CK(clk), .Q(\w_in[0][7] )
         );
  EDFFX1 \w_in_reg[1][7]  ( .D(w_in1[7]), .E(n10), .CK(clk), .Q(\w_in[1][7] )
         );
  EDFFX1 \w_in_reg[5][7]  ( .D(w_in5[7]), .E(n8), .CK(clk), .Q(\w_in[5][7] )
         );
  EDFFX1 \if_in_reg[0][6]  ( .D(if_in0[6]), .E(n4), .CK(clk), .Q(\if_in[0][6] ) );
  EDFFX1 \if_in_reg[8][5]  ( .D(if_in8[5]), .E(n4), .CK(clk), .Q(\if_in[8][5] ) );
  EDFFX1 \if_in_reg[8][6]  ( .D(if_in8[6]), .E(n5), .CK(clk), .Q(\if_in[8][6] ) );
  EDFFX1 \if_in_reg[4][6]  ( .D(if_in4[6]), .E(N286), .CK(clk), .Q(
        \if_in[4][6] ) );
  EDFFX1 \if_in_reg[5][6]  ( .D(if_in5[6]), .E(N286), .CK(clk), .Q(
        \if_in[5][6] ) );
  EDFFX1 \if_in_reg[2][6]  ( .D(if_in2[6]), .E(n5), .CK(clk), .Q(\if_in[2][6] ) );
  EDFFX1 \if_in_reg[1][6]  ( .D(if_in1[6]), .E(n5), .CK(clk), .Q(\if_in[1][6] ) );
  EDFFX1 \if_in_reg[8][3]  ( .D(if_in8[3]), .E(n5), .CK(clk), .Q(\if_in[8][3] ) );
  EDFFX1 \if_in_reg[0][5]  ( .D(if_in0[5]), .E(n4), .CK(clk), .Q(\if_in[0][5] ) );
  EDFFX1 \if_in_reg[4][5]  ( .D(if_in4[5]), .E(n3), .CK(clk), .Q(\if_in[4][5] ) );
  EDFFX1 \if_in_reg[0][4]  ( .D(if_in0[4]), .E(n4), .CK(clk), .Q(\if_in[0][4] ) );
  EDFFX1 \if_in_reg[0][3]  ( .D(if_in0[3]), .E(n4), .CK(clk), .Q(\if_in[0][3] ) );
  EDFFX1 \if_in_reg[7][7]  ( .D(if_in7[7]), .E(n7), .CK(clk), .Q(\if_in[7][7] ) );
  EDFFX1 \if_in_reg[6][6]  ( .D(if_in6[6]), .E(n7), .CK(clk), .Q(\if_in[6][6] ) );
  EDFFX2 \w_in_reg[5][2]  ( .D(w_in5[2]), .E(n8), .CK(clk), .Q(\w_in[5][2] )
         );
  EDFFX2 \w_in_reg[4][0]  ( .D(w_in4[0]), .E(n11), .CK(clk), .Q(\w_in[4][0] )
         );
  EDFFX2 \w_in_reg[4][5]  ( .D(w_in4[5]), .E(n8), .CK(clk), .Q(\w_in[4][5] )
         );
  EDFFX2 \w_in_reg[8][5]  ( .D(w_in8[5]), .E(n8), .CK(clk), .Q(\w_in[8][5] )
         );
  EDFFX1 \w_in_reg[2][4]  ( .D(w_in2[4]), .E(n10), .CK(clk), .Q(\w_in[2][4] )
         );
  EDFFX1 \w_in_reg[1][4]  ( .D(w_in1[4]), .E(n10), .CK(clk), .Q(\w_in[1][4] )
         );
  EDFFX1 \w_in_reg[8][4]  ( .D(w_in8[4]), .E(N284), .CK(clk), .Q(\w_in[8][4] )
         );
  EDFFX1 \w_in_reg[0][4]  ( .D(w_in0[4]), .E(n9), .CK(clk), .Q(\w_in[0][4] )
         );
  EDFFX1 \w_in_reg[1][2]  ( .D(w_in1[2]), .E(n9), .CK(clk), .Q(\w_in[1][2] )
         );
  EDFFX1 \if_in_reg[8][4]  ( .D(if_in8[4]), .E(n7), .CK(clk), .Q(\if_in[8][4] ) );
  EDFFX1 \if_in_reg[3][6]  ( .D(if_in3[6]), .E(n6), .CK(clk), .Q(\if_in[3][6] ) );
  EDFFX1 \if_in_reg[5][4]  ( .D(if_in5[4]), .E(N286), .CK(clk), .Q(
        \if_in[5][4] ) );
  EDFFX1 \if_in_reg[4][3]  ( .D(if_in4[3]), .E(n6), .CK(clk), .Q(\if_in[4][3] ) );
  EDFFX1 \if_in_reg[8][1]  ( .D(if_in8[1]), .E(n7), .CK(clk), .Q(\if_in[8][1] ) );
  EDFFX1 \if_in_reg[5][3]  ( .D(if_in5[3]), .E(n3), .CK(clk), .Q(\if_in[5][3] ) );
  EDFFX1 \if_in_reg[0][2]  ( .D(if_in0[2]), .E(n4), .CK(clk), .Q(\if_in[0][2] ) );
  EDFFX1 \if_in_reg[8][2]  ( .D(if_in8[2]), .E(n7), .CK(clk), .Q(\if_in[8][2] ) );
  EDFFX1 \if_in_reg[4][4]  ( .D(if_in4[4]), .E(n3), .CK(clk), .Q(\if_in[4][4] ) );
  EDFFX1 \if_in_reg[2][4]  ( .D(if_in2[4]), .E(n5), .CK(clk), .Q(\if_in[2][4] ) );
  EDFFX1 \if_in_reg[1][4]  ( .D(if_in1[4]), .E(n5), .CK(clk), .Q(\if_in[1][4] ) );
  EDFFX1 \if_in_reg[5][2]  ( .D(if_in5[2]), .E(n3), .CK(clk), .Q(\if_in[5][2] ) );
  EDFFX1 \if_in_reg[2][3]  ( .D(if_in2[3]), .E(n5), .CK(clk), .Q(\if_in[2][3] ) );
  EDFFX1 \if_in_reg[2][2]  ( .D(if_in2[2]), .E(n5), .CK(clk), .Q(\if_in[2][2] ) );
  EDFFX1 \if_in_reg[1][2]  ( .D(if_in1[2]), .E(n4), .CK(clk), .Q(\if_in[1][2] ) );
  EDFFX1 \if_in_reg[6][4]  ( .D(if_in6[4]), .E(n7), .CK(clk), .Q(\if_in[6][4] ) );
  EDFFX1 \if_in_reg[6][3]  ( .D(if_in6[3]), .E(n7), .CK(clk), .Q(\if_in[6][3] ) );
  EDFFX1 \if_in_reg[1][3]  ( .D(if_in1[3]), .E(n4), .CK(clk), .Q(\if_in[1][3] ) );
  EDFFX2 \w_in_reg[3][4]  ( .D(w_in3[4]), .E(n11), .CK(clk), .Q(\w_in[3][4] )
         );
  EDFFX1 \w_in_reg[7][2]  ( .D(w_in7[2]), .E(n12), .CK(clk), .Q(\w_in[7][2] )
         );
  EDFFX1 \if_in_reg[7][3]  ( .D(if_in7[3]), .E(n7), .CK(clk), .Q(\if_in[7][3] ) );
  EDFFX1 \w_in_reg[0][2]  ( .D(w_in0[2]), .E(n9), .CK(clk), .Q(\w_in[0][2] )
         );
  EDFFX1 \w_in_reg[4][2]  ( .D(w_in4[2]), .E(n11), .CK(clk), .Q(\w_in[4][2] )
         );
  EDFFX1 \if_in_reg[7][6]  ( .D(if_in7[6]), .E(n7), .CK(clk), .Q(\if_in[7][6] ) );
  EDFFX1 \if_in_reg[1][5]  ( .D(if_in1[5]), .E(n5), .CK(clk), .Q(\if_in[1][5] ) );
  EDFFX1 \w_in_reg[6][7]  ( .D(w_in6[7]), .E(n12), .CK(clk), .Q(\w_in[6][7] )
         );
  EDFFX1 \if_in_reg[5][5]  ( .D(if_in5[5]), .E(n6), .CK(clk), .Q(\if_in[5][5] ) );
  EDFFX1 \if_in_reg[3][7]  ( .D(if_in3[7]), .E(n6), .CK(clk), .Q(\if_in[3][7] ) );
  EDFFX1 \w_in_reg[6][4]  ( .D(w_in6[4]), .E(n12), .CK(clk), .Q(\w_in[6][4] )
         );
  EDFFX1 \w_in_reg[1][3]  ( .D(w_in1[3]), .E(n9), .CK(clk), .Q(\w_in[1][3] )
         );
  EDFFX1 \w_in_reg[2][3]  ( .D(w_in2[3]), .E(n10), .CK(clk), .Q(\w_in[2][3] )
         );
  EDFFX1 \if_in_reg[3][5]  ( .D(if_in3[5]), .E(n6), .CK(clk), .Q(\if_in[3][5] ) );
  EDFFX1 \if_in_reg[7][5]  ( .D(if_in7[5]), .E(n7), .CK(clk), .Q(\if_in[7][5] ) );
  EDFFX1 \if_in_reg[7][4]  ( .D(if_in7[4]), .E(n7), .CK(clk), .Q(\if_in[7][4] ) );
  EDFFX1 \if_in_reg[5][1]  ( .D(if_in5[1]), .E(n4), .CK(clk), .Q(\if_in[5][1] ) );
  EDFFX1 \if_in_reg[2][5]  ( .D(if_in2[5]), .E(n5), .CK(clk), .Q(\if_in[2][5] ) );
  EDFFX1 \if_in_reg[0][1]  ( .D(if_in0[1]), .E(n4), .CK(clk), .Q(\if_in[0][1] ) );
  EDFFX1 \if_in_reg[6][5]  ( .D(if_in6[5]), .E(n7), .CK(clk), .Q(\if_in[6][5] ) );
  EDFFX1 \if_in_reg[6][2]  ( .D(if_in6[2]), .E(n7), .CK(clk), .Q(\if_in[6][2] ) );
  EDFFX1 \if_in_reg[4][1]  ( .D(if_in4[1]), .E(n6), .CK(clk), .Q(\if_in[4][1] ) );
  EDFFX1 \if_in_reg[2][1]  ( .D(if_in2[1]), .E(n5), .CK(clk), .Q(\if_in[2][1] ) );
  EDFFX2 \if_in_reg[4][2]  ( .D(if_in4[2]), .E(n6), .CK(clk), .Q(\if_in[4][2] ) );
  EDFFX1 \w_in_reg[6][5]  ( .D(w_in6[5]), .E(n12), .CK(clk), .Q(\w_in[6][5] )
         );
  EDFFX2 \w_in_reg[6][3]  ( .D(w_in6[3]), .E(n12), .CK(clk), .Q(\w_in[6][3] )
         );
  EDFFX2 \w_in_reg[2][1]  ( .D(w_in2[1]), .E(n10), .CK(clk), .Q(\w_in[2][1] )
         );
  EDFFX1 \if_in_reg[2][0]  ( .D(if_in2[0]), .E(n5), .CK(clk), .Q(\if_in[2][0] ) );
  EDFFX1 \if_in_reg[5][0]  ( .D(if_in5[0]), .E(n3), .CK(clk), .Q(\if_in[5][0] ) );
  EDFFX1 \if_in_reg[4][0]  ( .D(if_in4[0]), .E(n6), .CK(clk), .Q(\if_in[4][0] ) );
  EDFFX1 \w_in_reg[7][6]  ( .D(w_in7[6]), .E(n10), .CK(clk), .Q(\w_in[7][6] )
         );
  EDFFX1 \w_in_reg[7][7]  ( .D(w_in7[7]), .E(n8), .CK(clk), .Q(\w_in[7][7] )
         );
  EDFFX1 \w_in_reg[2][5]  ( .D(w_in2[5]), .E(n10), .CK(clk), .Q(\w_in[2][5] )
         );
  EDFFX1 \w_in_reg[1][5]  ( .D(w_in1[5]), .E(n10), .CK(clk), .Q(\w_in[1][5] )
         );
  EDFFX2 \w_in_reg[5][5]  ( .D(w_in5[5]), .E(n8), .CK(clk), .Q(\w_in[5][5] )
         );
  EDFFX2 \w_in_reg[0][3]  ( .D(w_in0[3]), .E(n9), .CK(clk), .Q(\w_in[0][3] )
         );
  EDFFX2 \w_in_reg[8][3]  ( .D(w_in8[3]), .E(n8), .CK(clk), .Q(\w_in[8][3] )
         );
  EDFFX1 \if_in_reg[3][0]  ( .D(if_in3[0]), .E(n6), .CK(clk), .Q(\if_in[3][0] ) );
  EDFFX1 \if_in_reg[7][0]  ( .D(if_in7[0]), .E(n7), .CK(clk), .Q(\if_in[7][0] ) );
  EDFFX2 \w_in_reg[3][0]  ( .D(w_in3[0]), .E(n11), .CK(clk), .Q(\w_in[3][0] )
         );
  EDFFX2 \w_in_reg[4][3]  ( .D(w_in4[3]), .E(n11), .CK(clk), .Q(\w_in[4][3] )
         );
  EDFFX2 \w_in_reg[5][3]  ( .D(w_in5[3]), .E(n11), .CK(clk), .Q(\w_in[5][3] )
         );
  EDFFX2 \w_in_reg[7][5]  ( .D(w_in7[5]), .E(n8), .CK(clk), .Q(\w_in[7][5] )
         );
  EDFFX2 \w_in_reg[0][1]  ( .D(w_in0[1]), .E(n9), .CK(clk), .Q(\w_in[0][1] )
         );
  EDFFX2 \w_in_reg[8][1]  ( .D(w_in8[1]), .E(n8), .CK(clk), .Q(\w_in[8][1] )
         );
  EDFFX2 \w_in_reg[3][3]  ( .D(w_in3[3]), .E(n11), .CK(clk), .Q(\w_in[3][3] )
         );
  EDFFX2 \w_in_reg[7][3]  ( .D(w_in7[3]), .E(n12), .CK(clk), .Q(\w_in[7][3] )
         );
  EDFFX1 \w_in_reg[0][5]  ( .D(w_in0[5]), .E(n9), .CK(clk), .Q(\w_in[0][5] )
         );
  EDFFX1 \w_in_reg[7][4]  ( .D(w_in7[4]), .E(n8), .CK(clk), .Q(\w_in[7][4] )
         );
  EDFFX1 \w_in_reg[3][2]  ( .D(w_in3[2]), .E(n11), .CK(clk), .Q(\w_in[3][2] )
         );
  EDFFHQX4 \w_in_reg[7][1]  ( .D(w_in7[1]), .E(n12), .CK(clk), .Q(n2) );
  EDFFX2 \if_in_reg[7][2]  ( .D(if_in7[2]), .E(n7), .CK(clk), .Q(\if_in[7][2] ) );
  EDFFX2 \if_in_reg[3][4]  ( .D(if_in3[4]), .E(n6), .CK(clk), .Q(\if_in[3][4] ) );
  EDFFX2 \if_in_reg[7][1]  ( .D(if_in7[1]), .E(n7), .CK(clk), .Q(\if_in[7][1] ) );
  EDFFX2 \if_in_reg[6][1]  ( .D(if_in6[1]), .E(n7), .CK(clk), .Q(\if_in[6][1] ) );
  EDFFX2 \if_in_reg[1][1]  ( .D(if_in1[1]), .E(n4), .CK(clk), .Q(\if_in[1][1] ) );
  CLKBUFX3 U6 ( .A(n8), .Y(n9) );
  CLKBUFX3 U7 ( .A(n8), .Y(n10) );
  CLKBUFX3 U8 ( .A(n8), .Y(n11) );
  CLKBUFX3 U9 ( .A(n8), .Y(n12) );
  CLKBUFX3 U10 ( .A(n3), .Y(n4) );
  CLKBUFX3 U11 ( .A(n3), .Y(n5) );
  CLKBUFX3 U12 ( .A(n3), .Y(n6) );
  CLKBUFX3 U13 ( .A(n3), .Y(n7) );
  CLKBUFX3 U14 ( .A(N284), .Y(n8) );
  NOR2BX1 U15 ( .AN(w_w), .B(rst), .Y(N284) );
  CLKBUFX3 U16 ( .A(N286), .Y(n3) );
  NOR2BX1 U17 ( .AN(if_w), .B(rst), .Y(N286) );
  INVX4 U18 ( .A(rst), .Y(n13) );
endmodule

