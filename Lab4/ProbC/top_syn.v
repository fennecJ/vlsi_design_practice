/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 27 13:24:59 2021
/////////////////////////////////////////////////////////////


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
         n192, n193, n194, n195, n196, n197, n198, n199, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251;

  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
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
  OAI22X1 U140 ( .A0(n237), .A1(n238), .B0(n199), .B1(n239), .Y(n62) );
  CLKBUFX6 U141 ( .A(n236), .Y(n199) );
  XNOR2X2 U142 ( .A(a[6]), .B(a[5]), .Y(n236) );
  ADDFHX4 U143 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  CLKXOR2X2 U144 ( .A(a[3]), .B(a[2]), .Y(n249) );
  XOR2X2 U145 ( .A(b[3]), .B(n208), .Y(n213) );
  ADDFHX4 U146 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFHX2 U147 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDHX1 U148 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  XOR2X4 U149 ( .A(n207), .B(b[0]), .Y(n218) );
  OAI21X2 U150 ( .A0(b[0]), .A1(n208), .B0(n197), .Y(n55) );
  XOR2XL U151 ( .A(n206), .B(b[0]), .Y(n227) );
  BUFX16 U152 ( .A(n190), .Y(n189) );
  XNOR2X2 U153 ( .A(a[2]), .B(a[1]), .Y(n190) );
  ADDFX2 U154 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  INVX8 U155 ( .A(a[1]), .Y(n208) );
  INVX6 U156 ( .A(a[3]), .Y(n207) );
  INVX8 U157 ( .A(a[5]), .Y(n206) );
  XOR2X2 U158 ( .A(b[2]), .B(n208), .Y(n212) );
  ADDHXL U159 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  XOR2X1 U160 ( .A(b[1]), .B(n208), .Y(n211) );
  OAI22XL U161 ( .A0(n213), .A1(n197), .B0(n214), .B1(n209), .Y(n84) );
  ADDFXL U162 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  OAI22XL U163 ( .A0(n214), .A1(n197), .B0(n215), .B1(n209), .Y(n83) );
  NAND2X1 U164 ( .A(n191), .B(n192), .Y(n69) );
  INVX6 U165 ( .A(a[0]), .Y(n209) );
  INVX3 U166 ( .A(b[0]), .Y(n204) );
  ADDFXL U167 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U168 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFX2 U169 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFX2 U170 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFX2 U171 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  OAI22X1 U172 ( .A0(n212), .A1(n197), .B0(n213), .B1(n209), .Y(n85) );
  XOR2X4 U173 ( .A(b[4]), .B(n208), .Y(n214) );
  ADDFHX2 U174 ( .A(n17), .B(n203), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFHX2 U175 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  OR2XL U176 ( .A(n229), .B(n228), .Y(n191) );
  OR2XL U177 ( .A(n198), .B(n230), .Y(n192) );
  XOR2X2 U178 ( .A(b[1]), .B(n206), .Y(n229) );
  NAND2X8 U179 ( .A(n198), .B(n250), .Y(n228) );
  OR2X2 U180 ( .A(n211), .B(n197), .Y(n193) );
  OR2XL U181 ( .A(n212), .B(n209), .Y(n194) );
  NAND2X2 U182 ( .A(n193), .B(n194), .Y(n86) );
  ADDFHX2 U183 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  OR2X4 U184 ( .A(n220), .B(n219), .Y(n195) );
  OR2XL U185 ( .A(n189), .B(n221), .Y(n196) );
  NAND2X1 U186 ( .A(n195), .B(n196), .Y(n77) );
  XOR2X4 U187 ( .A(b[2]), .B(n207), .Y(n221) );
  XOR2X1 U188 ( .A(b[4]), .B(n207), .Y(n223) );
  OAI22X2 U189 ( .A0(n218), .A1(n219), .B0(n189), .B1(n220), .Y(n78) );
  NAND2X8 U190 ( .A(n189), .B(n249), .Y(n219) );
  ADDHX2 U191 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  XOR2X4 U192 ( .A(b[6]), .B(n208), .Y(n216) );
  BUFX12 U193 ( .A(n226), .Y(n198) );
  XNOR2X1 U194 ( .A(a[4]), .B(a[3]), .Y(n226) );
  BUFX12 U195 ( .A(n210), .Y(n197) );
  NAND2X1 U196 ( .A(a[1]), .B(n209), .Y(n210) );
  XOR2X2 U197 ( .A(b[5]), .B(n208), .Y(n215) );
  OAI22X2 U198 ( .A0(n227), .A1(n228), .B0(n198), .B1(n229), .Y(n70) );
  XOR2X2 U199 ( .A(b[3]), .B(n207), .Y(n222) );
  XOR2X1 U200 ( .A(b[1]), .B(n207), .Y(n220) );
  NAND2X4 U201 ( .A(n199), .B(n251), .Y(n238) );
  INVX1 U202 ( .A(n29), .Y(n201) );
  OAI2BB1XL U203 ( .A0N(n209), .A1N(n197), .B0(n217), .Y(n246) );
  INVX1 U204 ( .A(n21), .Y(n202) );
  AO21XL U205 ( .A0(n228), .A1(n198), .B0(n235), .Y(n64) );
  ADDHX1 U206 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  OAI22X1 U207 ( .A0(b[0]), .A1(n197), .B0(n211), .B1(n209), .Y(n87) );
  XOR2XL U208 ( .A(b[2]), .B(n206), .Y(n230) );
  XOR2XL U209 ( .A(b[3]), .B(n206), .Y(n231) );
  XOR2XL U210 ( .A(b[1]), .B(n205), .Y(n239) );
  XOR2XL U211 ( .A(b[7]), .B(a[1]), .Y(n217) );
  XOR2XL U212 ( .A(b[4]), .B(n206), .Y(n232) );
  XOR2XL U213 ( .A(b[5]), .B(n206), .Y(n233) );
  XOR2XL U214 ( .A(b[2]), .B(n205), .Y(n240) );
  XOR2XL U215 ( .A(b[3]), .B(n205), .Y(n241) );
  XOR2XL U216 ( .A(b[5]), .B(n207), .Y(n224) );
  XOR2XL U217 ( .A(b[6]), .B(n207), .Y(n248) );
  XOR2XL U218 ( .A(b[7]), .B(n207), .Y(n225) );
  XOR2XL U219 ( .A(b[6]), .B(n206), .Y(n234) );
  XOR2XL U220 ( .A(b[4]), .B(n205), .Y(n242) );
  XOR2XL U221 ( .A(b[7]), .B(n206), .Y(n235) );
  XOR2XL U222 ( .A(b[6]), .B(n205), .Y(n244) );
  XOR2XL U223 ( .A(b[5]), .B(n205), .Y(n243) );
  XOR2XL U224 ( .A(b[7]), .B(n205), .Y(n245) );
  CLKINVX1 U225 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U226 ( .A(n15), .Y(n203) );
  ADDFXL U227 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  INVX3 U228 ( .A(a[7]), .Y(n205) );
  NOR2X1 U229 ( .A(n209), .B(n204), .Y(product[0]) );
  OAI22XL U230 ( .A0(n215), .A1(n197), .B0(n216), .B1(n209), .Y(n82) );
  OAI2BB2XL U231 ( .B0(n216), .B1(n197), .A0N(n217), .A1N(a[0]), .Y(n81) );
  NOR2X1 U232 ( .A(n189), .B(n204), .Y(n79) );
  OAI22XL U233 ( .A0(n221), .A1(n219), .B0(n189), .B1(n222), .Y(n76) );
  OAI22XL U234 ( .A0(n222), .A1(n219), .B0(n189), .B1(n223), .Y(n75) );
  OAI22XL U235 ( .A0(n223), .A1(n219), .B0(n189), .B1(n224), .Y(n74) );
  AO21X1 U236 ( .A0(n219), .A1(n189), .B0(n225), .Y(n72) );
  NOR2X1 U237 ( .A(n198), .B(n204), .Y(n71) );
  OAI22XL U238 ( .A0(n230), .A1(n228), .B0(n198), .B1(n231), .Y(n68) );
  OAI22XL U239 ( .A0(n231), .A1(n228), .B0(n198), .B1(n232), .Y(n67) );
  OAI22XL U240 ( .A0(n232), .A1(n228), .B0(n198), .B1(n233), .Y(n66) );
  OAI22XL U241 ( .A0(n233), .A1(n228), .B0(n198), .B1(n234), .Y(n65) );
  NOR2X1 U242 ( .A(n199), .B(n204), .Y(n63) );
  XOR2X1 U243 ( .A(n205), .B(b[0]), .Y(n237) );
  OAI22XL U244 ( .A0(n239), .A1(n238), .B0(n199), .B1(n240), .Y(n61) );
  OAI22XL U245 ( .A0(n240), .A1(n238), .B0(n199), .B1(n241), .Y(n60) );
  OAI22XL U246 ( .A0(n241), .A1(n238), .B0(n199), .B1(n242), .Y(n59) );
  OAI22XL U247 ( .A0(n242), .A1(n238), .B0(n199), .B1(n243), .Y(n58) );
  OAI22XL U248 ( .A0(n243), .A1(n238), .B0(n199), .B1(n244), .Y(n57) );
  AO21X1 U249 ( .A0(n238), .A1(n199), .B0(n245), .Y(n56) );
  OAI32X1 U250 ( .A0(n207), .A1(b[0]), .A2(n189), .B0(n207), .B1(n219), .Y(n54) );
  OAI32X1 U251 ( .A0(n206), .A1(b[0]), .A2(n198), .B0(n206), .B1(n228), .Y(n53) );
  OAI32X1 U252 ( .A0(n205), .A1(b[0]), .A2(n199), .B0(n205), .B1(n238), .Y(n52) );
  XOR2X1 U253 ( .A(n246), .B(n247), .Y(n35) );
  NAND2BX1 U254 ( .AN(n246), .B(n247), .Y(n34) );
  OA22X1 U255 ( .A0(n224), .A1(n219), .B0(n189), .B1(n248), .Y(n247) );
  OAI22XL U256 ( .A0(n189), .A1(n225), .B0(n248), .B1(n219), .Y(n29) );
  OAI22XL U257 ( .A0(n198), .A1(n235), .B0(n234), .B1(n228), .Y(n21) );
  XOR2X1 U258 ( .A(a[5]), .B(a[4]), .Y(n250) );
  OAI22XL U259 ( .A0(n199), .A1(n245), .B0(n244), .B1(n238), .Y(n15) );
  XOR2X1 U260 ( .A(a[7]), .B(a[6]), .Y(n251) );
endmodule


module CONV_DW_mult_tc_4 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77,
         n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251;

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
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFX2 U140 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  XOR2X1 U141 ( .A(b[1]), .B(n205), .Y(n239) );
  INVX6 U142 ( .A(a[7]), .Y(n205) );
  ADDFHX1 U143 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  OAI22X1 U144 ( .A0(n237), .A1(n238), .B0(n199), .B1(n239), .Y(n62) );
  OAI22X1 U145 ( .A0(n239), .A1(n238), .B0(n199), .B1(n240), .Y(n61) );
  BUFX12 U146 ( .A(n236), .Y(n199) );
  XNOR2X2 U147 ( .A(a[6]), .B(a[5]), .Y(n236) );
  ADDFHX4 U148 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFHX2 U149 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  XOR2X2 U150 ( .A(b[2]), .B(n208), .Y(n212) );
  CLKINVX8 U151 ( .A(a[1]), .Y(n208) );
  ADDHX1 U152 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  XOR2X2 U153 ( .A(b[4]), .B(n207), .Y(n223) );
  XOR2X2 U154 ( .A(b[4]), .B(n208), .Y(n214) );
  OR2XL U155 ( .A(n211), .B(n189), .Y(n192) );
  XOR2X4 U156 ( .A(b[1]), .B(n208), .Y(n211) );
  BUFX12 U157 ( .A(n210), .Y(n189) );
  INVX6 U158 ( .A(a[0]), .Y(n209) );
  OR2X4 U159 ( .A(n196), .B(n197), .Y(n55) );
  XOR2X2 U160 ( .A(b[3]), .B(n208), .Y(n213) );
  ADDFHX1 U161 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  XOR2X1 U162 ( .A(n85), .B(n78), .Y(n51) );
  INVX3 U163 ( .A(a[5]), .Y(n206) );
  NAND2X6 U164 ( .A(n198), .B(n250), .Y(n228) );
  CLKINVX1 U165 ( .A(n189), .Y(n197) );
  INVX3 U166 ( .A(a[3]), .Y(n207) );
  ADDFX2 U167 ( .A(n49), .B(n191), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U168 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U169 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U170 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  NAND2X4 U171 ( .A(n190), .B(n249), .Y(n219) );
  OAI22X2 U172 ( .A0(n218), .A1(n219), .B0(n190), .B1(n220), .Y(n78) );
  OAI32XL U173 ( .A0(n207), .A1(b[0]), .A2(n190), .B0(n207), .B1(n219), .Y(n54) );
  XNOR2X4 U174 ( .A(a[2]), .B(a[1]), .Y(n190) );
  AND2X2 U175 ( .A(n85), .B(n78), .Y(n191) );
  ADDFHX2 U176 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  XOR2X1 U177 ( .A(b[1]), .B(n206), .Y(n229) );
  OAI22X1 U178 ( .A0(n212), .A1(n189), .B0(n213), .B1(n209), .Y(n85) );
  OR2XL U179 ( .A(n212), .B(n209), .Y(n193) );
  NAND2X1 U180 ( .A(n192), .B(n193), .Y(n86) );
  NOR2XL U181 ( .A(n213), .B(n189), .Y(n194) );
  NOR2XL U182 ( .A(n214), .B(n209), .Y(n195) );
  OR2X2 U183 ( .A(n194), .B(n195), .Y(n84) );
  NAND2X2 U184 ( .A(a[1]), .B(n209), .Y(n210) );
  ADDFHX2 U185 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  NOR2XL U186 ( .A(b[0]), .B(n208), .Y(n196) );
  ADDHX2 U187 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFX1 U188 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  BUFX8 U189 ( .A(n226), .Y(n198) );
  XOR2X1 U190 ( .A(b[1]), .B(n207), .Y(n220) );
  NAND2X4 U191 ( .A(n199), .B(n251), .Y(n238) );
  CMPR32X2 U192 ( .A(n19), .B(n18), .C(n4), .CO(n3), .S(product[12]) );
  CMPR32X2 U193 ( .A(n17), .B(n203), .C(n3), .CO(n2), .S(product[13]) );
  INVX1 U194 ( .A(n15), .Y(n203) );
  INVX1 U195 ( .A(n29), .Y(n201) );
  ADDFX1 U196 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  OAI2BB1XL U197 ( .A0N(n209), .A1N(n189), .B0(n217), .Y(n246) );
  INVX1 U198 ( .A(n21), .Y(n202) );
  OAI22X1 U199 ( .A0(b[0]), .A1(n189), .B0(n211), .B1(n209), .Y(n87) );
  XOR2XL U200 ( .A(b[3]), .B(n207), .Y(n222) );
  XOR2XL U201 ( .A(b[5]), .B(n208), .Y(n215) );
  INVX1 U202 ( .A(b[0]), .Y(n204) );
  XOR2XL U203 ( .A(b[2]), .B(n206), .Y(n230) );
  XOR2XL U204 ( .A(b[3]), .B(n206), .Y(n231) );
  XOR2XL U205 ( .A(b[6]), .B(n208), .Y(n216) );
  XOR2XL U206 ( .A(b[5]), .B(n207), .Y(n224) );
  XOR2XL U207 ( .A(b[7]), .B(a[1]), .Y(n217) );
  XOR2XL U208 ( .A(b[4]), .B(n206), .Y(n232) );
  XOR2XL U209 ( .A(b[5]), .B(n206), .Y(n233) );
  XOR2XL U210 ( .A(b[2]), .B(n205), .Y(n240) );
  XOR2XL U211 ( .A(b[3]), .B(n205), .Y(n241) );
  XOR2XL U212 ( .A(b[6]), .B(n207), .Y(n248) );
  XOR2XL U213 ( .A(b[7]), .B(n207), .Y(n225) );
  XOR2XL U214 ( .A(b[6]), .B(n206), .Y(n234) );
  XOR2XL U215 ( .A(b[4]), .B(n205), .Y(n242) );
  XOR2XL U216 ( .A(b[7]), .B(n206), .Y(n235) );
  XOR2XL U217 ( .A(b[6]), .B(n205), .Y(n244) );
  XOR2XL U218 ( .A(b[5]), .B(n205), .Y(n243) );
  XOR2XL U219 ( .A(b[7]), .B(n205), .Y(n245) );
  CLKINVX1 U220 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U221 ( .A(a[4]), .B(a[3]), .Y(n226) );
  NOR2X1 U222 ( .A(n209), .B(n204), .Y(product[0]) );
  OAI22XL U223 ( .A0(n214), .A1(n189), .B0(n215), .B1(n209), .Y(n83) );
  OAI22XL U224 ( .A0(n215), .A1(n189), .B0(n216), .B1(n209), .Y(n82) );
  OAI2BB2XL U225 ( .B0(n216), .B1(n189), .A0N(n217), .A1N(a[0]), .Y(n81) );
  NOR2X1 U226 ( .A(n190), .B(n204), .Y(n79) );
  XOR2X1 U227 ( .A(n207), .B(b[0]), .Y(n218) );
  OAI22XL U228 ( .A0(n220), .A1(n219), .B0(n190), .B1(n221), .Y(n77) );
  OAI22XL U229 ( .A0(n221), .A1(n219), .B0(n190), .B1(n222), .Y(n76) );
  XOR2X1 U230 ( .A(b[2]), .B(n207), .Y(n221) );
  OAI22XL U231 ( .A0(n222), .A1(n219), .B0(n190), .B1(n223), .Y(n75) );
  OAI22XL U232 ( .A0(n223), .A1(n219), .B0(n190), .B1(n224), .Y(n74) );
  AO21X1 U233 ( .A0(n219), .A1(n190), .B0(n225), .Y(n72) );
  NOR2X1 U234 ( .A(n198), .B(n204), .Y(n71) );
  OAI22XL U235 ( .A0(n227), .A1(n228), .B0(n198), .B1(n229), .Y(n70) );
  XOR2X1 U236 ( .A(n206), .B(b[0]), .Y(n227) );
  OAI22XL U237 ( .A0(n229), .A1(n228), .B0(n198), .B1(n230), .Y(n69) );
  OAI22XL U238 ( .A0(n230), .A1(n228), .B0(n198), .B1(n231), .Y(n68) );
  OAI22XL U239 ( .A0(n231), .A1(n228), .B0(n198), .B1(n232), .Y(n67) );
  OAI22XL U240 ( .A0(n232), .A1(n228), .B0(n198), .B1(n233), .Y(n66) );
  OAI22XL U241 ( .A0(n233), .A1(n228), .B0(n198), .B1(n234), .Y(n65) );
  AO21X1 U242 ( .A0(n228), .A1(n198), .B0(n235), .Y(n64) );
  NOR2X1 U243 ( .A(n199), .B(n204), .Y(n63) );
  XOR2X1 U244 ( .A(n205), .B(b[0]), .Y(n237) );
  OAI22XL U245 ( .A0(n240), .A1(n238), .B0(n199), .B1(n241), .Y(n60) );
  OAI22XL U246 ( .A0(n241), .A1(n238), .B0(n199), .B1(n242), .Y(n59) );
  OAI22XL U247 ( .A0(n242), .A1(n238), .B0(n199), .B1(n243), .Y(n58) );
  OAI22XL U248 ( .A0(n243), .A1(n238), .B0(n199), .B1(n244), .Y(n57) );
  AO21X1 U249 ( .A0(n238), .A1(n199), .B0(n245), .Y(n56) );
  OAI32X1 U250 ( .A0(n206), .A1(b[0]), .A2(n198), .B0(n206), .B1(n228), .Y(n53) );
  OAI32X1 U251 ( .A0(n205), .A1(b[0]), .A2(n199), .B0(n205), .B1(n238), .Y(n52) );
  XOR2X1 U252 ( .A(n246), .B(n247), .Y(n35) );
  NAND2BX1 U253 ( .AN(n246), .B(n247), .Y(n34) );
  OA22X1 U254 ( .A0(n224), .A1(n219), .B0(n190), .B1(n248), .Y(n247) );
  OAI22XL U255 ( .A0(n190), .A1(n225), .B0(n248), .B1(n219), .Y(n29) );
  XOR2X1 U256 ( .A(a[3]), .B(a[2]), .Y(n249) );
  OAI22XL U257 ( .A0(n198), .A1(n235), .B0(n234), .B1(n228), .Y(n21) );
  XOR2X1 U258 ( .A(a[5]), .B(a[4]), .Y(n250) );
  OAI22XL U259 ( .A0(n199), .A1(n245), .B0(n244), .B1(n238), .Y(n15) );
  XOR2X1 U260 ( .A(a[7]), .B(a[6]), .Y(n251) );
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
         n192, n193, n194, n195, n196, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249;

  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n199), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n198), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDFX2 U140 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  OAI22XL U141 ( .A0(n219), .A1(n217), .B0(n215), .B1(n220), .Y(n76) );
  XOR2X1 U142 ( .A(b[3]), .B(n204), .Y(n220) );
  ADDHXL U143 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OAI21X1 U144 ( .A0(b[0]), .A1(n205), .B0(n189), .Y(n55) );
  ADDHX1 U145 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  ADDFHX4 U146 ( .A(n17), .B(n200), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFHX2 U147 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  XOR2X2 U148 ( .A(b[4]), .B(n205), .Y(n211) );
  XOR2X4 U149 ( .A(a[2]), .B(a[1]), .Y(n194) );
  XOR2X1 U150 ( .A(b[1]), .B(n202), .Y(n237) );
  INVX6 U151 ( .A(a[7]), .Y(n202) );
  NAND2X8 U152 ( .A(n215), .B(n247), .Y(n217) );
  CLKXOR2X2 U153 ( .A(a[3]), .B(a[2]), .Y(n247) );
  BUFX8 U154 ( .A(n207), .Y(n189) );
  NAND2X1 U155 ( .A(a[1]), .B(n206), .Y(n207) );
  OR2X1 U156 ( .A(n216), .B(n217), .Y(n190) );
  XOR2X1 U157 ( .A(b[1]), .B(n204), .Y(n218) );
  BUFX8 U158 ( .A(n224), .Y(n195) );
  INVX8 U159 ( .A(a[1]), .Y(n205) );
  INVX8 U160 ( .A(a[0]), .Y(n206) );
  ADDFX2 U161 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U162 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U163 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  OAI22X1 U164 ( .A0(n209), .A1(n189), .B0(n210), .B1(n206), .Y(n85) );
  OR2XL U165 ( .A(n215), .B(n218), .Y(n191) );
  NAND2X1 U166 ( .A(n190), .B(n191), .Y(n78) );
  INVX12 U167 ( .A(n194), .Y(n215) );
  NOR2XL U168 ( .A(n212), .B(n189), .Y(n192) );
  NOR2X1 U169 ( .A(n213), .B(n206), .Y(n193) );
  OR2X1 U170 ( .A(n192), .B(n193), .Y(n82) );
  XOR2X4 U171 ( .A(b[5]), .B(n205), .Y(n212) );
  XOR2X1 U172 ( .A(b[2]), .B(n204), .Y(n219) );
  OAI22X1 U173 ( .A0(n210), .A1(n189), .B0(n211), .B1(n206), .Y(n84) );
  ADDFHX2 U174 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  OAI22X1 U175 ( .A0(n218), .A1(n217), .B0(n215), .B1(n219), .Y(n77) );
  NAND2X4 U176 ( .A(n195), .B(n248), .Y(n226) );
  ADDHX1 U177 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  XOR2XL U178 ( .A(b[6]), .B(n205), .Y(n213) );
  INVX12 U179 ( .A(a[3]), .Y(n204) );
  INVX12 U180 ( .A(a[5]), .Y(n203) );
  OAI22X1 U181 ( .A0(b[0]), .A1(n189), .B0(n208), .B1(n206), .Y(n87) );
  ADDFX1 U182 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFX1 U183 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFX1 U184 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  OAI22X1 U185 ( .A0(n225), .A1(n226), .B0(n195), .B1(n227), .Y(n70) );
  NAND2X2 U186 ( .A(n196), .B(n249), .Y(n236) );
  ADDFX2 U187 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  INVX1 U188 ( .A(n29), .Y(n198) );
  CMPR32X2 U189 ( .A(n15), .B(n56), .C(n2), .CO(n1), .S(product[14]) );
  OAI2BB1XL U190 ( .A0N(n206), .A1N(n189), .B0(n214), .Y(n244) );
  INVX1 U191 ( .A(n21), .Y(n199) );
  AO21XL U192 ( .A0(n226), .A1(n195), .B0(n233), .Y(n64) );
  XOR2XL U193 ( .A(n204), .B(b[0]), .Y(n216) );
  ADDHX1 U194 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  XOR2XL U195 ( .A(b[1]), .B(n203), .Y(n227) );
  INVX1 U196 ( .A(b[0]), .Y(n201) );
  XOR2XL U197 ( .A(b[4]), .B(n204), .Y(n221) );
  XOR2XL U198 ( .A(b[2]), .B(n203), .Y(n228) );
  XOR2XL U199 ( .A(b[3]), .B(n203), .Y(n229) );
  XOR2XL U200 ( .A(b[5]), .B(n204), .Y(n222) );
  XOR2XL U201 ( .A(b[7]), .B(a[1]), .Y(n214) );
  XOR2XL U202 ( .A(b[4]), .B(n203), .Y(n230) );
  XOR2XL U203 ( .A(b[5]), .B(n203), .Y(n231) );
  XOR2XL U204 ( .A(b[2]), .B(n202), .Y(n238) );
  XOR2XL U205 ( .A(b[3]), .B(n202), .Y(n239) );
  XOR2XL U206 ( .A(b[6]), .B(n204), .Y(n246) );
  XOR2XL U207 ( .A(b[7]), .B(n204), .Y(n223) );
  XOR2XL U208 ( .A(b[6]), .B(n203), .Y(n232) );
  XOR2XL U209 ( .A(b[4]), .B(n202), .Y(n240) );
  XOR2XL U210 ( .A(b[5]), .B(n202), .Y(n241) );
  XOR2XL U211 ( .A(b[7]), .B(n203), .Y(n233) );
  XOR2XL U212 ( .A(b[6]), .B(n202), .Y(n242) );
  XOR2XL U213 ( .A(b[7]), .B(n202), .Y(n243) );
  CLKINVX1 U214 ( .A(n15), .Y(n200) );
  CLKINVX1 U215 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U216 ( .A(a[4]), .B(a[3]), .Y(n224) );
  CLKBUFX3 U217 ( .A(n234), .Y(n196) );
  XNOR2X1 U218 ( .A(a[6]), .B(a[5]), .Y(n234) );
  NOR2X1 U219 ( .A(n206), .B(n201), .Y(product[0]) );
  OAI22XL U220 ( .A0(n208), .A1(n189), .B0(n209), .B1(n206), .Y(n86) );
  XOR2X1 U221 ( .A(b[1]), .B(n205), .Y(n208) );
  XOR2X1 U222 ( .A(b[2]), .B(n205), .Y(n209) );
  XOR2X1 U223 ( .A(b[3]), .B(n205), .Y(n210) );
  OAI22XL U224 ( .A0(n211), .A1(n189), .B0(n212), .B1(n206), .Y(n83) );
  OAI2BB2XL U225 ( .B0(n213), .B1(n189), .A0N(n214), .A1N(a[0]), .Y(n81) );
  NOR2X1 U226 ( .A(n215), .B(n201), .Y(n79) );
  OAI22XL U227 ( .A0(n220), .A1(n217), .B0(n215), .B1(n221), .Y(n75) );
  OAI22XL U228 ( .A0(n221), .A1(n217), .B0(n215), .B1(n222), .Y(n74) );
  AO21X1 U229 ( .A0(n217), .A1(n215), .B0(n223), .Y(n72) );
  NOR2X1 U230 ( .A(n195), .B(n201), .Y(n71) );
  XOR2X1 U231 ( .A(n203), .B(b[0]), .Y(n225) );
  OAI22XL U232 ( .A0(n227), .A1(n226), .B0(n195), .B1(n228), .Y(n69) );
  OAI22XL U233 ( .A0(n228), .A1(n226), .B0(n195), .B1(n229), .Y(n68) );
  OAI22XL U234 ( .A0(n229), .A1(n226), .B0(n195), .B1(n230), .Y(n67) );
  OAI22XL U235 ( .A0(n230), .A1(n226), .B0(n195), .B1(n231), .Y(n66) );
  OAI22XL U236 ( .A0(n231), .A1(n226), .B0(n195), .B1(n232), .Y(n65) );
  NOR2X1 U237 ( .A(n196), .B(n201), .Y(n63) );
  OAI22XL U238 ( .A0(n235), .A1(n236), .B0(n196), .B1(n237), .Y(n62) );
  XOR2X1 U239 ( .A(n202), .B(b[0]), .Y(n235) );
  OAI22XL U240 ( .A0(n237), .A1(n236), .B0(n196), .B1(n238), .Y(n61) );
  OAI22XL U241 ( .A0(n238), .A1(n236), .B0(n196), .B1(n239), .Y(n60) );
  OAI22XL U242 ( .A0(n239), .A1(n236), .B0(n196), .B1(n240), .Y(n59) );
  OAI22XL U243 ( .A0(n240), .A1(n236), .B0(n196), .B1(n241), .Y(n58) );
  OAI22XL U244 ( .A0(n241), .A1(n236), .B0(n196), .B1(n242), .Y(n57) );
  AO21X1 U245 ( .A0(n236), .A1(n196), .B0(n243), .Y(n56) );
  OAI32X1 U246 ( .A0(n204), .A1(b[0]), .A2(n215), .B0(n204), .B1(n217), .Y(n54) );
  OAI32X1 U247 ( .A0(n203), .A1(b[0]), .A2(n195), .B0(n203), .B1(n226), .Y(n53) );
  OAI32X1 U248 ( .A0(n202), .A1(b[0]), .A2(n196), .B0(n202), .B1(n236), .Y(n52) );
  XOR2X1 U249 ( .A(n244), .B(n245), .Y(n35) );
  NAND2BX1 U250 ( .AN(n244), .B(n245), .Y(n34) );
  OA22X1 U251 ( .A0(n222), .A1(n217), .B0(n215), .B1(n246), .Y(n245) );
  OAI22XL U252 ( .A0(n215), .A1(n223), .B0(n246), .B1(n217), .Y(n29) );
  OAI22XL U253 ( .A0(n195), .A1(n233), .B0(n232), .B1(n226), .Y(n21) );
  XOR2X1 U254 ( .A(a[5]), .B(a[4]), .Y(n248) );
  OAI22XL U255 ( .A0(n196), .A1(n243), .B0(n242), .B1(n236), .Y(n15) );
  XOR2X1 U256 ( .A(a[7]), .B(a[6]), .Y(n249) );
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
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247;

  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n198), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X2 U140 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  OAI22X1 U141 ( .A0(n225), .A1(n224), .B0(n194), .B1(n226), .Y(n69) );
  XOR2X1 U142 ( .A(b[1]), .B(n203), .Y(n216) );
  CLKINVX6 U143 ( .A(a[3]), .Y(n203) );
  XOR2X4 U144 ( .A(a[7]), .B(a[6]), .Y(n247) );
  OAI22X1 U145 ( .A0(n218), .A1(n215), .B0(n190), .B1(n219), .Y(n75) );
  CMPR42X2 U146 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), 
        .ICO(n36), .CO(n37) );
  ADDHX1 U147 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CLKXOR2X2 U148 ( .A(b[2]), .B(n204), .Y(n208) );
  OAI22XL U149 ( .A0(n233), .A1(n234), .B0(n195), .B1(n235), .Y(n62) );
  OAI22XL U150 ( .A0(n235), .A1(n234), .B0(n195), .B1(n236), .Y(n61) );
  XOR2X2 U151 ( .A(b[1]), .B(n201), .Y(n235) );
  ADDFHX2 U152 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  OAI22X1 U153 ( .A0(n210), .A1(n206), .B0(n211), .B1(n205), .Y(n83) );
  CMPR22X2 U154 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X2 U155 ( .A0(n208), .A1(n206), .B0(n209), .B1(n205), .Y(n85) );
  ADDFHX1 U156 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  OAI22X1 U157 ( .A0(n209), .A1(n206), .B0(n210), .B1(n205), .Y(n84) );
  INVX6 U158 ( .A(n191), .Y(n189) );
  CLKINVX12 U159 ( .A(n189), .Y(n190) );
  XNOR2X2 U160 ( .A(a[2]), .B(a[1]), .Y(n191) );
  OAI22X1 U161 ( .A0(n216), .A1(n215), .B0(n190), .B1(n217), .Y(n77) );
  NAND2X8 U162 ( .A(n190), .B(n245), .Y(n215) );
  XOR2X2 U163 ( .A(b[2]), .B(n203), .Y(n217) );
  OAI22X2 U164 ( .A0(n214), .A1(n215), .B0(n190), .B1(n216), .Y(n78) );
  OR2X4 U165 ( .A(n223), .B(n224), .Y(n192) );
  CLKXOR2X1 U166 ( .A(n202), .B(b[0]), .Y(n223) );
  OAI22X2 U167 ( .A0(n211), .A1(n206), .B0(n212), .B1(n205), .Y(n82) );
  OAI2BB2X1 U168 ( .B0(n212), .B1(n206), .A0N(n213), .A1N(a[0]), .Y(n81) );
  CLKXOR2X1 U169 ( .A(b[6]), .B(n204), .Y(n212) );
  ADDFHX2 U170 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  NOR2X1 U171 ( .A(n190), .B(n200), .Y(n79) );
  XOR2X1 U172 ( .A(b[2]), .B(n202), .Y(n226) );
  INVX8 U173 ( .A(a[5]), .Y(n202) );
  XNOR2X1 U174 ( .A(a[4]), .B(a[3]), .Y(n222) );
  BUFX12 U175 ( .A(n232), .Y(n195) );
  XOR2X4 U176 ( .A(a[5]), .B(a[4]), .Y(n246) );
  XOR2X4 U177 ( .A(b[5]), .B(n204), .Y(n211) );
  CLKINVX8 U178 ( .A(a[1]), .Y(n204) );
  OAI22X2 U179 ( .A0(n207), .A1(n206), .B0(n208), .B1(n205), .Y(n86) );
  XOR2X2 U180 ( .A(b[1]), .B(n204), .Y(n207) );
  INVX20 U181 ( .A(a[0]), .Y(n205) );
  OAI21X1 U182 ( .A0(b[0]), .A1(n204), .B0(n206), .Y(n55) );
  NAND2X8 U183 ( .A(a[1]), .B(n205), .Y(n206) );
  ADDHX1 U184 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  NAND2X2 U185 ( .A(n192), .B(n193), .Y(n70) );
  NAND2X4 U186 ( .A(n194), .B(n246), .Y(n224) );
  ADDFXL U187 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U188 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFX2 U189 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U190 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDHX1 U191 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OR2X2 U192 ( .A(n194), .B(n225), .Y(n193) );
  BUFX12 U193 ( .A(n222), .Y(n194) );
  XOR2X1 U194 ( .A(b[1]), .B(n202), .Y(n225) );
  ADDFX1 U195 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFHX1 U196 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFX1 U197 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  OAI22X1 U198 ( .A0(b[0]), .A1(n206), .B0(n207), .B1(n205), .Y(n87) );
  INVX3 U199 ( .A(b[0]), .Y(n200) );
  ADDFX2 U200 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  XOR2X1 U201 ( .A(b[4]), .B(n204), .Y(n210) );
  XOR2X1 U202 ( .A(b[3]), .B(n204), .Y(n209) );
  NAND2X4 U203 ( .A(n195), .B(n247), .Y(n234) );
  CMPR32X2 U204 ( .A(n19), .B(n18), .C(n4), .CO(n3), .S(product[12]) );
  CMPR32X2 U205 ( .A(n17), .B(n199), .C(n3), .CO(n2), .S(product[13]) );
  INVX1 U206 ( .A(n29), .Y(n197) );
  ADDFX1 U207 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  OAI2BB1XL U208 ( .A0N(n205), .A1N(n206), .B0(n213), .Y(n242) );
  INVX1 U209 ( .A(n21), .Y(n198) );
  XOR2XL U210 ( .A(b[4]), .B(n203), .Y(n219) );
  XOR2XL U211 ( .A(b[3]), .B(n202), .Y(n227) );
  XOR2XL U212 ( .A(b[7]), .B(a[1]), .Y(n213) );
  XOR2XL U213 ( .A(b[4]), .B(n202), .Y(n228) );
  XOR2XL U214 ( .A(b[5]), .B(n202), .Y(n229) );
  XOR2XL U215 ( .A(b[2]), .B(n201), .Y(n236) );
  XOR2XL U216 ( .A(b[5]), .B(n203), .Y(n220) );
  XOR2XL U217 ( .A(b[6]), .B(n203), .Y(n244) );
  XOR2XL U218 ( .A(b[7]), .B(n203), .Y(n221) );
  XOR2XL U219 ( .A(b[6]), .B(n202), .Y(n230) );
  XOR2XL U220 ( .A(b[3]), .B(n201), .Y(n237) );
  XOR2XL U221 ( .A(b[4]), .B(n201), .Y(n238) );
  XOR2XL U222 ( .A(b[7]), .B(n202), .Y(n231) );
  XOR2XL U223 ( .A(b[6]), .B(n201), .Y(n240) );
  XOR2XL U224 ( .A(b[5]), .B(n201), .Y(n239) );
  XOR2XL U225 ( .A(b[7]), .B(n201), .Y(n241) );
  CLKINVX1 U226 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U227 ( .A(n15), .Y(n199) );
  XNOR2X1 U228 ( .A(a[6]), .B(a[5]), .Y(n232) );
  INVX3 U229 ( .A(a[7]), .Y(n201) );
  NOR2X1 U230 ( .A(n205), .B(n200), .Y(product[0]) );
  XOR2X1 U231 ( .A(n203), .B(b[0]), .Y(n214) );
  OAI22XL U232 ( .A0(n217), .A1(n215), .B0(n190), .B1(n218), .Y(n76) );
  XOR2X1 U233 ( .A(b[3]), .B(n203), .Y(n218) );
  OAI22XL U234 ( .A0(n219), .A1(n215), .B0(n190), .B1(n220), .Y(n74) );
  AO21X1 U235 ( .A0(n215), .A1(n190), .B0(n221), .Y(n72) );
  NOR2X1 U236 ( .A(n194), .B(n200), .Y(n71) );
  OAI22XL U237 ( .A0(n226), .A1(n224), .B0(n194), .B1(n227), .Y(n68) );
  OAI22XL U238 ( .A0(n227), .A1(n224), .B0(n194), .B1(n228), .Y(n67) );
  OAI22XL U239 ( .A0(n228), .A1(n224), .B0(n194), .B1(n229), .Y(n66) );
  OAI22XL U240 ( .A0(n229), .A1(n224), .B0(n194), .B1(n230), .Y(n65) );
  AO21X1 U241 ( .A0(n224), .A1(n194), .B0(n231), .Y(n64) );
  NOR2X1 U242 ( .A(n195), .B(n200), .Y(n63) );
  XOR2X1 U243 ( .A(n201), .B(b[0]), .Y(n233) );
  OAI22XL U244 ( .A0(n236), .A1(n234), .B0(n195), .B1(n237), .Y(n60) );
  OAI22XL U245 ( .A0(n237), .A1(n234), .B0(n195), .B1(n238), .Y(n59) );
  OAI22XL U246 ( .A0(n238), .A1(n234), .B0(n195), .B1(n239), .Y(n58) );
  OAI22XL U247 ( .A0(n239), .A1(n234), .B0(n195), .B1(n240), .Y(n57) );
  AO21X1 U248 ( .A0(n234), .A1(n195), .B0(n241), .Y(n56) );
  OAI32X1 U249 ( .A0(n203), .A1(b[0]), .A2(n190), .B0(n203), .B1(n215), .Y(n54) );
  OAI32X1 U250 ( .A0(n202), .A1(b[0]), .A2(n194), .B0(n202), .B1(n224), .Y(n53) );
  OAI32X1 U251 ( .A0(n201), .A1(b[0]), .A2(n195), .B0(n201), .B1(n234), .Y(n52) );
  XOR2X1 U252 ( .A(n242), .B(n243), .Y(n35) );
  NAND2BX1 U253 ( .AN(n242), .B(n243), .Y(n34) );
  OA22X1 U254 ( .A0(n220), .A1(n215), .B0(n190), .B1(n244), .Y(n243) );
  OAI22XL U255 ( .A0(n190), .A1(n221), .B0(n244), .B1(n215), .Y(n29) );
  XOR2X1 U256 ( .A(a[3]), .B(a[2]), .Y(n245) );
  OAI22XL U257 ( .A0(n194), .A1(n231), .B0(n230), .B1(n224), .Y(n21) );
  OAI22XL U258 ( .A0(n195), .A1(n241), .B0(n240), .B1(n234), .Y(n15) );
endmodule


module CONV_DW01_add_7 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [16:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPR32X2 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  NAND3X2 U1 ( .A(n3), .B(n4), .C(n5), .Y(carry[15]) );
  NAND2X2 U2 ( .A(A[14]), .B(carry[14]), .Y(n3) );
  NAND2X2 U3 ( .A(B[14]), .B(carry[14]), .Y(n4) );
  CLKXOR2X2 U4 ( .A(carry[14]), .B(n2), .Y(SUM[14]) );
  AND2X2 U5 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U6 ( .A(A[14]), .B(B[14]), .Y(n2) );
  NAND2X1 U7 ( .A(B[14]), .B(A[14]), .Y(n5) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_6 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_5 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CMPR32X2 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X2 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFHX4 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_2 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX4 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW_mult_tc_17 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n208,
         n209, n210, n211, n212, n213, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n228, n229, n230, n231, n232, n233, n234, n235,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290;

  XOR2X1 U230 ( .A(a[7]), .B(a[6]), .Y(n208) );
  INVX4 U231 ( .A(a[0]), .Y(n235) );
  OAI22X1 U232 ( .A0(n212), .A1(n171), .B0(n170), .B1(n216), .Y(n136) );
  BUFX6 U233 ( .A(n228), .Y(n212) );
  NAND2BX1 U234 ( .AN(n55), .B(n56), .Y(n9) );
  ADDHX1 U235 ( .A(n129), .B(n159), .CO(n122), .S(n123) );
  OR2X1 U236 ( .A(n267), .B(n268), .Y(n129) );
  OAI22X4 U237 ( .A0(n215), .A1(n198), .B0(n197), .B1(n219), .Y(n163) );
  BUFX2 U238 ( .A(n235), .Y(n219) );
  OAI22X1 U239 ( .A0(n212), .A1(n170), .B0(n169), .B1(n216), .Y(n135) );
  XNOR2XL U240 ( .A(a[7]), .B(b[0]), .Y(n171) );
  NAND2BXL U241 ( .AN(b[0]), .B(a[7]), .Y(n172) );
  XNOR2XL U242 ( .A(a[5]), .B(b[0]), .Y(n180) );
  NAND2BXL U243 ( .AN(b[0]), .B(a[5]), .Y(n181) );
  NAND2BXL U244 ( .AN(b[0]), .B(a[1]), .Y(n199) );
  INVX4 U245 ( .A(b[0]), .Y(n269) );
  OAI21X1 U246 ( .A0(n57), .A1(n55), .B0(n56), .Y(n54) );
  INVX3 U247 ( .A(n58), .Y(n57) );
  XNOR2XL U248 ( .A(b[3]), .B(a[1]), .Y(n195) );
  XNOR2XL U249 ( .A(b[3]), .B(a[5]), .Y(n177) );
  XNOR2XL U250 ( .A(b[3]), .B(a[3]), .Y(n186) );
  XNOR2XL U251 ( .A(b[5]), .B(a[1]), .Y(n193) );
  XNOR2XL U252 ( .A(b[5]), .B(a[5]), .Y(n175) );
  AND2X4 U253 ( .A(n66), .B(n62), .Y(n286) );
  OAI21X1 U254 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  NAND2X2 U255 ( .A(n127), .B(n161), .Y(n68) );
  OAI22X1 U256 ( .A0(n215), .A1(n196), .B0(n195), .B1(n219), .Y(n161) );
  INVX1 U257 ( .A(a[2]), .Y(n273) );
  NAND2X2 U258 ( .A(n282), .B(n283), .Y(n233) );
  NAND2X2 U259 ( .A(n287), .B(n288), .Y(n290) );
  OR2X1 U260 ( .A(n276), .B(n277), .Y(n144) );
  NOR2X4 U261 ( .A(n286), .B(n63), .Y(n61) );
  XNOR2X1 U262 ( .A(b[1]), .B(a[7]), .Y(n170) );
  XNOR2X1 U263 ( .A(b[6]), .B(a[1]), .Y(n192) );
  XNOR2X1 U264 ( .A(b[2]), .B(a[7]), .Y(n169) );
  OAI22X1 U265 ( .A0(n215), .A1(n197), .B0(n196), .B1(n219), .Y(n162) );
  XNOR2X1 U266 ( .A(b[1]), .B(a[3]), .Y(n188) );
  XNOR2X1 U267 ( .A(b[2]), .B(a[3]), .Y(n187) );
  XNOR2X1 U268 ( .A(b[6]), .B(a[3]), .Y(n183) );
  XNOR2X1 U269 ( .A(b[4]), .B(a[5]), .Y(n176) );
  NAND2X2 U270 ( .A(n274), .B(n275), .Y(n210) );
  CLKBUFX3 U271 ( .A(n234), .Y(n218) );
  NAND2X1 U272 ( .A(n223), .B(n269), .Y(n271) );
  NAND2X1 U273 ( .A(n163), .B(n131), .Y(n76) );
  OAI21X1 U274 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  ADDFXL U275 ( .A(n139), .B(n98), .CI(n99), .CO(n95), .S(n96) );
  NOR2X1 U276 ( .A(n104), .B(n108), .Y(n41) );
  NOR2X1 U277 ( .A(n100), .B(n96), .Y(n29) );
  XOR2X1 U278 ( .A(n61), .B(n10), .Y(product[5]) );
  AOI21X1 U279 ( .A0(n23), .A1(n19), .B0(n20), .Y(n18) );
  OAI22XL U280 ( .A0(n230), .A1(n184), .B0(n183), .B1(n218), .Y(n149) );
  OAI22XL U281 ( .A0(n230), .A1(n187), .B0(n186), .B1(n218), .Y(n152) );
  XOR2X1 U282 ( .A(a[5]), .B(a[4]), .Y(n209) );
  CLKBUFX3 U283 ( .A(n143), .Y(n265) );
  CLKINVX1 U284 ( .A(a[3]), .Y(n272) );
  AND2X2 U285 ( .A(n128), .B(n265), .Y(n266) );
  AOI21X1 U286 ( .A0(n70), .A1(n74), .B0(n71), .Y(n69) );
  NOR2X1 U287 ( .A(n213), .B(n221), .Y(n267) );
  NOR2XL U288 ( .A(n217), .B(n181), .Y(n268) );
  INVXL U289 ( .A(a[5]), .Y(n221) );
  BUFX16 U290 ( .A(n233), .Y(n217) );
  NAND2XL U291 ( .A(a[1]), .B(b[0]), .Y(n270) );
  NAND2X1 U292 ( .A(n270), .B(n271), .Y(n198) );
  NAND2XL U293 ( .A(a[3]), .B(n273), .Y(n274) );
  NAND2X2 U294 ( .A(n272), .B(a[2]), .Y(n275) );
  NAND2X2 U295 ( .A(n210), .B(n234), .Y(n230) );
  CLKXOR2X2 U296 ( .A(n128), .B(n265), .Y(n116) );
  OAI22X1 U297 ( .A0(n212), .A1(n220), .B0(n216), .B1(n172), .Y(n128) );
  CMPR42X2 U298 ( .A(n136), .B(n150), .C(n157), .D(n116), .ICI(n117), .S(n114), 
        .ICO(n112), .CO(n113) );
  NOR2XL U299 ( .A(n213), .B(n179), .Y(n276) );
  NOR2XL U300 ( .A(n178), .B(n217), .Y(n277) );
  XNOR2X1 U301 ( .A(b[1]), .B(a[5]), .Y(n179) );
  XNOR2X1 U302 ( .A(b[2]), .B(a[5]), .Y(n178) );
  CMPR42X2 U303 ( .A(n137), .B(n144), .C(n151), .D(n158), .ICI(n122), .S(n119), 
        .ICO(n117), .CO(n118) );
  NAND2XL U304 ( .A(b[4]), .B(a[3]), .Y(n279) );
  NAND2X1 U305 ( .A(n278), .B(n222), .Y(n280) );
  NAND2X1 U306 ( .A(n279), .B(n280), .Y(n185) );
  INVXL U307 ( .A(b[4]), .Y(n278) );
  OAI22XL U308 ( .A0(n230), .A1(n186), .B0(n185), .B1(n218), .Y(n151) );
  NAND2XL U309 ( .A(a[3]), .B(a[4]), .Y(n282) );
  NAND2X2 U310 ( .A(n272), .B(n281), .Y(n283) );
  INVX1 U311 ( .A(a[4]), .Y(n281) );
  NAND2X1 U312 ( .A(n209), .B(n233), .Y(n229) );
  NAND2X1 U313 ( .A(a[0]), .B(n288), .Y(n284) );
  NAND2XL U314 ( .A(n235), .B(a[1]), .Y(n285) );
  NAND2X2 U315 ( .A(n284), .B(n285), .Y(n211) );
  NAND2X4 U316 ( .A(n211), .B(n235), .Y(n231) );
  INVXL U317 ( .A(n64), .Y(n62) );
  INVX1 U318 ( .A(n65), .Y(n63) );
  NAND2X2 U319 ( .A(b[1]), .B(a[1]), .Y(n289) );
  NAND2X4 U320 ( .A(n289), .B(n290), .Y(n197) );
  INVXL U321 ( .A(b[1]), .Y(n287) );
  CLKINVX2 U322 ( .A(a[1]), .Y(n288) );
  XNOR2XL U323 ( .A(b[3]), .B(a[7]), .Y(n168) );
  ADDFHX2 U324 ( .A(n146), .B(n153), .CI(n160), .CO(n124), .S(n125) );
  OAI22X1 U325 ( .A0(n230), .A1(n188), .B0(n187), .B1(n218), .Y(n153) );
  ADDHX2 U326 ( .A(n130), .B(n154), .CO(n126), .S(n127) );
  OAI22X1 U327 ( .A0(n230), .A1(n189), .B0(n188), .B1(n218), .Y(n154) );
  XNOR2X2 U328 ( .A(b[4]), .B(a[1]), .Y(n194) );
  NOR2X2 U329 ( .A(n163), .B(n131), .Y(n75) );
  OAI22X2 U330 ( .A0(n215), .A1(n223), .B0(n199), .B1(n219), .Y(n131) );
  XNOR2XL U331 ( .A(b[5]), .B(a[7]), .Y(n166) );
  BUFX12 U332 ( .A(n231), .Y(n215) );
  INVX3 U333 ( .A(n49), .Y(n48) );
  OAI21X1 U334 ( .A0(n32), .A1(n49), .B0(n33), .Y(n31) );
  AOI21X1 U335 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  XNOR2X2 U336 ( .A(a[1]), .B(a[2]), .Y(n234) );
  NAND2BXL U337 ( .AN(n67), .B(n68), .Y(n12) );
  NOR2X1 U338 ( .A(n162), .B(n155), .Y(n72) );
  NAND2BXL U339 ( .AN(n75), .B(n76), .Y(n14) );
  OAI22X1 U340 ( .A0(n230), .A1(n222), .B0(n218), .B1(n190), .Y(n130) );
  NOR2X1 U341 ( .A(n125), .B(n126), .Y(n64) );
  XNOR2X1 U342 ( .A(a[5]), .B(a[6]), .Y(n232) );
  NOR2X1 U343 ( .A(n52), .B(n55), .Y(n50) );
  NAND2X1 U344 ( .A(n39), .B(n34), .Y(n32) );
  INVXL U345 ( .A(n46), .Y(n44) );
  NAND2X1 U346 ( .A(n162), .B(n155), .Y(n73) );
  NAND2X1 U347 ( .A(n121), .B(n124), .Y(n60) );
  AOI21XL U348 ( .A0(n48), .A1(n39), .B0(n40), .Y(n38) );
  OAI21X1 U349 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  INVXL U350 ( .A(n47), .Y(n45) );
  NAND2BXL U351 ( .AN(n64), .B(n65), .Y(n11) );
  NAND2BXL U352 ( .AN(n52), .B(n53), .Y(n8) );
  OAI21X2 U353 ( .A0(n26), .A1(n24), .B0(n25), .Y(n23) );
  INVXL U354 ( .A(n22), .Y(n20) );
  OA21XL U355 ( .A0(n18), .A1(n16), .B0(n17), .Y(product[15]) );
  INVX1 U356 ( .A(n37), .Y(n35) );
  NOR2X1 U357 ( .A(n121), .B(n124), .Y(n59) );
  NOR2X1 U358 ( .A(n109), .B(n113), .Y(n46) );
  NOR2X1 U359 ( .A(n119), .B(n120), .Y(n55) );
  NOR2X1 U360 ( .A(n101), .B(n103), .Y(n36) );
  NOR2X1 U361 ( .A(n93), .B(n92), .Y(n21) );
  NOR2X1 U362 ( .A(n95), .B(n94), .Y(n24) );
  NOR2X1 U363 ( .A(n132), .B(n91), .Y(n16) );
  INVXL U364 ( .A(a[3]), .Y(n222) );
  XNOR2XL U365 ( .A(a[3]), .B(b[0]), .Y(n189) );
  NOR2BXL U366 ( .AN(b[0]), .B(n217), .Y(n146) );
  NOR2BXL U367 ( .AN(b[0]), .B(n219), .Y(product[0]) );
  NAND2BXL U368 ( .AN(b[0]), .B(a[3]), .Y(n190) );
  OAI22X1 U369 ( .A0(n212), .A1(n169), .B0(n168), .B1(n216), .Y(n105) );
  AO21XL U370 ( .A0(n230), .A1(n218), .B0(n182), .Y(n147) );
  OAI22XL U371 ( .A0(n212), .A1(n167), .B0(n166), .B1(n216), .Y(n97) );
  OAI22X1 U372 ( .A0(n212), .A1(n165), .B0(n164), .B1(n216), .Y(n91) );
  ADDFXL U373 ( .A(n97), .B(n133), .CI(n138), .CO(n93), .S(n94) );
  AO21XL U374 ( .A0(n213), .A1(n217), .B0(n173), .Y(n138) );
  AO21XL U375 ( .A0(n212), .A1(n216), .B0(n164), .Y(n132) );
  NAND2XL U376 ( .A(n208), .B(n232), .Y(n228) );
  BUFX8 U377 ( .A(n229), .Y(n213) );
  XNOR2XL U378 ( .A(b[5]), .B(a[3]), .Y(n184) );
  XNOR2XL U379 ( .A(b[7]), .B(a[1]), .Y(n191) );
  XNOR2XL U380 ( .A(b[7]), .B(a[3]), .Y(n182) );
  XNOR2XL U381 ( .A(b[6]), .B(a[5]), .Y(n174) );
  XNOR2XL U382 ( .A(b[7]), .B(a[5]), .Y(n173) );
  CLKINVX1 U383 ( .A(n73), .Y(n71) );
  CLKINVX1 U384 ( .A(n72), .Y(n70) );
  XNOR2X1 U385 ( .A(n23), .B(n2), .Y(product[13]) );
  XOR2X1 U386 ( .A(n38), .B(n5), .Y(product[10]) );
  XOR2X1 U387 ( .A(n18), .B(n1), .Y(product[14]) );
  AOI21X1 U388 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  CLKINVX1 U389 ( .A(n76), .Y(n74) );
  XNOR2X1 U390 ( .A(n13), .B(n74), .Y(product[2]) );
  XNOR2X1 U391 ( .A(n66), .B(n11), .Y(product[4]) );
  XNOR2X1 U392 ( .A(n54), .B(n8), .Y(product[7]) );
  XNOR2X1 U393 ( .A(n48), .B(n7), .Y(product[8]) );
  XNOR2X1 U394 ( .A(n31), .B(n4), .Y(product[11]) );
  XOR2X1 U395 ( .A(n12), .B(n69), .Y(product[3]) );
  XOR2X1 U396 ( .A(n57), .B(n9), .Y(product[6]) );
  XOR2X1 U397 ( .A(n43), .B(n6), .Y(product[9]) );
  XOR2X1 U398 ( .A(n26), .B(n3), .Y(product[12]) );
  CLKINVX1 U399 ( .A(n14), .Y(product[1]) );
  NAND2BX1 U400 ( .AN(n46), .B(n47), .Y(n7) );
  NAND2BX1 U401 ( .AN(n72), .B(n73), .Y(n13) );
  NAND2BX1 U402 ( .AN(n59), .B(n60), .Y(n10) );
  AOI21X1 U403 ( .A0(n31), .A1(n27), .B0(n28), .Y(n26) );
  CLKINVX1 U404 ( .A(n30), .Y(n28) );
  CLKINVX1 U405 ( .A(n29), .Y(n27) );
  CLKINVX1 U406 ( .A(n21), .Y(n19) );
  OAI21X1 U407 ( .A0(n47), .A1(n41), .B0(n42), .Y(n40) );
  AOI21X1 U408 ( .A0(n40), .A1(n34), .B0(n35), .Y(n33) );
  CLKINVX1 U409 ( .A(n36), .Y(n34) );
  NOR2X1 U410 ( .A(n46), .B(n41), .Y(n39) );
  NAND2BX1 U411 ( .AN(n36), .B(n37), .Y(n5) );
  NAND2BX1 U412 ( .AN(n41), .B(n42), .Y(n6) );
  NAND2BX1 U413 ( .AN(n29), .B(n30), .Y(n4) );
  NAND2BX1 U414 ( .AN(n24), .B(n25), .Y(n3) );
  NAND2BX1 U415 ( .AN(n21), .B(n22), .Y(n2) );
  NAND2BX1 U416 ( .AN(n16), .B(n17), .Y(n1) );
  NOR2X2 U417 ( .A(n114), .B(n118), .Y(n52) );
  NOR2X2 U418 ( .A(n127), .B(n161), .Y(n67) );
  NAND2X1 U419 ( .A(n119), .B(n120), .Y(n56) );
  NAND2X1 U420 ( .A(n114), .B(n118), .Y(n53) );
  NAND2X1 U421 ( .A(n125), .B(n126), .Y(n65) );
  NAND2X1 U422 ( .A(n109), .B(n113), .Y(n47) );
  NAND2X1 U423 ( .A(n101), .B(n103), .Y(n37) );
  NAND2X1 U424 ( .A(n100), .B(n96), .Y(n30) );
  NAND2X1 U425 ( .A(n104), .B(n108), .Y(n42) );
  CLKINVX1 U426 ( .A(n105), .Y(n106) );
  NAND2X1 U427 ( .A(n93), .B(n92), .Y(n22) );
  CLKINVX1 U428 ( .A(n91), .Y(n92) );
  NAND2X1 U429 ( .A(n95), .B(n94), .Y(n25) );
  NAND2X1 U430 ( .A(n132), .B(n91), .Y(n17) );
  CLKINVX1 U431 ( .A(a[1]), .Y(n223) );
  OAI22XL U432 ( .A0(n215), .A1(n193), .B0(n192), .B1(n219), .Y(n158) );
  NOR2BX1 U433 ( .AN(b[0]), .B(n216), .Y(n137) );
  OAI22XL U434 ( .A0(n215), .A1(n192), .B0(n191), .B1(n219), .Y(n157) );
  OAI22XL U435 ( .A0(n230), .A1(n185), .B0(n184), .B1(n218), .Y(n150) );
  CMPR42X1 U436 ( .A(n142), .B(n156), .C(n266), .D(n112), .ICI(n111), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X1 U437 ( .A(n149), .B(n135), .Y(n111) );
  AO21X1 U438 ( .A0(n215), .A1(n219), .B0(n191), .Y(n156) );
  OAI22XL U439 ( .A0(n213), .A1(n177), .B0(n176), .B1(n217), .Y(n142) );
  NOR2BX1 U440 ( .AN(b[0]), .B(n218), .Y(n155) );
  CLKBUFX3 U441 ( .A(n232), .Y(n216) );
  ADDFX2 U442 ( .A(n152), .B(n145), .CI(n123), .CO(n120), .S(n121) );
  OAI22XL U443 ( .A0(n213), .A1(n180), .B0(n179), .B1(n217), .Y(n145) );
  OAI22XL U444 ( .A0(n215), .A1(n195), .B0(n194), .B1(n219), .Y(n160) );
  OAI22XL U445 ( .A0(n215), .A1(n194), .B0(n193), .B1(n219), .Y(n159) );
  OAI22XL U446 ( .A0(n213), .A1(n178), .B0(n177), .B1(n217), .Y(n143) );
  CLKINVX1 U447 ( .A(a[7]), .Y(n220) );
  CMPR42X1 U448 ( .A(n105), .B(n134), .C(n140), .D(n147), .ICI(n102), .S(n101), 
        .ICO(n99), .CO(n100) );
  OAI22XL U449 ( .A0(n213), .A1(n175), .B0(n174), .B1(n217), .Y(n140) );
  OAI22XL U450 ( .A0(n212), .A1(n168), .B0(n167), .B1(n216), .Y(n134) );
  CMPR42X1 U451 ( .A(n148), .B(n141), .C(n106), .D(n110), .ICI(n107), .S(n104), 
        .ICO(n102), .CO(n103) );
  OAI22XL U452 ( .A0(n213), .A1(n176), .B0(n175), .B1(n217), .Y(n141) );
  OR2X1 U453 ( .A(n149), .B(n135), .Y(n110) );
  OAI22XL U454 ( .A0(n230), .A1(n183), .B0(n182), .B1(n218), .Y(n148) );
  OAI22XL U455 ( .A0(n213), .A1(n174), .B0(n173), .B1(n217), .Y(n139) );
  CLKINVX1 U456 ( .A(n97), .Y(n98) );
  OAI22XL U457 ( .A0(n212), .A1(n166), .B0(n165), .B1(n216), .Y(n133) );
  XNOR2X1 U458 ( .A(b[2]), .B(a[1]), .Y(n196) );
  XNOR2X1 U459 ( .A(b[4]), .B(a[7]), .Y(n167) );
  XNOR2X1 U460 ( .A(b[6]), .B(a[7]), .Y(n165) );
  XNOR2X1 U461 ( .A(b[7]), .B(a[7]), .Y(n164) );
endmodule


module CONV_DW_mult_tc_18 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n20, n22, n23, n24, n25, n26, n28, n30, n31, n32, n33, n35, n37,
         n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n65, n66, n67, n68,
         n69, n71, n73, n74, n75, n76, n77, n79, n82, n83, n84, n85, n86, n88,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n208, n209, n210, n211,
         n212, n213, n214, n215, n218, n219, n220, n221, n222, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291;

  NAND2X2 U230 ( .A(n163), .B(n131), .Y(n76) );
  NAND2X2 U231 ( .A(n162), .B(n155), .Y(n73) );
  CMPR42X2 U232 ( .A(n136), .B(n150), .C(n157), .D(n116), .ICI(n117), .S(n114), 
        .ICO(n112), .CO(n113) );
  OAI21X2 U233 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  NOR2X2 U234 ( .A(n127), .B(n291), .Y(n67) );
  XNOR2X2 U235 ( .A(n227), .B(b[0]), .Y(n198) );
  NAND2BXL U236 ( .AN(b[0]), .B(a[5]), .Y(n181) );
  XNOR2XL U237 ( .A(a[7]), .B(b[0]), .Y(n171) );
  OAI21X2 U238 ( .A0(n57), .A1(n55), .B0(n56), .Y(n54) );
  INVX3 U239 ( .A(n58), .Y(n57) );
  XNOR2XL U240 ( .A(b[1]), .B(a[5]), .Y(n179) );
  XNOR2XL U241 ( .A(b[1]), .B(a[7]), .Y(n170) );
  XNOR2X1 U242 ( .A(b[1]), .B(n226), .Y(n188) );
  XNOR2XL U243 ( .A(b[2]), .B(a[5]), .Y(n178) );
  XNOR2XL U244 ( .A(b[2]), .B(a[7]), .Y(n169) );
  XNOR2X2 U245 ( .A(b[3]), .B(n227), .Y(n195) );
  XNOR2XL U246 ( .A(b[3]), .B(a[5]), .Y(n177) );
  OAI22X1 U247 ( .A0(n215), .A1(n194), .B0(n193), .B1(n219), .Y(n159) );
  BUFX6 U248 ( .A(a[3]), .Y(n226) );
  NAND2X2 U249 ( .A(n286), .B(n287), .Y(n211) );
  OAI22XL U250 ( .A0(n214), .A1(n186), .B0(n185), .B1(n218), .Y(n151) );
  NOR2X1 U251 ( .A(n109), .B(n113), .Y(n46) );
  AOI21X2 U252 ( .A0(n66), .A1(n267), .B0(n63), .Y(n61) );
  CLKINVX1 U253 ( .A(a[2]), .Y(n278) );
  NAND2X1 U254 ( .A(n277), .B(a[2]), .Y(n280) );
  NAND2X1 U255 ( .A(n282), .B(n283), .Y(n194) );
  OR2X1 U256 ( .A(n214), .B(n188), .Y(n272) );
  OR2X1 U257 ( .A(n187), .B(n218), .Y(n273) );
  XNOR2X1 U258 ( .A(b[3]), .B(n226), .Y(n186) );
  ADDFXL U259 ( .A(n139), .B(n98), .CI(n99), .CO(n95), .S(n96) );
  OAI22X1 U260 ( .A0(n215), .A1(n197), .B0(n196), .B1(n219), .Y(n162) );
  CLKBUFX3 U261 ( .A(n161), .Y(n291) );
  OAI21X1 U262 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  OAI22XL U263 ( .A0(n215), .A1(n192), .B0(n191), .B1(n219), .Y(n157) );
  NOR2X1 U264 ( .A(n163), .B(n131), .Y(n75) );
  XNOR2X1 U265 ( .A(n48), .B(n7), .Y(product[8]) );
  AOI21X1 U266 ( .A0(n23), .A1(n270), .B0(n20), .Y(n18) );
  CMPR42X2 U267 ( .A(n137), .B(n144), .C(n151), .D(n158), .ICI(n122), .S(n119), 
        .ICO(n117), .CO(n118) );
  NAND2X1 U268 ( .A(a[0]), .B(n285), .Y(n286) );
  INVX3 U269 ( .A(a[1]), .Y(n285) );
  CLKBUFX3 U270 ( .A(n145), .Y(n265) );
  CLKBUFX3 U271 ( .A(n284), .Y(n219) );
  NAND2X1 U272 ( .A(n211), .B(n284), .Y(n231) );
  INVX3 U273 ( .A(a[0]), .Y(n284) );
  CLKBUFX3 U274 ( .A(a[1]), .Y(n227) );
  OR2X1 U275 ( .A(n101), .B(n103), .Y(n266) );
  OR2X1 U276 ( .A(n125), .B(n126), .Y(n267) );
  OR2X1 U277 ( .A(n162), .B(n155), .Y(n268) );
  OR2X1 U278 ( .A(n100), .B(n96), .Y(n269) );
  OR2X1 U279 ( .A(n93), .B(n92), .Y(n270) );
  AND2X2 U280 ( .A(n128), .B(n143), .Y(n271) );
  NAND2X6 U281 ( .A(n272), .B(n273), .Y(n153) );
  BUFX12 U282 ( .A(n230), .Y(n214) );
  XNOR2X1 U283 ( .A(b[2]), .B(n226), .Y(n187) );
  BUFX8 U284 ( .A(n234), .Y(n218) );
  ADDFHX4 U285 ( .A(n146), .B(n153), .CI(n160), .CO(n124), .S(n125) );
  NAND2XL U286 ( .A(b[7]), .B(n227), .Y(n275) );
  NAND2X1 U287 ( .A(n274), .B(n285), .Y(n276) );
  NAND2X2 U288 ( .A(n275), .B(n276), .Y(n191) );
  INVXL U289 ( .A(b[7]), .Y(n274) );
  AO21XL U290 ( .A0(n215), .A1(n219), .B0(n191), .Y(n156) );
  NAND2XL U291 ( .A(a[3]), .B(n278), .Y(n279) );
  NAND2X2 U292 ( .A(n279), .B(n280), .Y(n210) );
  INVX1 U293 ( .A(a[3]), .Y(n277) );
  NAND2X1 U294 ( .A(n210), .B(n234), .Y(n230) );
  NAND2X1 U295 ( .A(b[4]), .B(n227), .Y(n282) );
  NAND2X1 U296 ( .A(n281), .B(n285), .Y(n283) );
  INVXL U297 ( .A(b[4]), .Y(n281) );
  OAI22X2 U298 ( .A0(n215), .A1(n195), .B0(n194), .B1(n219), .Y(n160) );
  NAND2X1 U299 ( .A(n284), .B(a[1]), .Y(n287) );
  XOR2X1 U300 ( .A(n128), .B(n143), .Y(n116) );
  OAI22X2 U301 ( .A0(n212), .A1(n220), .B0(n232), .B1(n172), .Y(n128) );
  OAI22X1 U302 ( .A0(n213), .A1(n178), .B0(n177), .B1(n233), .Y(n143) );
  NAND2X1 U303 ( .A(a[3]), .B(a[4]), .Y(n289) );
  NAND2X2 U304 ( .A(n277), .B(n288), .Y(n290) );
  NAND2X4 U305 ( .A(n289), .B(n290), .Y(n233) );
  INVX1 U306 ( .A(a[4]), .Y(n288) );
  NAND2X2 U307 ( .A(n209), .B(n233), .Y(n229) );
  ADDFHX2 U308 ( .A(n152), .B(n265), .CI(n123), .CO(n120), .S(n121) );
  ADDHX1 U309 ( .A(n129), .B(n159), .CO(n122), .S(n123) );
  OAI22X1 U310 ( .A0(n214), .A1(n185), .B0(n184), .B1(n218), .Y(n150) );
  ADDHX2 U311 ( .A(n130), .B(n154), .CO(n126), .S(n127) );
  OAI22X1 U312 ( .A0(n214), .A1(n189), .B0(n188), .B1(n218), .Y(n154) );
  OAI22X2 U313 ( .A0(n215), .A1(n285), .B0(n199), .B1(n219), .Y(n131) );
  XNOR2XL U314 ( .A(b[3]), .B(a[7]), .Y(n168) );
  BUFX12 U315 ( .A(n231), .Y(n215) );
  OAI22X2 U316 ( .A0(n214), .A1(n222), .B0(n218), .B1(n190), .Y(n130) );
  XNOR2X4 U317 ( .A(b[1]), .B(n227), .Y(n197) );
  OAI22X2 U318 ( .A0(n215), .A1(n198), .B0(n197), .B1(n219), .Y(n163) );
  OAI22X1 U319 ( .A0(n215), .A1(n193), .B0(n192), .B1(n219), .Y(n158) );
  XNOR2X1 U320 ( .A(b[5]), .B(n227), .Y(n193) );
  XNOR2X4 U321 ( .A(b[2]), .B(n227), .Y(n196) );
  XNOR2X4 U322 ( .A(a[5]), .B(a[6]), .Y(n232) );
  XNOR2X1 U323 ( .A(a[1]), .B(a[2]), .Y(n234) );
  INVX1 U324 ( .A(n55), .Y(n85) );
  NOR2X2 U325 ( .A(n121), .B(n124), .Y(n59) );
  AOI21X1 U326 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  NOR2X1 U327 ( .A(n52), .B(n55), .Y(n50) );
  INVXL U328 ( .A(n47), .Y(n45) );
  NAND2X1 U329 ( .A(n83), .B(n47), .Y(n7) );
  CLKINVX1 U330 ( .A(n67), .Y(n88) );
  INVXL U331 ( .A(n41), .Y(n82) );
  NAND2BX1 U332 ( .AN(n75), .B(n76), .Y(n14) );
  NAND2X1 U333 ( .A(n121), .B(n124), .Y(n60) );
  AOI21XL U334 ( .A0(n48), .A1(n39), .B0(n40), .Y(n38) );
  OAI21X1 U335 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  INVXL U336 ( .A(n52), .Y(n84) );
  OAI21X2 U337 ( .A0(n26), .A1(n24), .B0(n25), .Y(n23) );
  INVXL U338 ( .A(n22), .Y(n20) );
  OA21XL U339 ( .A0(n18), .A1(n16), .B0(n17), .Y(product[15]) );
  INVX1 U340 ( .A(n37), .Y(n35) );
  NOR2X1 U341 ( .A(n95), .B(n94), .Y(n24) );
  NOR2X1 U342 ( .A(n132), .B(n91), .Y(n16) );
  INVXL U343 ( .A(n226), .Y(n222) );
  XNOR2XL U344 ( .A(n226), .B(b[0]), .Y(n189) );
  NOR2BXL U345 ( .AN(b[0]), .B(n233), .Y(n146) );
  OAI22XL U346 ( .A0(n215), .A1(n196), .B0(n195), .B1(n219), .Y(n161) );
  NOR2BXL U347 ( .AN(b[0]), .B(n219), .Y(product[0]) );
  NAND2BXL U348 ( .AN(b[0]), .B(n226), .Y(n190) );
  OAI22XL U349 ( .A0(n214), .A1(n184), .B0(n183), .B1(n218), .Y(n149) );
  OAI22XL U350 ( .A0(n212), .A1(n170), .B0(n169), .B1(n232), .Y(n135) );
  OAI22X1 U351 ( .A0(n212), .A1(n169), .B0(n168), .B1(n232), .Y(n105) );
  AO21XL U352 ( .A0(n214), .A1(n218), .B0(n182), .Y(n147) );
  OAI22XL U353 ( .A0(n212), .A1(n167), .B0(n166), .B1(n232), .Y(n97) );
  OAI22X1 U354 ( .A0(n212), .A1(n165), .B0(n164), .B1(n232), .Y(n91) );
  ADDFXL U355 ( .A(n97), .B(n133), .CI(n138), .CO(n93), .S(n94) );
  AO21XL U356 ( .A0(n213), .A1(n233), .B0(n173), .Y(n138) );
  AO21XL U357 ( .A0(n212), .A1(n232), .B0(n164), .Y(n132) );
  BUFX8 U358 ( .A(n229), .Y(n213) );
  XOR2XL U359 ( .A(a[5]), .B(a[4]), .Y(n209) );
  BUFX8 U360 ( .A(n228), .Y(n212) );
  NAND2XL U361 ( .A(n208), .B(n232), .Y(n228) );
  XOR2XL U362 ( .A(a[7]), .B(a[6]), .Y(n208) );
  XNOR2XL U363 ( .A(b[5]), .B(n226), .Y(n184) );
  XNOR2XL U364 ( .A(b[4]), .B(n226), .Y(n185) );
  XNOR2XL U365 ( .A(b[6]), .B(n227), .Y(n192) );
  XNOR2XL U366 ( .A(b[6]), .B(n226), .Y(n183) );
  XNOR2XL U367 ( .A(b[4]), .B(a[5]), .Y(n176) );
  XNOR2XL U368 ( .A(b[5]), .B(a[5]), .Y(n175) );
  XNOR2XL U369 ( .A(b[7]), .B(n226), .Y(n182) );
  XNOR2XL U370 ( .A(b[6]), .B(a[5]), .Y(n174) );
  XNOR2XL U371 ( .A(b[7]), .B(a[5]), .Y(n173) );
  CLKINVX1 U372 ( .A(n49), .Y(n48) );
  CLKINVX1 U373 ( .A(n65), .Y(n63) );
  AOI21X1 U374 ( .A0(n268), .A1(n74), .B0(n71), .Y(n69) );
  CLKINVX1 U375 ( .A(n73), .Y(n71) );
  XNOR2X1 U376 ( .A(n23), .B(n2), .Y(product[13]) );
  NAND2X1 U377 ( .A(n270), .B(n22), .Y(n2) );
  XOR2X1 U378 ( .A(n38), .B(n5), .Y(product[10]) );
  NAND2X1 U379 ( .A(n266), .B(n37), .Y(n5) );
  XOR2X1 U380 ( .A(n18), .B(n1), .Y(product[14]) );
  NAND2X1 U381 ( .A(n77), .B(n17), .Y(n1) );
  AOI21X1 U382 ( .A0(n48), .A1(n83), .B0(n45), .Y(n43) );
  CLKINVX1 U383 ( .A(n76), .Y(n74) );
  XNOR2X1 U384 ( .A(n13), .B(n74), .Y(product[2]) );
  NAND2X1 U385 ( .A(n268), .B(n73), .Y(n13) );
  XNOR2X1 U386 ( .A(n66), .B(n11), .Y(product[4]) );
  NAND2X1 U387 ( .A(n267), .B(n65), .Y(n11) );
  XNOR2X1 U388 ( .A(n54), .B(n8), .Y(product[7]) );
  NAND2X1 U389 ( .A(n84), .B(n53), .Y(n8) );
  XNOR2X1 U390 ( .A(n31), .B(n4), .Y(product[11]) );
  NAND2X1 U391 ( .A(n269), .B(n30), .Y(n4) );
  XOR2X1 U392 ( .A(n12), .B(n69), .Y(product[3]) );
  NAND2X1 U393 ( .A(n88), .B(n68), .Y(n12) );
  XOR2X1 U394 ( .A(n61), .B(n10), .Y(product[5]) );
  NAND2X1 U395 ( .A(n86), .B(n60), .Y(n10) );
  XOR2X1 U396 ( .A(n57), .B(n9), .Y(product[6]) );
  NAND2X1 U397 ( .A(n85), .B(n56), .Y(n9) );
  XOR2X1 U398 ( .A(n43), .B(n6), .Y(product[9]) );
  NAND2X1 U399 ( .A(n82), .B(n42), .Y(n6) );
  XOR2X1 U400 ( .A(n26), .B(n3), .Y(product[12]) );
  NAND2X1 U401 ( .A(n79), .B(n25), .Y(n3) );
  CLKINVX1 U402 ( .A(n14), .Y(product[1]) );
  CLKINVX1 U403 ( .A(n59), .Y(n86) );
  AOI21X1 U404 ( .A0(n31), .A1(n269), .B0(n28), .Y(n26) );
  CLKINVX1 U405 ( .A(n30), .Y(n28) );
  OAI21X1 U406 ( .A0(n47), .A1(n41), .B0(n42), .Y(n40) );
  OAI21X1 U407 ( .A0(n32), .A1(n49), .B0(n33), .Y(n31) );
  NAND2X1 U408 ( .A(n39), .B(n266), .Y(n32) );
  AOI21X1 U409 ( .A0(n40), .A1(n266), .B0(n35), .Y(n33) );
  NOR2X1 U410 ( .A(n46), .B(n41), .Y(n39) );
  CLKINVX1 U411 ( .A(n46), .Y(n83) );
  CLKINVX1 U412 ( .A(n24), .Y(n79) );
  CLKINVX1 U413 ( .A(n16), .Y(n77) );
  NOR2X2 U414 ( .A(n114), .B(n118), .Y(n52) );
  NOR2X2 U415 ( .A(n119), .B(n120), .Y(n55) );
  NAND2X1 U416 ( .A(n119), .B(n120), .Y(n56) );
  NAND2X1 U417 ( .A(n114), .B(n118), .Y(n53) );
  NAND2X1 U418 ( .A(n127), .B(n291), .Y(n68) );
  NAND2X1 U419 ( .A(n125), .B(n126), .Y(n65) );
  NOR2X2 U420 ( .A(n104), .B(n108), .Y(n41) );
  NAND2X1 U421 ( .A(n109), .B(n113), .Y(n47) );
  NAND2X1 U422 ( .A(n101), .B(n103), .Y(n37) );
  NAND2X1 U423 ( .A(n100), .B(n96), .Y(n30) );
  NAND2X1 U424 ( .A(n104), .B(n108), .Y(n42) );
  CLKINVX1 U425 ( .A(n105), .Y(n106) );
  NAND2X1 U426 ( .A(n93), .B(n92), .Y(n22) );
  CLKINVX1 U427 ( .A(n91), .Y(n92) );
  NAND2X1 U428 ( .A(n95), .B(n94), .Y(n25) );
  NAND2X1 U429 ( .A(n132), .B(n91), .Y(n17) );
  NAND2BX1 U430 ( .AN(b[0]), .B(n227), .Y(n199) );
  NOR2BX1 U431 ( .AN(b[0]), .B(n232), .Y(n137) );
  OAI22XL U432 ( .A0(n212), .A1(n171), .B0(n170), .B1(n232), .Y(n136) );
  NOR2BX1 U433 ( .AN(b[0]), .B(n218), .Y(n155) );
  OAI22XL U434 ( .A0(n213), .A1(n179), .B0(n178), .B1(n233), .Y(n144) );
  OAI22XL U435 ( .A0(n214), .A1(n187), .B0(n186), .B1(n218), .Y(n152) );
  OAI22XL U436 ( .A0(n213), .A1(n180), .B0(n179), .B1(n233), .Y(n145) );
  XNOR2X1 U437 ( .A(a[5]), .B(b[0]), .Y(n180) );
  OAI22XL U438 ( .A0(n213), .A1(n221), .B0(n233), .B1(n181), .Y(n129) );
  CLKINVX1 U439 ( .A(a[5]), .Y(n221) );
  CLKINVX1 U440 ( .A(a[7]), .Y(n220) );
  NAND2BX1 U441 ( .AN(b[0]), .B(a[7]), .Y(n172) );
  CMPR42X1 U442 ( .A(n105), .B(n134), .C(n140), .D(n147), .ICI(n102), .S(n101), 
        .ICO(n99), .CO(n100) );
  OAI22XL U443 ( .A0(n213), .A1(n175), .B0(n174), .B1(n233), .Y(n140) );
  OAI22XL U444 ( .A0(n212), .A1(n168), .B0(n167), .B1(n232), .Y(n134) );
  CMPR42X1 U445 ( .A(n148), .B(n141), .C(n106), .D(n110), .ICI(n107), .S(n104), 
        .ICO(n102), .CO(n103) );
  OAI22XL U446 ( .A0(n213), .A1(n176), .B0(n175), .B1(n233), .Y(n141) );
  OR2X1 U447 ( .A(n149), .B(n135), .Y(n110) );
  OAI22XL U448 ( .A0(n214), .A1(n183), .B0(n182), .B1(n218), .Y(n148) );
  CMPR42X1 U449 ( .A(n142), .B(n156), .C(n271), .D(n112), .ICI(n111), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X1 U450 ( .A(n149), .B(n135), .Y(n111) );
  OAI22XL U451 ( .A0(n213), .A1(n177), .B0(n176), .B1(n233), .Y(n142) );
  OAI22XL U452 ( .A0(n213), .A1(n174), .B0(n173), .B1(n233), .Y(n139) );
  CLKINVX1 U453 ( .A(n97), .Y(n98) );
  OAI22XL U454 ( .A0(n212), .A1(n166), .B0(n165), .B1(n232), .Y(n133) );
  XNOR2X1 U455 ( .A(b[4]), .B(a[7]), .Y(n167) );
  XNOR2X1 U456 ( .A(b[5]), .B(a[7]), .Y(n166) );
  XNOR2X1 U457 ( .A(b[6]), .B(a[7]), .Y(n165) );
  XNOR2X1 U458 ( .A(b[7]), .B(a[7]), .Y(n164) );
endmodule


module CONV_DW_mult_tc_19 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n16, n17, n18,
         n20, n22, n23, n24, n25, n26, n28, n30, n31, n32, n33, n35, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n55, n56, n57, n58, n59, n60, n61, n63, n65, n66, n67, n68, n69,
         n71, n73, n74, n76, n77, n79, n82, n84, n85, n86, n88, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n221, n226, n228, n229, n230,
         n231, n232, n233, n234, n235, n265, n266, n267, n268, n269, n270,
         n271, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300;

  INVX1 U230 ( .A(n59), .Y(n86) );
  CMPR32X2 U231 ( .A(n152), .B(n145), .C(n123), .CO(n120), .S(n121) );
  INVX1 U232 ( .A(n49), .Y(n48) );
  XNOR2X1 U233 ( .A(a[5]), .B(a[6]), .Y(n232) );
  BUFX20 U234 ( .A(n233), .Y(n217) );
  XNOR2XL U235 ( .A(b[3]), .B(a[1]), .Y(n195) );
  AND2XL U236 ( .A(n129), .B(n159), .Y(n274) );
  XOR2X2 U237 ( .A(n129), .B(n159), .Y(n123) );
  NAND2X2 U238 ( .A(n208), .B(n232), .Y(n228) );
  CLKBUFX4 U239 ( .A(n232), .Y(n216) );
  XOR2X2 U240 ( .A(n61), .B(n10), .Y(product[5]) );
  BUFX3 U241 ( .A(n149), .Y(n265) );
  NAND2X2 U242 ( .A(n209), .B(n233), .Y(n229) );
  XOR2X1 U243 ( .A(a[5]), .B(a[4]), .Y(n209) );
  CMPR22X2 U244 ( .A(n130), .B(n266), .CO(n126), .S(n127) );
  OAI22X1 U245 ( .A0(n214), .A1(n283), .B0(n218), .B1(n190), .Y(n130) );
  BUFX3 U246 ( .A(n154), .Y(n266) );
  XNOR2XL U247 ( .A(b[4]), .B(a[1]), .Y(n194) );
  XOR2X4 U248 ( .A(n43), .B(n6), .Y(product[9]) );
  NAND2X2 U249 ( .A(n163), .B(n131), .Y(n76) );
  OAI22X1 U250 ( .A0(n215), .A1(n291), .B0(n199), .B1(n219), .Y(n131) );
  XOR2X4 U251 ( .A(n38), .B(n5), .Y(product[10]) );
  XOR2X1 U252 ( .A(a[7]), .B(a[6]), .Y(n208) );
  NOR2X2 U253 ( .A(n119), .B(n120), .Y(n55) );
  CMPR42X2 U254 ( .A(n137), .B(n144), .C(n151), .D(n158), .ICI(n274), .S(n119), 
        .ICO(n117), .CO(n118) );
  ADDFHX2 U255 ( .A(n146), .B(n153), .CI(n160), .CO(n124), .S(n125) );
  NAND2X2 U256 ( .A(n297), .B(n298), .Y(n160) );
  OAI22X1 U257 ( .A0(n214), .A1(n188), .B0(n187), .B1(n218), .Y(n153) );
  NAND2X4 U258 ( .A(n299), .B(n276), .Y(n277) );
  CLKINVX4 U259 ( .A(n299), .Y(n275) );
  OA21X2 U260 ( .A0(n57), .A1(n55), .B0(n56), .Y(n299) );
  NAND2X2 U261 ( .A(b[2]), .B(n226), .Y(n288) );
  INVX8 U262 ( .A(b[2]), .Y(n287) );
  OAI22X2 U263 ( .A0(n215), .A1(n197), .B0(n196), .B1(n219), .Y(n162) );
  OAI22X1 U264 ( .A0(n215), .A1(n198), .B0(n197), .B1(n219), .Y(n163) );
  BUFX12 U265 ( .A(n235), .Y(n219) );
  OAI22XL U266 ( .A0(n214), .A1(n183), .B0(n182), .B1(n218), .Y(n148) );
  NOR2X1 U267 ( .A(n95), .B(n94), .Y(n24) );
  NAND2X2 U268 ( .A(n275), .B(n8), .Y(n278) );
  OAI22XL U269 ( .A0(n214), .A1(n184), .B0(n183), .B1(n218), .Y(n149) );
  ADDFXL U270 ( .A(n139), .B(n98), .CI(n99), .CO(n95), .S(n96) );
  NOR2X1 U271 ( .A(n121), .B(n124), .Y(n59) );
  AOI21X2 U272 ( .A0(n66), .A1(n269), .B0(n63), .Y(n61) );
  AOI21X1 U273 ( .A0(n23), .A1(n267), .B0(n20), .Y(n18) );
  OAI22XL U274 ( .A0(n214), .A1(n187), .B0(n186), .B1(n218), .Y(n152) );
  XNOR2X1 U275 ( .A(b[3]), .B(n226), .Y(n186) );
  CMPR42X1 U276 ( .A(n136), .B(n150), .C(n157), .D(n116), .ICI(n117), .S(n114), 
        .ICO(n112), .CO(n113) );
  OAI22X1 U277 ( .A0(n212), .A1(n171), .B0(n170), .B1(n216), .Y(n136) );
  OAI22X1 U278 ( .A0(n212), .A1(n170), .B0(n169), .B1(n216), .Y(n135) );
  BUFX4 U279 ( .A(n228), .Y(n212) );
  ADDHX1 U280 ( .A(n128), .B(n143), .CO(n115), .S(n116) );
  CLKINVX1 U281 ( .A(a[3]), .Y(n283) );
  OR2X1 U282 ( .A(n93), .B(n92), .Y(n267) );
  OR2X1 U283 ( .A(n101), .B(n103), .Y(n268) );
  OR2X1 U284 ( .A(n125), .B(n126), .Y(n269) );
  OR2X1 U285 ( .A(n162), .B(n155), .Y(n270) );
  OR2X1 U286 ( .A(n100), .B(n96), .Y(n271) );
  AND2X2 U287 ( .A(n300), .B(n76), .Y(product[1]) );
  OA21X2 U288 ( .A0(n18), .A1(n16), .B0(n17), .Y(product[15]) );
  NOR2X1 U289 ( .A(n109), .B(n113), .Y(n46) );
  CLKBUFX3 U290 ( .A(a[3]), .Y(n226) );
  OAI22X1 U291 ( .A0(n215), .A1(n194), .B0(n193), .B1(n219), .Y(n159) );
  OAI22X1 U292 ( .A0(n212), .A1(n280), .B0(n216), .B1(n172), .Y(n128) );
  OAI21X4 U293 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  BUFX4 U294 ( .A(n234), .Y(n218) );
  XNOR2X2 U295 ( .A(n23), .B(n2), .Y(product[13]) );
  XNOR2X1 U296 ( .A(b[5]), .B(n226), .Y(n184) );
  OAI22X1 U297 ( .A0(n215), .A1(n193), .B0(n192), .B1(n219), .Y(n158) );
  XNOR2X1 U298 ( .A(b[5]), .B(a[1]), .Y(n193) );
  NAND2X6 U299 ( .A(n277), .B(n278), .Y(product[7]) );
  INVX1 U300 ( .A(n8), .Y(n276) );
  NAND2XL U301 ( .A(b[1]), .B(a[7]), .Y(n281) );
  NAND2X1 U302 ( .A(n279), .B(n280), .Y(n282) );
  NAND2X1 U303 ( .A(n281), .B(n282), .Y(n170) );
  INVXL U304 ( .A(b[1]), .Y(n279) );
  INVXL U305 ( .A(a[7]), .Y(n280) );
  NAND2XL U306 ( .A(a[3]), .B(a[4]), .Y(n285) );
  NAND2X2 U307 ( .A(n283), .B(n284), .Y(n286) );
  NAND2X2 U308 ( .A(n285), .B(n286), .Y(n233) );
  CLKINVX1 U309 ( .A(a[4]), .Y(n284) );
  NAND2X2 U310 ( .A(n287), .B(n283), .Y(n289) );
  NAND2X2 U311 ( .A(n288), .B(n289), .Y(n187) );
  NAND2XL U312 ( .A(b[6]), .B(a[1]), .Y(n292) );
  NAND2X1 U313 ( .A(n290), .B(n291), .Y(n293) );
  NAND2X1 U314 ( .A(n292), .B(n293), .Y(n192) );
  INVX1 U315 ( .A(b[6]), .Y(n290) );
  INVXL U316 ( .A(a[1]), .Y(n291) );
  OAI22X1 U317 ( .A0(n215), .A1(n192), .B0(n191), .B1(n219), .Y(n157) );
  NAND2XL U318 ( .A(b[4]), .B(n226), .Y(n295) );
  NAND2X1 U319 ( .A(n294), .B(n283), .Y(n296) );
  NAND2X1 U320 ( .A(n295), .B(n296), .Y(n185) );
  INVXL U321 ( .A(b[4]), .Y(n294) );
  OAI22X1 U322 ( .A0(n214), .A1(n186), .B0(n185), .B1(n218), .Y(n151) );
  OAI22X1 U323 ( .A0(n214), .A1(n185), .B0(n184), .B1(n218), .Y(n150) );
  OR2XL U324 ( .A(n215), .B(n195), .Y(n297) );
  OR2XL U325 ( .A(n194), .B(n219), .Y(n298) );
  BUFX12 U326 ( .A(n231), .Y(n215) );
  OAI22X1 U327 ( .A0(n213), .A1(n221), .B0(n217), .B1(n181), .Y(n129) );
  XNOR2X2 U328 ( .A(n31), .B(n4), .Y(product[11]) );
  AOI21X2 U329 ( .A0(n31), .A1(n271), .B0(n28), .Y(n26) );
  OAI21X1 U330 ( .A0(n32), .A1(n49), .B0(n33), .Y(n31) );
  XNOR2X1 U331 ( .A(b[6]), .B(n226), .Y(n183) );
  OAI22X1 U332 ( .A0(n213), .A1(n178), .B0(n177), .B1(n217), .Y(n143) );
  OAI22X1 U333 ( .A0(n213), .A1(n179), .B0(n178), .B1(n217), .Y(n144) );
  XNOR2X1 U334 ( .A(b[2]), .B(a[5]), .Y(n178) );
  OAI21X2 U335 ( .A0(n47), .A1(n41), .B0(n42), .Y(n40) );
  NOR2X2 U336 ( .A(n46), .B(n41), .Y(n39) );
  NAND2X1 U337 ( .A(n162), .B(n155), .Y(n73) );
  XNOR2X1 U338 ( .A(a[1]), .B(a[2]), .Y(n234) );
  AOI21X1 U339 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  NOR2X1 U340 ( .A(n52), .B(n55), .Y(n50) );
  OAI21X2 U341 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  NOR2XL U342 ( .A(n132), .B(n91), .Y(n16) );
  NAND2X1 U343 ( .A(n93), .B(n92), .Y(n22) );
  OAI22XL U344 ( .A0(n214), .A1(n189), .B0(n188), .B1(n218), .Y(n154) );
  NOR2BXL U345 ( .AN(b[0]), .B(n218), .Y(n155) );
  AOI21X2 U346 ( .A0(n270), .A1(n74), .B0(n71), .Y(n69) );
  NAND2XL U347 ( .A(n85), .B(n56), .Y(n9) );
  OAI21X1 U348 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NAND2XL U349 ( .A(n271), .B(n30), .Y(n4) );
  INVXL U350 ( .A(n47), .Y(n45) );
  INVXL U351 ( .A(n46), .Y(n44) );
  INVX1 U352 ( .A(n37), .Y(n35) );
  OR2XL U353 ( .A(n163), .B(n131), .Y(n300) );
  OAI22XL U354 ( .A0(n215), .A1(n196), .B0(n195), .B1(n219), .Y(n161) );
  NOR2BXL U355 ( .AN(b[0]), .B(n219), .Y(product[0]) );
  XNOR2XL U356 ( .A(n226), .B(b[0]), .Y(n189) );
  NAND2BXL U357 ( .AN(b[0]), .B(n226), .Y(n190) );
  NOR2BXL U358 ( .AN(b[0]), .B(n217), .Y(n146) );
  OAI22X1 U359 ( .A0(n212), .A1(n169), .B0(n168), .B1(n216), .Y(n105) );
  AO21XL U360 ( .A0(n214), .A1(n218), .B0(n182), .Y(n147) );
  ADDFXL U361 ( .A(n97), .B(n133), .CI(n138), .CO(n93), .S(n94) );
  AO21XL U362 ( .A0(n213), .A1(n217), .B0(n173), .Y(n138) );
  OAI22X1 U363 ( .A0(n212), .A1(n165), .B0(n164), .B1(n216), .Y(n91) );
  AO21XL U364 ( .A0(n212), .A1(n216), .B0(n164), .Y(n132) );
  BUFX8 U365 ( .A(n230), .Y(n214) );
  NAND2XL U366 ( .A(n210), .B(n234), .Y(n230) );
  XOR2XL U367 ( .A(a[3]), .B(a[2]), .Y(n210) );
  BUFX8 U368 ( .A(n229), .Y(n213) );
  INVX1 U369 ( .A(a[0]), .Y(n235) );
  XNOR2XL U370 ( .A(b[1]), .B(a[5]), .Y(n179) );
  XNOR2XL U371 ( .A(b[4]), .B(a[5]), .Y(n176) );
  XNOR2XL U372 ( .A(b[5]), .B(a[5]), .Y(n175) );
  XNOR2XL U373 ( .A(b[7]), .B(a[1]), .Y(n191) );
  XNOR2XL U374 ( .A(b[7]), .B(n226), .Y(n182) );
  XNOR2XL U375 ( .A(b[6]), .B(a[5]), .Y(n174) );
  XNOR2XL U376 ( .A(b[4]), .B(a[7]), .Y(n167) );
  XNOR2XL U377 ( .A(b[5]), .B(a[7]), .Y(n166) );
  XNOR2XL U378 ( .A(b[7]), .B(a[5]), .Y(n173) );
  CLKINVX1 U379 ( .A(n58), .Y(n57) );
  XNOR2X1 U380 ( .A(n13), .B(n74), .Y(product[2]) );
  NAND2X1 U381 ( .A(n270), .B(n73), .Y(n13) );
  XNOR2X1 U382 ( .A(n48), .B(n7), .Y(product[8]) );
  NAND2X1 U383 ( .A(n44), .B(n47), .Y(n7) );
  XNOR2X1 U384 ( .A(n66), .B(n11), .Y(product[4]) );
  NAND2X1 U385 ( .A(n269), .B(n65), .Y(n11) );
  NAND2X1 U386 ( .A(n84), .B(n53), .Y(n8) );
  CLKINVX1 U387 ( .A(n52), .Y(n84) );
  CLKINVX1 U388 ( .A(n65), .Y(n63) );
  CLKINVX1 U389 ( .A(n30), .Y(n28) );
  CLKINVX1 U390 ( .A(n73), .Y(n71) );
  NAND2X1 U391 ( .A(n39), .B(n268), .Y(n32) );
  AOI21X1 U392 ( .A0(n40), .A1(n268), .B0(n35), .Y(n33) );
  XOR2X1 U393 ( .A(n12), .B(n69), .Y(product[3]) );
  NAND2X1 U394 ( .A(n88), .B(n68), .Y(n12) );
  CLKINVX1 U395 ( .A(n67), .Y(n88) );
  XOR2X1 U396 ( .A(n57), .B(n9), .Y(product[6]) );
  CLKINVX1 U397 ( .A(n55), .Y(n85) );
  NAND2X1 U398 ( .A(n82), .B(n42), .Y(n6) );
  AOI21X1 U399 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  CLKINVX1 U400 ( .A(n41), .Y(n82) );
  NAND2X1 U401 ( .A(n268), .B(n37), .Y(n5) );
  AOI21X1 U402 ( .A0(n48), .A1(n39), .B0(n40), .Y(n38) );
  NAND2X1 U403 ( .A(n86), .B(n60), .Y(n10) );
  XOR2X1 U404 ( .A(n26), .B(n3), .Y(product[12]) );
  NAND2X1 U405 ( .A(n79), .B(n25), .Y(n3) );
  CLKINVX1 U406 ( .A(n24), .Y(n79) );
  CLKINVX1 U407 ( .A(n76), .Y(n74) );
  NAND2X1 U408 ( .A(n267), .B(n22), .Y(n2) );
  CLKINVX1 U409 ( .A(n22), .Y(n20) );
  OAI21X1 U410 ( .A0(n26), .A1(n24), .B0(n25), .Y(n23) );
  XOR2X1 U411 ( .A(n18), .B(n1), .Y(product[14]) );
  NAND2X1 U412 ( .A(n77), .B(n17), .Y(n1) );
  CLKINVX1 U413 ( .A(n16), .Y(n77) );
  NOR2X2 U414 ( .A(n114), .B(n118), .Y(n52) );
  NOR2X2 U415 ( .A(n104), .B(n108), .Y(n41) );
  NOR2X2 U416 ( .A(n127), .B(n161), .Y(n67) );
  NAND2X1 U417 ( .A(n119), .B(n120), .Y(n56) );
  NAND2X1 U418 ( .A(n114), .B(n118), .Y(n53) );
  NAND2X1 U419 ( .A(n127), .B(n161), .Y(n68) );
  NAND2X1 U420 ( .A(n125), .B(n126), .Y(n65) );
  NAND2X1 U421 ( .A(n121), .B(n124), .Y(n60) );
  CLKINVX1 U422 ( .A(n105), .Y(n106) );
  NAND2X1 U423 ( .A(n109), .B(n113), .Y(n47) );
  NAND2X1 U424 ( .A(n101), .B(n103), .Y(n37) );
  NAND2X1 U425 ( .A(n100), .B(n96), .Y(n30) );
  NAND2X1 U426 ( .A(n104), .B(n108), .Y(n42) );
  NAND2X1 U427 ( .A(n132), .B(n91), .Y(n17) );
  CLKINVX1 U428 ( .A(n91), .Y(n92) );
  NAND2X1 U429 ( .A(n95), .B(n94), .Y(n25) );
  XNOR2X1 U430 ( .A(a[1]), .B(b[0]), .Y(n198) );
  NAND2BX1 U431 ( .AN(b[0]), .B(a[1]), .Y(n199) );
  NOR2BX1 U432 ( .AN(b[0]), .B(n216), .Y(n137) );
  CMPR42X1 U433 ( .A(n105), .B(n134), .C(n140), .D(n147), .ICI(n102), .S(n101), 
        .ICO(n99), .CO(n100) );
  OAI22XL U434 ( .A0(n213), .A1(n175), .B0(n174), .B1(n217), .Y(n140) );
  OAI22XL U435 ( .A0(n212), .A1(n168), .B0(n167), .B1(n216), .Y(n134) );
  CMPR42X1 U436 ( .A(n148), .B(n141), .C(n106), .D(n110), .ICI(n107), .S(n104), 
        .ICO(n102), .CO(n103) );
  OAI22XL U437 ( .A0(n213), .A1(n176), .B0(n175), .B1(n217), .Y(n141) );
  OR2X1 U438 ( .A(n265), .B(n135), .Y(n110) );
  CMPR42X1 U439 ( .A(n142), .B(n156), .C(n115), .D(n112), .ICI(n111), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X1 U440 ( .A(n265), .B(n135), .Y(n111) );
  AO21X1 U441 ( .A0(n215), .A1(n219), .B0(n191), .Y(n156) );
  OAI22XL U442 ( .A0(n213), .A1(n177), .B0(n176), .B1(n217), .Y(n142) );
  XNOR2X1 U443 ( .A(a[7]), .B(b[0]), .Y(n171) );
  OAI22XL U444 ( .A0(n213), .A1(n180), .B0(n179), .B1(n217), .Y(n145) );
  XNOR2X1 U445 ( .A(a[5]), .B(b[0]), .Y(n180) );
  CLKINVX1 U446 ( .A(a[5]), .Y(n221) );
  NAND2BX1 U447 ( .AN(b[0]), .B(a[5]), .Y(n181) );
  NAND2BX1 U448 ( .AN(b[0]), .B(a[7]), .Y(n172) );
  OAI22XL U449 ( .A0(n212), .A1(n167), .B0(n166), .B1(n216), .Y(n97) );
  OAI22XL U450 ( .A0(n212), .A1(n166), .B0(n165), .B1(n216), .Y(n133) );
  OAI22XL U451 ( .A0(n213), .A1(n174), .B0(n173), .B1(n217), .Y(n139) );
  CLKINVX1 U452 ( .A(n97), .Y(n98) );
  XNOR2X1 U453 ( .A(b[1]), .B(a[1]), .Y(n197) );
  XNOR2X1 U454 ( .A(b[2]), .B(a[1]), .Y(n196) );
  XNOR2X1 U455 ( .A(b[1]), .B(n226), .Y(n188) );
  XNOR2X1 U456 ( .A(b[3]), .B(a[5]), .Y(n177) );
  XNOR2X1 U457 ( .A(b[3]), .B(a[7]), .Y(n168) );
  NAND2X1 U458 ( .A(n211), .B(n235), .Y(n231) );
  XOR2X1 U459 ( .A(a[0]), .B(a[1]), .Y(n211) );
  XNOR2X1 U460 ( .A(b[2]), .B(a[7]), .Y(n169) );
  XNOR2X1 U461 ( .A(b[6]), .B(a[7]), .Y(n165) );
  XNOR2X1 U462 ( .A(b[7]), .B(a[7]), .Y(n164) );
endmodule


module CONV_DW_mult_tc_20 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n22, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50,
         n53, n54, n55, n57, n58, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n71, n73, n74, n75, n76, n77, n79, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n91, n92, n93, n94, n96, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n228, n229, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305;

  OAI22X2 U238 ( .A0(n223), .A1(n203), .B0(n202), .B1(n243), .Y(n168) );
  CLKINVX1 U239 ( .A(n113), .Y(n114) );
  OAI22X2 U240 ( .A0(n220), .A1(n177), .B0(n176), .B1(n224), .Y(n113) );
  ADDHX1 U241 ( .A(n138), .B(n162), .CO(n134), .S(n135) );
  OAI22X2 U242 ( .A0(n222), .A1(n197), .B0(n196), .B1(n226), .Y(n162) );
  NOR2X2 U243 ( .A(n117), .B(n121), .Y(n54) );
  NAND2X2 U244 ( .A(n296), .B(n297), .Y(n202) );
  XNOR2X2 U245 ( .A(a[5]), .B(a[6]), .Y(n240) );
  NAND2X2 U246 ( .A(n170), .B(n163), .Y(n81) );
  NOR2BX2 U247 ( .AN(n215), .B(n226), .Y(n163) );
  CLKBUFX3 U248 ( .A(n18), .Y(n273) );
  NAND2X4 U249 ( .A(n219), .B(n243), .Y(n239) );
  XOR2X2 U250 ( .A(a[0]), .B(a[1]), .Y(n219) );
  OAI22X2 U251 ( .A0(n222), .A1(n287), .B0(n226), .B1(n198), .Y(n138) );
  AOI21X4 U252 ( .A0(n278), .A1(n82), .B0(n79), .Y(n77) );
  XOR2X4 U253 ( .A(n35), .B(n4), .Y(product[11]) );
  XOR2X2 U254 ( .A(n12), .B(n77), .Y(product[3]) );
  XOR2X2 U255 ( .A(n65), .B(n9), .Y(product[6]) );
  NOR2X2 U256 ( .A(n45), .B(n40), .Y(n36) );
  NOR2X2 U257 ( .A(n40), .B(n33), .Y(n31) );
  OAI21X2 U258 ( .A0(n46), .A1(n40), .B0(n41), .Y(n37) );
  NOR2X2 U259 ( .A(n109), .B(n111), .Y(n40) );
  BUFX3 U260 ( .A(n166), .Y(n274) );
  ADDFHX2 U261 ( .A(n154), .B(n161), .CI(n168), .CO(n132), .S(n133) );
  XNOR2X4 U262 ( .A(b[7]), .B(n234), .Y(n190) );
  XNOR2X1 U263 ( .A(b[7]), .B(n235), .Y(n199) );
  BUFX8 U264 ( .A(n76), .Y(n275) );
  OAI22X2 U265 ( .A0(n222), .A1(n196), .B0(n195), .B1(n226), .Y(n161) );
  BUFX16 U266 ( .A(n238), .Y(n222) );
  INVX3 U267 ( .A(n14), .Y(product[1]) );
  XNOR2X2 U268 ( .A(b[6]), .B(n235), .Y(n200) );
  OR2X2 U269 ( .A(n170), .B(n163), .Y(n278) );
  OR2X2 U270 ( .A(n207), .B(n243), .Y(n292) );
  OAI22X2 U271 ( .A0(n223), .A1(n206), .B0(n205), .B1(n243), .Y(n171) );
  OR2X4 U272 ( .A(n204), .B(n243), .Y(n301) );
  OR2X8 U273 ( .A(n203), .B(n243), .Y(n299) );
  INVX12 U274 ( .A(a[0]), .Y(n243) );
  XNOR2X2 U275 ( .A(b[1]), .B(n235), .Y(n205) );
  INVX4 U276 ( .A(n67), .Y(n94) );
  OAI21X4 U277 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  NOR2X4 U278 ( .A(n129), .B(n132), .Y(n67) );
  OR2X2 U279 ( .A(n133), .B(n134), .Y(n277) );
  BUFX6 U280 ( .A(n242), .Y(n276) );
  NAND2X4 U281 ( .A(n300), .B(n301), .Y(n170) );
  XNOR2X1 U282 ( .A(n235), .B(n215), .Y(n206) );
  BUFX20 U283 ( .A(b[0]), .Y(n215) );
  XNOR2X4 U284 ( .A(n13), .B(n82), .Y(product[2]) );
  XNOR2X2 U285 ( .A(b[2]), .B(n232), .Y(n177) );
  XNOR2X2 U286 ( .A(b[2]), .B(n234), .Y(n195) );
  XOR2X1 U287 ( .A(a[5]), .B(a[4]), .Y(n217) );
  OAI22X1 U288 ( .A0(n220), .A1(n175), .B0(n174), .B1(n224), .Y(n105) );
  BUFX4 U289 ( .A(n171), .Y(n293) );
  XNOR2X1 U290 ( .A(b[2]), .B(n235), .Y(n204) );
  OR2X1 U291 ( .A(n223), .B(n205), .Y(n300) );
  XNOR2X1 U292 ( .A(b[2]), .B(n233), .Y(n186) );
  XNOR2X1 U293 ( .A(b[1]), .B(n233), .Y(n187) );
  OAI22X1 U294 ( .A0(n223), .A1(n202), .B0(n201), .B1(n243), .Y(n167) );
  BUFX4 U295 ( .A(a[7]), .Y(n232) );
  XNOR2X1 U296 ( .A(b[5]), .B(n232), .Y(n174) );
  XNOR2X1 U297 ( .A(n234), .B(n215), .Y(n197) );
  NOR2BX1 U298 ( .AN(n215), .B(n225), .Y(n154) );
  AO21X1 U299 ( .A0(n223), .A1(n243), .B0(n199), .Y(n164) );
  OAI22X1 U300 ( .A0(n221), .A1(n185), .B0(n184), .B1(n225), .Y(n150) );
  CLKINVX1 U301 ( .A(n47), .Y(n45) );
  OAI22XL U302 ( .A0(n221), .A1(n183), .B0(n182), .B1(n225), .Y(n148) );
  NAND2X1 U303 ( .A(n285), .B(n286), .Y(n142) );
  XNOR2X1 U304 ( .A(b[6]), .B(n232), .Y(n173) );
  CLKBUFX8 U305 ( .A(n236), .Y(n220) );
  XOR2X1 U306 ( .A(a[7]), .B(a[6]), .Y(n216) );
  BUFX4 U307 ( .A(n240), .Y(n224) );
  OAI21XL U308 ( .A0(n33), .A1(n41), .B0(n34), .Y(n32) );
  NOR2X2 U309 ( .A(n135), .B(n169), .Y(n75) );
  NAND2X1 U310 ( .A(n135), .B(n169), .Y(n76) );
  NOR2X1 U311 ( .A(n108), .B(n104), .Y(n33) );
  NOR2X1 U312 ( .A(n293), .B(n139), .Y(n83) );
  NAND2X1 U313 ( .A(n92), .B(n61), .Y(n8) );
  NAND2X1 U314 ( .A(n87), .B(n27), .Y(n3) );
  CLKINVX1 U315 ( .A(n40), .Y(n89) );
  CLKINVX1 U316 ( .A(n49), .Y(n283) );
  CLKINVX1 U317 ( .A(n55), .Y(n53) );
  CMPR42X1 U318 ( .A(n113), .B(n142), .C(n148), .D(n155), .ICI(n110), .S(n109), 
        .ICO(n107), .CO(n108) );
  INVX1 U319 ( .A(b[4]), .Y(n294) );
  NAND2X1 U320 ( .A(n117), .B(n121), .Y(n55) );
  NOR2X2 U321 ( .A(n112), .B(n116), .Y(n49) );
  CLKINVX1 U322 ( .A(n48), .Y(n46) );
  NAND2X2 U323 ( .A(n284), .B(n50), .Y(n48) );
  NOR2X1 U324 ( .A(n103), .B(n102), .Y(n26) );
  CLKINVX1 U325 ( .A(n26), .Y(n87) );
  XNOR2X4 U326 ( .A(a[3]), .B(a[4]), .Y(n241) );
  XNOR2X2 U327 ( .A(n302), .B(n7), .Y(product[8]) );
  NAND2X2 U328 ( .A(n91), .B(n55), .Y(n7) );
  XNOR2X2 U329 ( .A(n305), .B(n2), .Y(product[13]) );
  NAND2X2 U330 ( .A(n47), .B(n31), .Y(n29) );
  NOR2X1 U331 ( .A(n54), .B(n49), .Y(n47) );
  NAND2X1 U332 ( .A(b[5]), .B(n234), .Y(n281) );
  NAND2X2 U333 ( .A(n279), .B(n280), .Y(n282) );
  NAND2X4 U334 ( .A(n281), .B(n282), .Y(n192) );
  INVXL U335 ( .A(b[5]), .Y(n279) );
  INVX1 U336 ( .A(n234), .Y(n280) );
  CLKBUFX6 U337 ( .A(a[3]), .Y(n234) );
  NAND2X2 U338 ( .A(n53), .B(n283), .Y(n284) );
  AOI21X2 U339 ( .A0(n48), .A1(n31), .B0(n32), .Y(n30) );
  OR2X1 U340 ( .A(n220), .B(n176), .Y(n285) );
  OR2X1 U341 ( .A(n175), .B(n224), .Y(n286) );
  XNOR2X1 U342 ( .A(b[3]), .B(n232), .Y(n176) );
  XNOR2X2 U343 ( .A(b[4]), .B(n232), .Y(n175) );
  NAND2X2 U344 ( .A(b[4]), .B(n234), .Y(n288) );
  NAND2X4 U345 ( .A(n294), .B(n287), .Y(n289) );
  NAND2X6 U346 ( .A(n288), .B(n289), .Y(n193) );
  INVX1 U347 ( .A(n234), .Y(n287) );
  OAI22X2 U348 ( .A0(n222), .A1(n193), .B0(n192), .B1(n226), .Y(n158) );
  AND2X8 U349 ( .A(n74), .B(n277), .Y(n290) );
  NOR2X6 U350 ( .A(n290), .B(n71), .Y(n69) );
  OAI21X4 U351 ( .A0(n77), .A1(n75), .B0(n275), .Y(n74) );
  CLKINVX2 U352 ( .A(n73), .Y(n71) );
  XOR2X2 U353 ( .A(n69), .B(n10), .Y(product[5]) );
  OR2X2 U354 ( .A(n223), .B(n231), .Y(n291) );
  NAND2X4 U355 ( .A(n291), .B(n292), .Y(n139) );
  NAND2X6 U356 ( .A(n293), .B(n139), .Y(n84) );
  CLKXOR2X1 U357 ( .A(a[3]), .B(a[2]), .Y(n218) );
  NAND2X2 U358 ( .A(n216), .B(n240), .Y(n236) );
  CMPR42X2 U359 ( .A(n145), .B(n152), .C(n159), .D(n274), .ICI(n130), .S(n127), 
        .ICO(n125), .CO(n126) );
  OAI22X1 U360 ( .A0(n221), .A1(n187), .B0(n186), .B1(n225), .Y(n152) );
  XNOR2X4 U361 ( .A(n304), .B(n6), .Y(product[9]) );
  XOR2X4 U362 ( .A(n42), .B(n5), .Y(product[10]) );
  BUFX3 U363 ( .A(n241), .Y(n225) );
  CMPR42X2 U364 ( .A(n144), .B(n158), .C(n165), .D(n124), .ICI(n125), .S(n122), 
        .ICO(n120), .CO(n121) );
  OAI22X1 U365 ( .A0(n220), .A1(n179), .B0(n178), .B1(n224), .Y(n144) );
  XNOR2X2 U366 ( .A(b[1]), .B(n234), .Y(n196) );
  NAND2X1 U367 ( .A(n217), .B(n241), .Y(n237) );
  OAI21X4 U368 ( .A0(n29), .A1(n57), .B0(n30), .Y(n28) );
  XNOR2X1 U369 ( .A(b[6]), .B(n233), .Y(n182) );
  OAI22X1 U370 ( .A0(n221), .A1(n186), .B0(n185), .B1(n225), .Y(n151) );
  XNOR2X4 U371 ( .A(b[5]), .B(n235), .Y(n201) );
  XNOR2X2 U372 ( .A(b[5]), .B(n233), .Y(n183) );
  OAI22X1 U373 ( .A0(n221), .A1(n184), .B0(n183), .B1(n225), .Y(n149) );
  XNOR2X1 U374 ( .A(b[4]), .B(n233), .Y(n184) );
  NAND2X2 U375 ( .A(n218), .B(n276), .Y(n238) );
  ADDFHX2 U376 ( .A(n160), .B(n153), .CI(n131), .CO(n128), .S(n129) );
  OAI22X1 U377 ( .A0(n221), .A1(n188), .B0(n187), .B1(n225), .Y(n153) );
  OAI22X1 U378 ( .A0(n222), .A1(n195), .B0(n194), .B1(n226), .Y(n160) );
  XNOR2XL U379 ( .A(b[7]), .B(n232), .Y(n172) );
  OAI22X4 U380 ( .A0(n220), .A1(n178), .B0(n177), .B1(n224), .Y(n143) );
  OAI22X1 U381 ( .A0(n221), .A1(n229), .B0(n225), .B1(n189), .Y(n137) );
  XNOR2X1 U382 ( .A(b[6]), .B(n234), .Y(n191) );
  OAI22X2 U383 ( .A0(n222), .A1(n194), .B0(n193), .B1(n226), .Y(n159) );
  OAI22X2 U384 ( .A0(n222), .A1(n192), .B0(n191), .B1(n226), .Y(n157) );
  OAI22X2 U385 ( .A0(n223), .A1(n200), .B0(n199), .B1(n243), .Y(n165) );
  BUFX12 U386 ( .A(n276), .Y(n226) );
  XNOR2X2 U387 ( .A(b[3]), .B(n233), .Y(n185) );
  XNOR2X1 U388 ( .A(b[3]), .B(n234), .Y(n194) );
  XNOR2X4 U389 ( .A(b[3]), .B(n235), .Y(n203) );
  OAI22X1 U390 ( .A0(n222), .A1(n191), .B0(n190), .B1(n226), .Y(n156) );
  XNOR2X4 U391 ( .A(b[1]), .B(n232), .Y(n178) );
  NAND2XL U392 ( .A(b[4]), .B(n235), .Y(n296) );
  NAND2X1 U393 ( .A(n294), .B(n295), .Y(n297) );
  INVXL U394 ( .A(n235), .Y(n295) );
  BUFX20 U395 ( .A(a[1]), .Y(n235) );
  OR2XL U396 ( .A(n223), .B(n204), .Y(n298) );
  NAND2X1 U397 ( .A(n298), .B(n299), .Y(n169) );
  BUFX12 U398 ( .A(n239), .Y(n223) );
  BUFX4 U399 ( .A(a[5]), .Y(n233) );
  NAND2X2 U400 ( .A(n96), .B(n275), .Y(n12) );
  NAND2X1 U401 ( .A(n93), .B(n64), .Y(n9) );
  CLKINVX1 U402 ( .A(n27), .Y(n25) );
  XNOR2X1 U403 ( .A(a[1]), .B(a[2]), .Y(n242) );
  CLKINVX3 U404 ( .A(n75), .Y(n96) );
  AO21X1 U405 ( .A0(n28), .A1(n87), .B0(n25), .Y(n305) );
  OAI21X1 U406 ( .A0(n65), .A1(n63), .B0(n64), .Y(n62) );
  XNOR2X1 U407 ( .A(n28), .B(n3), .Y(product[12]) );
  INVX3 U408 ( .A(n302), .Y(n57) );
  NOR2X1 U409 ( .A(n60), .B(n63), .Y(n58) );
  OA21X4 U410 ( .A0(n60), .A1(n64), .B0(n61), .Y(n303) );
  CLKINVX1 U411 ( .A(n81), .Y(n79) );
  AO21XL U412 ( .A0(n302), .A1(n91), .B0(n53), .Y(n304) );
  AOI21XL U413 ( .A0(n28), .A1(n19), .B0(n20), .Y(n18) );
  NOR2XL U414 ( .A(n26), .B(n21), .Y(n19) );
  NAND2XL U415 ( .A(n94), .B(n68), .Y(n10) );
  INVXL U416 ( .A(n54), .Y(n91) );
  INVXL U417 ( .A(n60), .Y(n92) );
  NOR2X2 U418 ( .A(n127), .B(n128), .Y(n63) );
  NAND2X1 U419 ( .A(n101), .B(n100), .Y(n22) );
  NOR2X1 U420 ( .A(n101), .B(n100), .Y(n21) );
  NOR2XL U421 ( .A(n140), .B(n99), .Y(n16) );
  OAI2BB1X4 U422 ( .A0N(n58), .A1N(n66), .B0(n303), .Y(n302) );
  XNOR2X2 U423 ( .A(n62), .B(n8), .Y(product[7]) );
  OA21XL U424 ( .A0(n273), .A1(n16), .B0(n17), .Y(product[15]) );
  NAND2BXL U425 ( .AN(n83), .B(n84), .Y(n14) );
  ADDHX1 U426 ( .A(n136), .B(n151), .CO(n123), .S(n124) );
  OAI22X1 U427 ( .A0(n220), .A1(n228), .B0(n224), .B1(n180), .Y(n136) );
  ADDHX1 U428 ( .A(n137), .B(n167), .CO(n130), .S(n131) );
  INVXL U429 ( .A(n235), .Y(n231) );
  NAND2BXL U430 ( .AN(n215), .B(n235), .Y(n207) );
  NOR2BXL U431 ( .AN(n215), .B(n243), .Y(product[0]) );
  NAND2BXL U432 ( .AN(n215), .B(n234), .Y(n198) );
  ADDFXL U433 ( .A(n105), .B(n141), .CI(n146), .CO(n101), .S(n102) );
  AO21XL U434 ( .A0(n221), .A1(n225), .B0(n181), .Y(n146) );
  OAI22X1 U435 ( .A0(n220), .A1(n173), .B0(n172), .B1(n224), .Y(n99) );
  AO21XL U436 ( .A0(n220), .A1(n224), .B0(n172), .Y(n140) );
  BUFX8 U437 ( .A(n237), .Y(n221) );
  XNOR2XL U438 ( .A(b[7]), .B(n233), .Y(n181) );
  CLKINVX1 U439 ( .A(n45), .Y(n43) );
  CLKINVX1 U440 ( .A(n66), .Y(n65) );
  NAND2X1 U441 ( .A(n278), .B(n81), .Y(n13) );
  OAI21XL U442 ( .A0(n27), .A1(n21), .B0(n22), .Y(n20) );
  CLKINVX1 U443 ( .A(n63), .Y(n93) );
  NAND2X1 U444 ( .A(n283), .B(n50), .Y(n6) );
  NAND2X1 U445 ( .A(n89), .B(n41), .Y(n5) );
  AOI21X1 U446 ( .A0(n302), .A1(n43), .B0(n48), .Y(n42) );
  NAND2X1 U447 ( .A(n88), .B(n34), .Y(n4) );
  AOI21X1 U448 ( .A0(n36), .A1(n302), .B0(n37), .Y(n35) );
  CLKINVX1 U449 ( .A(n33), .Y(n88) );
  NAND2X1 U450 ( .A(n86), .B(n22), .Y(n2) );
  CLKINVX1 U451 ( .A(n21), .Y(n86) );
  XOR2X1 U452 ( .A(n273), .B(n1), .Y(product[14]) );
  NAND2X1 U453 ( .A(n85), .B(n17), .Y(n1) );
  CLKINVX1 U454 ( .A(n16), .Y(n85) );
  CLKINVX1 U455 ( .A(n84), .Y(n82) );
  XNOR2X1 U456 ( .A(n74), .B(n11), .Y(product[4]) );
  NAND2X1 U457 ( .A(n277), .B(n73), .Y(n11) );
  NOR2X2 U458 ( .A(n122), .B(n126), .Y(n60) );
  NAND2X1 U459 ( .A(n127), .B(n128), .Y(n64) );
  NAND2X1 U460 ( .A(n109), .B(n111), .Y(n41) );
  NAND2X1 U461 ( .A(n122), .B(n126), .Y(n61) );
  NAND2X1 U462 ( .A(n112), .B(n116), .Y(n50) );
  NAND2X1 U463 ( .A(n108), .B(n104), .Y(n34) );
  NAND2X1 U464 ( .A(n133), .B(n134), .Y(n73) );
  NAND2X1 U465 ( .A(n129), .B(n132), .Y(n68) );
  NAND2X1 U466 ( .A(n103), .B(n102), .Y(n27) );
  CLKINVX1 U467 ( .A(n99), .Y(n100) );
  NAND2X1 U468 ( .A(n140), .B(n99), .Y(n17) );
  OAI22XL U469 ( .A0(n223), .A1(n201), .B0(n200), .B1(n243), .Y(n166) );
  NOR2BX1 U470 ( .AN(n215), .B(n224), .Y(n145) );
  AO21X1 U471 ( .A0(n222), .A1(n226), .B0(n190), .Y(n155) );
  CMPR42X1 U472 ( .A(n156), .B(n149), .C(n114), .D(n118), .ICI(n115), .S(n112), 
        .ICO(n110), .CO(n111) );
  OR2X1 U473 ( .A(n157), .B(n143), .Y(n118) );
  CMPR42X1 U474 ( .A(n150), .B(n164), .C(n123), .D(n120), .ICI(n119), .S(n117), 
        .ICO(n115), .CO(n116) );
  XNOR2X1 U475 ( .A(n157), .B(n143), .Y(n119) );
  CLKINVX1 U476 ( .A(n232), .Y(n228) );
  XNOR2X1 U477 ( .A(n232), .B(n215), .Y(n179) );
  XNOR2X1 U478 ( .A(n233), .B(n215), .Y(n188) );
  ADDFX2 U479 ( .A(n147), .B(n106), .CI(n107), .CO(n103), .S(n104) );
  OAI22XL U480 ( .A0(n221), .A1(n182), .B0(n181), .B1(n225), .Y(n147) );
  CLKINVX1 U481 ( .A(n105), .Y(n106) );
  CLKINVX1 U482 ( .A(n233), .Y(n229) );
  NAND2BX1 U483 ( .AN(n215), .B(n233), .Y(n189) );
  NAND2BX1 U484 ( .AN(n215), .B(n232), .Y(n180) );
  OAI22XL U485 ( .A0(n220), .A1(n174), .B0(n173), .B1(n224), .Y(n141) );
endmodule


module CONV_DW_mult_tc_21 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47,
         n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n71, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n88, n90, n92, n93, n94, n96,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n228, n230,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310;

  NOR2BX1 U238 ( .AN(b[0]), .B(n225), .Y(n154) );
  BUFX8 U239 ( .A(n241), .Y(n225) );
  ADDFHX1 U240 ( .A(n154), .B(n161), .CI(n168), .CO(n132), .S(n133) );
  NAND2X2 U241 ( .A(n297), .B(n298), .Y(n161) );
  BUFX6 U242 ( .A(n57), .Y(n273) );
  OR2X2 U243 ( .A(n133), .B(n134), .Y(n276) );
  XOR2X2 U244 ( .A(n69), .B(n10), .Y(product[5]) );
  NAND2X1 U245 ( .A(n93), .B(n64), .Y(n9) );
  XOR2X4 U246 ( .A(n65), .B(n9), .Y(product[6]) );
  XOR2X4 U247 ( .A(n35), .B(n4), .Y(product[11]) );
  AO21X2 U248 ( .A0(n56), .A1(n52), .B0(n53), .Y(n309) );
  INVX6 U249 ( .A(n273), .Y(n56) );
  XNOR2X2 U250 ( .A(n235), .B(b[0]), .Y(n206) );
  NAND2BX1 U251 ( .AN(b[0]), .B(n232), .Y(n180) );
  NAND2BXL U252 ( .AN(b[0]), .B(n235), .Y(n207) );
  XNOR2X2 U253 ( .A(n233), .B(b[0]), .Y(n188) );
  OAI22X2 U254 ( .A0(n221), .A1(n187), .B0(n186), .B1(n225), .Y(n152) );
  BUFX20 U255 ( .A(n237), .Y(n221) );
  CLKINVX1 U256 ( .A(n232), .Y(n228) );
  XNOR2X4 U257 ( .A(b[1]), .B(n232), .Y(n178) );
  XNOR2XL U258 ( .A(n232), .B(b[0]), .Y(n179) );
  XNOR2X2 U259 ( .A(b[2]), .B(n232), .Y(n177) );
  XNOR2X2 U260 ( .A(b[3]), .B(n232), .Y(n176) );
  BUFX20 U261 ( .A(a[7]), .Y(n232) );
  OAI22X2 U262 ( .A0(n223), .A1(n202), .B0(n201), .B1(n243), .Y(n167) );
  NAND2X4 U263 ( .A(n304), .B(n305), .Y(n201) );
  XOR2X4 U264 ( .A(n12), .B(n77), .Y(product[3]) );
  BUFX16 U265 ( .A(n236), .Y(n220) );
  NAND2X4 U266 ( .A(n216), .B(n240), .Y(n236) );
  XNOR2X4 U267 ( .A(n62), .B(n8), .Y(product[7]) );
  NAND2X1 U268 ( .A(n92), .B(n61), .Y(n8) );
  OR2X6 U269 ( .A(n178), .B(n224), .Y(n278) );
  BUFX6 U270 ( .A(n139), .Y(n274) );
  OAI22X1 U271 ( .A0(n223), .A1(n299), .B0(n207), .B1(n243), .Y(n139) );
  CMPR42X2 U272 ( .A(n145), .B(n152), .C(n159), .D(n166), .ICI(n130), .S(n127), 
        .ICO(n125), .CO(n126) );
  OAI22X1 U273 ( .A0(n222), .A1(n194), .B0(n193), .B1(n226), .Y(n159) );
  NAND2X4 U274 ( .A(n217), .B(n241), .Y(n237) );
  XNOR2X2 U275 ( .A(a[3]), .B(a[4]), .Y(n241) );
  XNOR2X4 U276 ( .A(n74), .B(n11), .Y(product[4]) );
  BUFX16 U277 ( .A(n240), .Y(n224) );
  NAND2X4 U278 ( .A(n219), .B(n243), .Y(n239) );
  OAI22X2 U279 ( .A0(n223), .A1(n203), .B0(n202), .B1(n243), .Y(n168) );
  OAI22X4 U280 ( .A0(n223), .A1(n205), .B0(n204), .B1(n243), .Y(n170) );
  NOR2BX1 U281 ( .AN(b[0]), .B(n243), .Y(product[0]) );
  INVX12 U282 ( .A(a[0]), .Y(n243) );
  OAI22X1 U283 ( .A0(n222), .A1(n197), .B0(n196), .B1(n226), .Y(n162) );
  INVX8 U284 ( .A(n54), .Y(n52) );
  NOR2X8 U285 ( .A(n117), .B(n121), .Y(n54) );
  NOR2X2 U286 ( .A(n170), .B(n163), .Y(n80) );
  NAND2X2 U287 ( .A(n170), .B(n163), .Y(n81) );
  NOR2BX1 U288 ( .AN(b[0]), .B(n226), .Y(n163) );
  ADDHX2 U289 ( .A(n138), .B(n162), .CO(n134), .S(n135) );
  XNOR2X2 U290 ( .A(b[6]), .B(n235), .Y(n200) );
  XOR2X2 U291 ( .A(a[0]), .B(a[1]), .Y(n219) );
  AO21XL U292 ( .A0(n222), .A1(n226), .B0(n190), .Y(n155) );
  OR2X2 U293 ( .A(n60), .B(n64), .Y(n308) );
  XNOR2X2 U294 ( .A(b[4]), .B(n235), .Y(n202) );
  BUFX4 U295 ( .A(n113), .Y(n295) );
  NAND2X2 U296 ( .A(n277), .B(n278), .Y(n144) );
  ADDFXL U297 ( .A(n105), .B(n141), .CI(n146), .CO(n101), .S(n102) );
  AOI21X1 U298 ( .A0(n48), .A1(n31), .B0(n32), .Y(n30) );
  OAI21XL U299 ( .A0(n33), .A1(n41), .B0(n34), .Y(n32) );
  INVX3 U300 ( .A(n63), .Y(n93) );
  OAI22X1 U301 ( .A0(n222), .A1(n192), .B0(n191), .B1(n226), .Y(n157) );
  XNOR2X1 U302 ( .A(b[7]), .B(n235), .Y(n199) );
  XNOR2X1 U303 ( .A(b[4]), .B(n233), .Y(n184) );
  ADDHX1 U304 ( .A(n136), .B(n151), .CO(n123), .S(n124) );
  NAND2X1 U305 ( .A(n279), .B(n280), .Y(n136) );
  OR2X1 U306 ( .A(n224), .B(n180), .Y(n280) );
  XNOR2X1 U307 ( .A(b[4]), .B(n232), .Y(n175) );
  XNOR2X1 U308 ( .A(b[5]), .B(n233), .Y(n183) );
  XNOR2X1 U309 ( .A(b[7]), .B(n234), .Y(n190) );
  XNOR2X1 U310 ( .A(b[6]), .B(n233), .Y(n182) );
  XNOR2X1 U311 ( .A(b[7]), .B(n233), .Y(n181) );
  NAND2X1 U312 ( .A(n306), .B(n307), .Y(n169) );
  OR2X1 U313 ( .A(n281), .B(n282), .Y(n138) );
  OAI21X2 U314 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  NAND2X2 U315 ( .A(n117), .B(n121), .Y(n55) );
  INVX1 U316 ( .A(n48), .Y(n46) );
  XNOR2X1 U317 ( .A(b[6]), .B(n232), .Y(n173) );
  NOR2X1 U318 ( .A(n40), .B(n33), .Y(n31) );
  CLKBUFX3 U319 ( .A(n171), .Y(n296) );
  AOI21X2 U320 ( .A0(n78), .A1(n82), .B0(n79), .Y(n77) );
  NAND2X1 U321 ( .A(n135), .B(n169), .Y(n76) );
  NOR2X2 U322 ( .A(n135), .B(n169), .Y(n75) );
  NAND2X1 U323 ( .A(n122), .B(n126), .Y(n61) );
  NOR2X2 U324 ( .A(n127), .B(n128), .Y(n63) );
  NOR2X4 U325 ( .A(n122), .B(n126), .Y(n60) );
  NAND2X1 U326 ( .A(n52), .B(n55), .Y(n7) );
  NOR2X1 U327 ( .A(n108), .B(n104), .Y(n33) );
  XNOR2X2 U328 ( .A(n28), .B(n3), .Y(product[12]) );
  NAND2X1 U329 ( .A(n24), .B(n27), .Y(n3) );
  AOI21X1 U330 ( .A0(n28), .A1(n19), .B0(n20), .Y(n18) );
  NOR2X1 U331 ( .A(n60), .B(n63), .Y(n58) );
  AOI21X1 U332 ( .A0(n56), .A1(n47), .B0(n44), .Y(n42) );
  INVX1 U333 ( .A(n47), .Y(n45) );
  BUFX3 U334 ( .A(n165), .Y(n275) );
  BUFX6 U335 ( .A(a[1]), .Y(n235) );
  BUFX4 U336 ( .A(a[5]), .Y(n233) );
  CLKINVX1 U337 ( .A(a[5]), .Y(n287) );
  XNOR2X1 U338 ( .A(b[6]), .B(n234), .Y(n191) );
  NOR2X1 U339 ( .A(n54), .B(n49), .Y(n47) );
  OAI22XL U340 ( .A0(n223), .A1(n200), .B0(n199), .B1(n243), .Y(n165) );
  NOR2X1 U341 ( .A(n103), .B(n102), .Y(n26) );
  NOR2X1 U342 ( .A(n109), .B(n111), .Y(n40) );
  CLKINVX1 U343 ( .A(n40), .Y(n39) );
  OR2X1 U344 ( .A(n223), .B(n204), .Y(n306) );
  XNOR2X4 U345 ( .A(b[1]), .B(n234), .Y(n196) );
  BUFX20 U346 ( .A(a[3]), .Y(n234) );
  XNOR2X4 U347 ( .A(n309), .B(n6), .Y(product[9]) );
  OR2X4 U348 ( .A(n220), .B(n179), .Y(n277) );
  OR2X4 U349 ( .A(n220), .B(n228), .Y(n279) );
  NOR2X1 U350 ( .A(n222), .B(n230), .Y(n281) );
  NOR2X1 U351 ( .A(n226), .B(n198), .Y(n282) );
  BUFX16 U352 ( .A(n238), .Y(n222) );
  BUFX16 U353 ( .A(n242), .Y(n226) );
  NAND2X1 U354 ( .A(n56), .B(n7), .Y(n285) );
  NAND2X2 U355 ( .A(n283), .B(n284), .Y(n286) );
  NAND2X4 U356 ( .A(n285), .B(n286), .Y(product[8]) );
  INVX1 U357 ( .A(n56), .Y(n283) );
  CLKINVX1 U358 ( .A(n7), .Y(n284) );
  NAND2XL U359 ( .A(a[5]), .B(n288), .Y(n289) );
  NAND2X1 U360 ( .A(n287), .B(a[4]), .Y(n290) );
  NAND2X2 U361 ( .A(n289), .B(n290), .Y(n217) );
  CLKINVX1 U362 ( .A(a[4]), .Y(n288) );
  NAND2X1 U363 ( .A(a[7]), .B(n292), .Y(n293) );
  NAND2X1 U364 ( .A(n291), .B(a[6]), .Y(n294) );
  NAND2X2 U365 ( .A(n293), .B(n294), .Y(n216) );
  CLKINVX1 U366 ( .A(a[7]), .Y(n291) );
  INVX1 U367 ( .A(a[6]), .Y(n292) );
  XNOR2X4 U368 ( .A(n13), .B(n82), .Y(product[2]) );
  XOR2X4 U369 ( .A(n42), .B(n5), .Y(product[10]) );
  AOI21X2 U370 ( .A0(n58), .A1(n66), .B0(n59), .Y(n57) );
  NAND2X1 U371 ( .A(n308), .B(n61), .Y(n59) );
  OAI22X1 U372 ( .A0(n221), .A1(n183), .B0(n182), .B1(n225), .Y(n148) );
  NAND2X4 U373 ( .A(n218), .B(n242), .Y(n238) );
  XOR2X1 U374 ( .A(a[3]), .B(a[2]), .Y(n218) );
  CMPR42X2 U375 ( .A(n150), .B(n164), .C(n123), .D(n120), .ICI(n119), .S(n117), 
        .ICO(n115), .CO(n116) );
  OAI22X1 U376 ( .A0(n221), .A1(n185), .B0(n184), .B1(n225), .Y(n150) );
  OAI21X4 U377 ( .A0(n65), .A1(n63), .B0(n64), .Y(n62) );
  XNOR2X2 U378 ( .A(b[2]), .B(n234), .Y(n195) );
  OAI22X1 U379 ( .A0(n221), .A1(n186), .B0(n185), .B1(n225), .Y(n151) );
  AO21X2 U380 ( .A0(n28), .A1(n24), .B0(n25), .Y(n310) );
  OAI21X2 U381 ( .A0(n29), .A1(n273), .B0(n30), .Y(n28) );
  OAI22X1 U382 ( .A0(n223), .A1(n201), .B0(n200), .B1(n243), .Y(n166) );
  XNOR2X1 U383 ( .A(b[4]), .B(n234), .Y(n193) );
  INVX1 U384 ( .A(n105), .Y(n106) );
  OAI22X1 U385 ( .A0(n220), .A1(n175), .B0(n174), .B1(n224), .Y(n105) );
  XNOR2XL U386 ( .A(b[7]), .B(n232), .Y(n172) );
  CMPR42X2 U387 ( .A(n156), .B(n149), .C(n114), .D(n118), .ICI(n115), .S(n112), 
        .ICO(n110), .CO(n111) );
  OAI22X1 U388 ( .A0(n221), .A1(n184), .B0(n183), .B1(n225), .Y(n149) );
  OAI21X2 U389 ( .A0(n77), .A1(n75), .B0(n76), .Y(n74) );
  AOI21X4 U390 ( .A0(n74), .A1(n276), .B0(n71), .Y(n69) );
  OAI22X2 U391 ( .A0(n222), .A1(n191), .B0(n190), .B1(n226), .Y(n156) );
  CMPR42X2 U392 ( .A(n295), .B(n142), .C(n148), .D(n155), .ICI(n110), .S(n109), 
        .ICO(n107), .CO(n108) );
  OAI22X1 U393 ( .A0(n220), .A1(n176), .B0(n175), .B1(n224), .Y(n142) );
  OAI22X2 U394 ( .A0(n222), .A1(n193), .B0(n192), .B1(n226), .Y(n158) );
  XNOR2X1 U395 ( .A(b[5]), .B(n234), .Y(n192) );
  NAND2X4 U396 ( .A(n296), .B(n274), .Y(n84) );
  AO21XL U397 ( .A0(n223), .A1(n243), .B0(n199), .Y(n164) );
  NOR2X1 U398 ( .A(n296), .B(n274), .Y(n83) );
  INVX2 U399 ( .A(n66), .Y(n65) );
  ADDHX2 U400 ( .A(n137), .B(n167), .CO(n130), .S(n131) );
  OAI22X1 U401 ( .A0(n221), .A1(n287), .B0(n225), .B1(n189), .Y(n137) );
  BUFX12 U402 ( .A(n239), .Y(n223) );
  OAI22X2 U403 ( .A0(n222), .A1(n195), .B0(n194), .B1(n226), .Y(n160) );
  XNOR2X2 U404 ( .A(b[3]), .B(n234), .Y(n194) );
  CMPR42X2 U405 ( .A(n144), .B(n158), .C(n275), .D(n124), .ICI(n125), .S(n122), 
        .ICO(n120), .CO(n121) );
  XNOR2X4 U406 ( .A(b[1]), .B(n235), .Y(n205) );
  XNOR2X2 U407 ( .A(b[1]), .B(n233), .Y(n187) );
  OAI22X1 U408 ( .A0(n220), .A1(n178), .B0(n177), .B1(n224), .Y(n143) );
  XNOR2X2 U409 ( .A(b[3]), .B(n233), .Y(n185) );
  XNOR2X4 U410 ( .A(b[3]), .B(n235), .Y(n203) );
  OAI22X1 U411 ( .A0(n221), .A1(n188), .B0(n187), .B1(n225), .Y(n153) );
  OR2X1 U412 ( .A(n222), .B(n196), .Y(n297) );
  OR2X1 U413 ( .A(n195), .B(n226), .Y(n298) );
  XNOR2X2 U414 ( .A(b[2]), .B(n233), .Y(n186) );
  XNOR2X4 U415 ( .A(b[2]), .B(n235), .Y(n204) );
  NAND2X2 U416 ( .A(a[1]), .B(a[2]), .Y(n301) );
  NAND2X4 U417 ( .A(n299), .B(n300), .Y(n302) );
  NAND2X8 U418 ( .A(n301), .B(n302), .Y(n242) );
  INVX2 U419 ( .A(a[1]), .Y(n299) );
  INVX1 U420 ( .A(a[2]), .Y(n300) );
  NAND2XL U421 ( .A(b[5]), .B(n235), .Y(n304) );
  NAND2X1 U422 ( .A(n303), .B(n299), .Y(n305) );
  INVXL U423 ( .A(b[5]), .Y(n303) );
  OR2XL U424 ( .A(n203), .B(n243), .Y(n307) );
  CMPR32X2 U425 ( .A(n160), .B(n153), .C(n131), .CO(n128), .S(n129) );
  XNOR2X2 U426 ( .A(a[5]), .B(a[6]), .Y(n240) );
  NAND2X2 U427 ( .A(n127), .B(n128), .Y(n64) );
  CLKINVX3 U428 ( .A(n80), .Y(n78) );
  CLKINVX1 U429 ( .A(n27), .Y(n25) );
  CLKINVX1 U430 ( .A(n26), .Y(n24) );
  CLKINVX1 U431 ( .A(n81), .Y(n79) );
  CLKINVX1 U432 ( .A(n75), .Y(n96) );
  NAND2X1 U433 ( .A(n94), .B(n68), .Y(n10) );
  NAND2BX1 U434 ( .AN(n83), .B(n84), .Y(n14) );
  XNOR2X1 U435 ( .A(n310), .B(n2), .Y(product[13]) );
  NAND2X1 U436 ( .A(n96), .B(n76), .Y(n12) );
  NAND2X1 U437 ( .A(n101), .B(n100), .Y(n22) );
  NOR2X1 U438 ( .A(n101), .B(n100), .Y(n21) );
  NOR2XL U439 ( .A(n140), .B(n99), .Y(n16) );
  NOR2XL U440 ( .A(n45), .B(n38), .Y(n36) );
  INVXL U441 ( .A(n60), .Y(n92) );
  INVX3 U442 ( .A(n67), .Y(n94) );
  NAND2XL U443 ( .A(n47), .B(n31), .Y(n29) );
  INVXL U444 ( .A(n55), .Y(n53) );
  NOR2XL U445 ( .A(n26), .B(n21), .Y(n19) );
  OA21XL U446 ( .A0(n18), .A1(n16), .B0(n17), .Y(product[15]) );
  INVXL U447 ( .A(n234), .Y(n230) );
  XNOR2XL U448 ( .A(n234), .B(b[0]), .Y(n197) );
  NAND2BXL U449 ( .AN(b[0]), .B(n234), .Y(n198) );
  OAI22X1 U450 ( .A0(n220), .A1(n177), .B0(n176), .B1(n224), .Y(n113) );
  AO21XL U451 ( .A0(n221), .A1(n225), .B0(n181), .Y(n146) );
  OAI22X1 U452 ( .A0(n220), .A1(n173), .B0(n172), .B1(n224), .Y(n99) );
  AO21XL U453 ( .A0(n220), .A1(n224), .B0(n172), .Y(n140) );
  CLKINVX1 U454 ( .A(n46), .Y(n44) );
  NAND2X1 U455 ( .A(n78), .B(n81), .Y(n13) );
  NAND2X1 U456 ( .A(n276), .B(n73), .Y(n11) );
  OAI21X1 U457 ( .A0(n55), .A1(n49), .B0(n50), .Y(n48) );
  CLKINVX1 U458 ( .A(n73), .Y(n71) );
  OAI21XL U459 ( .A0(n27), .A1(n21), .B0(n22), .Y(n20) );
  OAI21XL U460 ( .A0(n46), .A1(n38), .B0(n41), .Y(n37) );
  NAND2X1 U461 ( .A(n90), .B(n50), .Y(n6) );
  CLKINVX1 U462 ( .A(n49), .Y(n90) );
  NAND2X1 U463 ( .A(n39), .B(n41), .Y(n5) );
  NAND2X1 U464 ( .A(n88), .B(n34), .Y(n4) );
  AOI21X1 U465 ( .A0(n36), .A1(n56), .B0(n37), .Y(n35) );
  CLKINVX1 U466 ( .A(n33), .Y(n88) );
  NAND2X1 U467 ( .A(n86), .B(n22), .Y(n2) );
  CLKINVX1 U468 ( .A(n21), .Y(n86) );
  XOR2X1 U469 ( .A(n18), .B(n1), .Y(product[14]) );
  NAND2X1 U470 ( .A(n85), .B(n17), .Y(n1) );
  CLKINVX1 U471 ( .A(n16), .Y(n85) );
  CLKINVX1 U472 ( .A(n39), .Y(n38) );
  CLKINVX1 U473 ( .A(n84), .Y(n82) );
  NOR2X2 U474 ( .A(n112), .B(n116), .Y(n49) );
  NOR2X2 U475 ( .A(n129), .B(n132), .Y(n67) );
  NAND2X1 U476 ( .A(n109), .B(n111), .Y(n41) );
  NAND2X1 U477 ( .A(n112), .B(n116), .Y(n50) );
  NAND2X1 U478 ( .A(n108), .B(n104), .Y(n34) );
  NAND2X1 U479 ( .A(n133), .B(n134), .Y(n73) );
  NAND2X1 U480 ( .A(n129), .B(n132), .Y(n68) );
  CLKINVX1 U481 ( .A(n295), .Y(n114) );
  CLKINVX1 U482 ( .A(n14), .Y(product[1]) );
  NAND2X1 U483 ( .A(n103), .B(n102), .Y(n27) );
  CLKINVX1 U484 ( .A(n99), .Y(n100) );
  NAND2X1 U485 ( .A(n140), .B(n99), .Y(n17) );
  OAI22X1 U486 ( .A0(n223), .A1(n206), .B0(n205), .B1(n243), .Y(n171) );
  NOR2BX1 U487 ( .AN(b[0]), .B(n224), .Y(n145) );
  OR2X1 U488 ( .A(n157), .B(n143), .Y(n118) );
  XNOR2X1 U489 ( .A(n157), .B(n143), .Y(n119) );
  ADDFX2 U490 ( .A(n147), .B(n106), .CI(n107), .CO(n103), .S(n104) );
  OAI22XL U491 ( .A0(n221), .A1(n182), .B0(n181), .B1(n225), .Y(n147) );
  NAND2BX1 U492 ( .AN(b[0]), .B(n233), .Y(n189) );
  OAI22XL U493 ( .A0(n220), .A1(n174), .B0(n173), .B1(n224), .Y(n141) );
  XNOR2X1 U494 ( .A(b[5]), .B(n232), .Y(n174) );
endmodule


module CONV_DW01_add_12 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n21, n22, n23, n24, n25, n27, n29, n31, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n57, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n85,
         n86, n88, n90, n91, n92, n93, n94, n96, n97, n98, n100, n103, n104,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181;
  assign SUM[16] = n17;

  XNOR2X2 U125 ( .A(n11), .B(n68), .Y(SUM[5]) );
  NAND2X1 U126 ( .A(n162), .B(n59), .Y(n9) );
  XNOR2X2 U127 ( .A(n60), .B(n9), .Y(SUM[7]) );
  NAND2X2 U128 ( .A(n94), .B(n54), .Y(n8) );
  INVX2 U129 ( .A(n53), .Y(n94) );
  NOR2X4 U130 ( .A(A[6]), .B(B[6]), .Y(n61) );
  CLKXOR2X2 U131 ( .A(n55), .B(n8), .Y(SUM[8]) );
  OR2X4 U132 ( .A(n51), .B(n49), .Y(n180) );
  OR2X2 U133 ( .A(A[1]), .B(B[1]), .Y(n163) );
  NAND2X2 U134 ( .A(A[6]), .B(B[6]), .Y(n62) );
  NAND2X2 U135 ( .A(A[3]), .B(B[3]), .Y(n75) );
  OR2X4 U136 ( .A(A[3]), .B(B[3]), .Y(n161) );
  NAND2X2 U137 ( .A(n170), .B(n171), .Y(SUM[9]) );
  XNOR2X4 U138 ( .A(n48), .B(n6), .Y(SUM[10]) );
  NAND2X4 U139 ( .A(n174), .B(n175), .Y(SUM[2]) );
  NOR2X1 U140 ( .A(n40), .B(n37), .Y(n35) );
  NAND2X2 U141 ( .A(n163), .B(n83), .Y(n15) );
  OR2X2 U142 ( .A(n55), .B(n53), .Y(n179) );
  NAND2X1 U143 ( .A(A[1]), .B(B[1]), .Y(n83) );
  CLKINVX1 U144 ( .A(n86), .Y(n84) );
  NAND2X1 U145 ( .A(n100), .B(n78), .Y(n14) );
  NAND2X1 U146 ( .A(n93), .B(n176), .Y(n7) );
  NAND2X1 U147 ( .A(n172), .B(n79), .Y(n175) );
  NAND2X1 U148 ( .A(n14), .B(n173), .Y(n174) );
  CLKINVX1 U149 ( .A(n14), .Y(n172) );
  XNOR2X1 U150 ( .A(n13), .B(n76), .Y(SUM[3]) );
  XOR2X2 U151 ( .A(n10), .B(n63), .Y(SUM[6]) );
  NAND2X1 U152 ( .A(n168), .B(n7), .Y(n171) );
  NAND2X1 U153 ( .A(n51), .B(n169), .Y(n170) );
  CLKINVX1 U154 ( .A(n51), .Y(n168) );
  NOR2X2 U155 ( .A(n167), .B(n27), .Y(n25) );
  AND2X2 U156 ( .A(n42), .B(n166), .Y(n167) );
  NOR2X1 U157 ( .A(A[14]), .B(B[14]), .Y(n23) );
  XNOR2X2 U158 ( .A(n22), .B(n1), .Y(SUM[15]) );
  BUFX8 U159 ( .A(B[5]), .Y(n160) );
  NOR2X4 U160 ( .A(A[11]), .B(B[11]), .Y(n40) );
  OR2X4 U161 ( .A(A[7]), .B(B[7]), .Y(n162) );
  OR2X1 U162 ( .A(A[13]), .B(B[13]), .Y(n164) );
  OR2X1 U163 ( .A(n104), .B(n103), .Y(n165) );
  AND2X2 U164 ( .A(n35), .B(n164), .Y(n166) );
  XOR2X4 U165 ( .A(n71), .B(n12), .Y(SUM[4]) );
  NAND2X2 U166 ( .A(n98), .B(n70), .Y(n12) );
  AOI21X2 U167 ( .A0(n42), .A1(n35), .B0(n36), .Y(n34) );
  NAND2X2 U168 ( .A(A[10]), .B(B[10]), .Y(n47) );
  NAND2X1 U169 ( .A(n92), .B(n47), .Y(n6) );
  INVX1 U170 ( .A(n46), .Y(n92) );
  AOI21X4 U171 ( .A0(n60), .A1(n162), .B0(n57), .Y(n55) );
  INVX1 U172 ( .A(n59), .Y(n57) );
  NAND2X2 U173 ( .A(n180), .B(n176), .Y(n48) );
  INVX4 U174 ( .A(n43), .Y(n42) );
  INVX3 U175 ( .A(n29), .Y(n27) );
  OR2X4 U176 ( .A(n25), .B(n23), .Y(n178) );
  NOR2X4 U177 ( .A(A[8]), .B(B[8]), .Y(n53) );
  NAND2X4 U178 ( .A(A[8]), .B(B[8]), .Y(n54) );
  NOR2X4 U179 ( .A(A[4]), .B(B[4]), .Y(n69) );
  NOR2X4 U180 ( .A(A[10]), .B(B[10]), .Y(n46) );
  XNOR2X4 U181 ( .A(n39), .B(n4), .Y(SUM[12]) );
  OAI21X1 U182 ( .A0(n43), .A1(n40), .B0(n41), .Y(n39) );
  NAND2X2 U183 ( .A(A[5]), .B(n160), .Y(n67) );
  NOR2X4 U184 ( .A(A[5]), .B(n160), .Y(n66) );
  OAI21X4 U185 ( .A0(n63), .A1(n61), .B0(n62), .Y(n60) );
  AOI21X2 U186 ( .A0(n68), .A1(n64), .B0(n65), .Y(n63) );
  AOI21X4 U187 ( .A0(n76), .A1(n161), .B0(n73), .Y(n71) );
  OAI21X2 U188 ( .A0(n79), .A1(n77), .B0(n78), .Y(n76) );
  XOR2X4 U189 ( .A(n25), .B(n2), .Y(SUM[14]) );
  XNOR2X2 U190 ( .A(n42), .B(n5), .Y(SUM[11]) );
  XOR2X4 U191 ( .A(n34), .B(n3), .Y(SUM[13]) );
  XNOR2X4 U192 ( .A(n15), .B(n84), .Y(SUM[1]) );
  NOR2X4 U193 ( .A(A[9]), .B(B[9]), .Y(n49) );
  NAND2X1 U194 ( .A(A[9]), .B(B[9]), .Y(n176) );
  INVX1 U195 ( .A(n7), .Y(n169) );
  INVX6 U196 ( .A(n52), .Y(n51) );
  INVXL U197 ( .A(n79), .Y(n173) );
  AOI21X4 U198 ( .A0(n163), .A1(n84), .B0(n81), .Y(n79) );
  AOI21X2 U199 ( .A0(n44), .A1(n52), .B0(n45), .Y(n43) );
  NAND2X2 U200 ( .A(A[4]), .B(B[4]), .Y(n70) );
  NAND2X2 U201 ( .A(A[11]), .B(B[11]), .Y(n41) );
  NAND2X1 U202 ( .A(A[14]), .B(B[14]), .Y(n24) );
  NAND2X2 U203 ( .A(n177), .B(n47), .Y(n45) );
  NAND2X1 U204 ( .A(n178), .B(n24), .Y(n22) );
  CLKINVX1 U205 ( .A(n181), .Y(n17) );
  OAI2BB1XL U206 ( .A0N(n22), .A1N(n165), .B0(n21), .Y(n181) );
  OR2X2 U207 ( .A(n46), .B(n50), .Y(n177) );
  NAND2XL U208 ( .A(A[9]), .B(B[9]), .Y(n50) );
  NOR2X1 U209 ( .A(n49), .B(n46), .Y(n44) );
  NAND2X2 U210 ( .A(n179), .B(n54), .Y(n52) );
  OAI21X1 U211 ( .A0(n41), .A1(n37), .B0(n38), .Y(n36) );
  INVX3 U212 ( .A(n75), .Y(n73) );
  NAND2X1 U213 ( .A(n161), .B(n75), .Y(n13) );
  OAI21X2 U214 ( .A0(n71), .A1(n69), .B0(n70), .Y(n68) );
  NAND2BXL U215 ( .AN(n85), .B(n86), .Y(n16) );
  NOR2XL U216 ( .A(A[0]), .B(B[0]), .Y(n85) );
  NAND2X2 U217 ( .A(n90), .B(n38), .Y(n4) );
  NAND2X2 U218 ( .A(n88), .B(n24), .Y(n2) );
  INVX3 U219 ( .A(n23), .Y(n88) );
  NOR2X1 U220 ( .A(A[12]), .B(B[12]), .Y(n37) );
  NAND2X1 U221 ( .A(n97), .B(n67), .Y(n11) );
  CLKINVX1 U222 ( .A(n66), .Y(n97) );
  CLKINVX1 U223 ( .A(n37), .Y(n90) );
  NAND2X1 U224 ( .A(n165), .B(n21), .Y(n1) );
  NAND2X1 U225 ( .A(n91), .B(n41), .Y(n5) );
  CLKINVX1 U226 ( .A(n40), .Y(n91) );
  CLKINVX1 U227 ( .A(n67), .Y(n65) );
  CLKINVX1 U228 ( .A(n66), .Y(n64) );
  AOI21X1 U229 ( .A0(n36), .A1(n164), .B0(n31), .Y(n29) );
  CLKINVX1 U230 ( .A(n33), .Y(n31) );
  CLKINVX1 U231 ( .A(n77), .Y(n100) );
  NAND2X1 U232 ( .A(n96), .B(n62), .Y(n10) );
  CLKINVX1 U233 ( .A(n61), .Y(n96) );
  CLKINVX1 U234 ( .A(n49), .Y(n93) );
  NAND2X1 U235 ( .A(n164), .B(n33), .Y(n3) );
  CLKINVX1 U236 ( .A(n69), .Y(n98) );
  CLKINVX1 U237 ( .A(n83), .Y(n81) );
  NOR2X2 U238 ( .A(A[2]), .B(B[2]), .Y(n77) );
  NAND2X1 U239 ( .A(A[7]), .B(B[7]), .Y(n59) );
  NAND2X1 U240 ( .A(A[2]), .B(B[2]), .Y(n78) );
  NAND2X1 U241 ( .A(A[12]), .B(B[12]), .Y(n38) );
  NAND2X1 U242 ( .A(A[13]), .B(B[13]), .Y(n33) );
  NAND2X1 U243 ( .A(n104), .B(n103), .Y(n21) );
  CLKINVX1 U244 ( .A(B[15]), .Y(n103) );
  CLKINVX1 U245 ( .A(A[15]), .Y(n104) );
  NAND2X1 U246 ( .A(A[0]), .B(B[0]), .Y(n86) );
  CLKINVX1 U247 ( .A(n16), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_13 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n22, n23, n24, n25, n29, n30, n31, n32, n33, n34, n35, n36,
         n38, n39, n40, n42, n44, n45, n46, n47, n48, n49, n51, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n68, n70, n71, n72, n73,
         n74, n75, n76, n77, n79, n80, n81, n82, n83, n84, n85, n87, n89, n90,
         n91, n92, n93, n95, n97, n98, n99, n100, n102, n103, n108, n109, n112,
         n113, n115, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195;

  XNOR2X2 U138 ( .A(n82), .B(n12), .Y(SUM[5]) );
  XNOR2X1 U139 ( .A(n16), .B(n98), .Y(SUM[1]) );
  NAND2X1 U140 ( .A(n177), .B(n97), .Y(n16) );
  AOI21X4 U141 ( .A0(n82), .A1(n112), .B0(n79), .Y(n77) );
  NOR2X2 U142 ( .A(B[6]), .B(A[6]), .Y(n74) );
  BUFX6 U143 ( .A(B[3]), .Y(n174) );
  BUFX4 U144 ( .A(n93), .Y(n175) );
  NAND2X2 U145 ( .A(B[10]), .B(A[10]), .Y(n55) );
  NAND2X2 U146 ( .A(n174), .B(A[3]), .Y(n89) );
  OR2X4 U147 ( .A(n174), .B(A[3]), .Y(n178) );
  NAND2X4 U148 ( .A(n180), .B(n55), .Y(n7) );
  BUFX8 U149 ( .A(A[8]), .Y(n176) );
  OAI21X2 U150 ( .A0(n91), .A1(n175), .B0(n92), .Y(n90) );
  NAND2X2 U151 ( .A(B[2]), .B(A[2]), .Y(n92) );
  NAND2X2 U152 ( .A(B[9]), .B(A[9]), .Y(n58) );
  XNOR2X4 U153 ( .A(n191), .B(n6), .Y(SUM[11]) );
  XNOR2X2 U154 ( .A(n14), .B(n90), .Y(SUM[3]) );
  NAND2X2 U155 ( .A(B[8]), .B(n176), .Y(n63) );
  NOR2X4 U156 ( .A(B[9]), .B(A[9]), .Y(n57) );
  NOR2X8 U157 ( .A(B[2]), .B(A[2]), .Y(n91) );
  INVX2 U158 ( .A(n49), .Y(n47) );
  AOI21X2 U159 ( .A0(n90), .A1(n178), .B0(n87), .Y(n85) );
  INVX3 U160 ( .A(n77), .Y(n76) );
  INVX1 U161 ( .A(n44), .Y(n42) );
  CLKINVX1 U162 ( .A(n7), .Y(n183) );
  AOI21X1 U163 ( .A0(n177), .A1(n98), .B0(n95), .Y(n93) );
  NAND2X1 U164 ( .A(B[5]), .B(A[5]), .Y(n81) );
  NAND2X2 U165 ( .A(n72), .B(n75), .Y(n11) );
  INVX3 U166 ( .A(n11), .Y(n186) );
  AOI21X1 U167 ( .A0(n181), .A1(n73), .B0(n68), .Y(n66) );
  NAND2X2 U168 ( .A(n184), .B(n185), .Y(SUM[10]) );
  NAND2X1 U169 ( .A(n182), .B(n183), .Y(n185) );
  NAND2X1 U170 ( .A(n56), .B(n7), .Y(n184) );
  CLKINVX1 U171 ( .A(n56), .Y(n182) );
  XOR2X1 U172 ( .A(n13), .B(n85), .Y(SUM[4]) );
  XOR2X2 U173 ( .A(n71), .B(n10), .Y(SUM[7]) );
  XOR2X1 U174 ( .A(n45), .B(n5), .Y(SUM[12]) );
  OR2X2 U175 ( .A(n190), .B(n29), .Y(n25) );
  NAND2X1 U176 ( .A(B[0]), .B(A[0]), .Y(n100) );
  OR2X1 U177 ( .A(B[1]), .B(A[1]), .Y(n177) );
  OR2X2 U178 ( .A(B[12]), .B(A[12]), .Y(n179) );
  INVX1 U179 ( .A(n23), .Y(n102) );
  OR2X2 U180 ( .A(B[10]), .B(A[10]), .Y(n180) );
  OR2X6 U181 ( .A(B[7]), .B(A[7]), .Y(n181) );
  OAI21XL U182 ( .A0(n30), .A1(n36), .B0(n31), .Y(n29) );
  NOR2X1 U183 ( .A(B[11]), .B(A[11]), .Y(n48) );
  INVX3 U184 ( .A(n48), .Y(n46) );
  NOR2X2 U185 ( .A(B[13]), .B(A[13]), .Y(n35) );
  CLKINVX1 U186 ( .A(n35), .Y(n33) );
  OAI21X2 U187 ( .A0(n85), .A1(n83), .B0(n84), .Y(n82) );
  CLKINVX1 U188 ( .A(n62), .Y(n60) );
  NAND2X2 U189 ( .A(n109), .B(n63), .Y(n9) );
  INVX1 U190 ( .A(n62), .Y(n109) );
  NOR2X6 U191 ( .A(B[14]), .B(A[14]), .Y(n30) );
  NAND2X2 U192 ( .A(B[14]), .B(A[14]), .Y(n31) );
  NAND2X4 U193 ( .A(B[13]), .B(A[13]), .Y(n36) );
  XNOR2X4 U194 ( .A(n25), .B(n2), .Y(SUM[15]) );
  XOR2X4 U195 ( .A(n8), .B(n59), .Y(SUM[9]) );
  NAND2X1 U196 ( .A(n108), .B(n58), .Y(n8) );
  OAI21X4 U197 ( .A0(n59), .A1(n57), .B0(n58), .Y(n56) );
  AOI21X4 U198 ( .A0(n64), .A1(n60), .B0(n61), .Y(n59) );
  NOR2X1 U199 ( .A(n193), .B(n192), .Y(n190) );
  OAI2BB1X2 U200 ( .A0N(n56), .A1N(n180), .B0(n55), .Y(n191) );
  NAND2X4 U201 ( .A(B[7]), .B(A[7]), .Y(n70) );
  XOR2X2 U202 ( .A(n15), .B(n175), .Y(SUM[2]) );
  XOR2X4 U203 ( .A(n192), .B(n4), .Y(SUM[13]) );
  XOR2X4 U204 ( .A(n32), .B(n3), .Y(SUM[14]) );
  OAI21X1 U205 ( .A0(n51), .A1(n39), .B0(n40), .Y(n38) );
  CLKINVX4 U206 ( .A(n191), .Y(n51) );
  AOI21X4 U207 ( .A0(n179), .A1(n47), .B0(n42), .Y(n40) );
  XNOR2X4 U208 ( .A(n9), .B(n64), .Y(SUM[8]) );
  OAI21X4 U209 ( .A0(n65), .A1(n77), .B0(n66), .Y(n64) );
  NAND2X2 U210 ( .A(n11), .B(n76), .Y(n188) );
  NAND2X8 U211 ( .A(n186), .B(n187), .Y(n189) );
  NAND2X8 U212 ( .A(n188), .B(n189), .Y(SUM[6]) );
  INVX6 U213 ( .A(n76), .Y(n187) );
  NAND2X2 U214 ( .A(B[6]), .B(A[6]), .Y(n75) );
  NAND2X2 U215 ( .A(n46), .B(n179), .Y(n39) );
  INVX1 U216 ( .A(n89), .Y(n87) );
  AO21X2 U217 ( .A0(n25), .A1(n102), .B0(n22), .Y(n194) );
  OA21X4 U218 ( .A0(n51), .A1(n39), .B0(n40), .Y(n192) );
  INVX1 U219 ( .A(n70), .Y(n68) );
  NAND2X2 U220 ( .A(n181), .B(n72), .Y(n65) );
  OR2XL U221 ( .A(n30), .B(n35), .Y(n193) );
  INVXL U222 ( .A(n57), .Y(n108) );
  INVXL U223 ( .A(n24), .Y(n22) );
  XNOR2X1 U224 ( .A(n194), .B(n1), .Y(SUM[16]) );
  OR2X4 U225 ( .A(B[16]), .B(A[15]), .Y(n195) );
  NAND2BXL U226 ( .AN(n99), .B(n100), .Y(n17) );
  NOR2XL U227 ( .A(B[0]), .B(A[0]), .Y(n99) );
  NAND2X1 U228 ( .A(n178), .B(n89), .Y(n14) );
  NAND2X1 U229 ( .A(n46), .B(n49), .Y(n6) );
  NAND2X1 U230 ( .A(n102), .B(n24), .Y(n2) );
  CLKINVX1 U231 ( .A(n81), .Y(n79) );
  CLKINVX1 U232 ( .A(n63), .Y(n61) );
  NAND2X1 U233 ( .A(n115), .B(n92), .Y(n15) );
  CLKINVX1 U234 ( .A(n91), .Y(n115) );
  NAND2X1 U235 ( .A(n113), .B(n84), .Y(n13) );
  CLKINVX1 U236 ( .A(n83), .Y(n113) );
  NAND2X1 U237 ( .A(n33), .B(n36), .Y(n4) );
  NAND2X1 U238 ( .A(n181), .B(n70), .Y(n10) );
  AOI21X1 U239 ( .A0(n76), .A1(n72), .B0(n73), .Y(n71) );
  NAND2X1 U240 ( .A(n179), .B(n44), .Y(n5) );
  AOI21X1 U241 ( .A0(n191), .A1(n46), .B0(n47), .Y(n45) );
  NAND2X1 U242 ( .A(n103), .B(n31), .Y(n3) );
  AOI21X1 U243 ( .A0(n38), .A1(n33), .B0(n34), .Y(n32) );
  CLKINVX1 U244 ( .A(n30), .Y(n103) );
  CLKINVX1 U245 ( .A(n74), .Y(n72) );
  CLKINVX1 U246 ( .A(n75), .Y(n73) );
  NAND2X1 U247 ( .A(n112), .B(n81), .Y(n12) );
  CLKINVX1 U248 ( .A(n80), .Y(n112) );
  CLKINVX1 U249 ( .A(n36), .Y(n34) );
  CLKINVX1 U250 ( .A(n97), .Y(n95) );
  NOR2X2 U251 ( .A(B[5]), .B(A[5]), .Y(n80) );
  NOR2X2 U252 ( .A(B[15]), .B(A[15]), .Y(n23) );
  NOR2X2 U253 ( .A(B[8]), .B(n176), .Y(n62) );
  NOR2X2 U254 ( .A(B[4]), .B(A[4]), .Y(n83) );
  NAND2X1 U255 ( .A(B[11]), .B(A[11]), .Y(n49) );
  NAND2X1 U256 ( .A(B[12]), .B(A[12]), .Y(n44) );
  NAND2X1 U257 ( .A(B[15]), .B(A[15]), .Y(n24) );
  NAND2X1 U258 ( .A(n195), .B(n19), .Y(n1) );
  NAND2X1 U259 ( .A(B[16]), .B(A[15]), .Y(n19) );
  NAND2X1 U260 ( .A(B[4]), .B(A[4]), .Y(n84) );
  NAND2X1 U261 ( .A(B[1]), .B(A[1]), .Y(n97) );
  CLKINVX1 U262 ( .A(n100), .Y(n98) );
  CLKINVX1 U263 ( .A(n17), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_14 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n21, n22, n23, n24, n26, n27, n28, n29, n30, n32, n34, n36,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n57, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79, n81, n82, n83,
         n84, n85, n87, n89, n95, n96, n97, n98, n100, n103, n104, n107, n108,
         n109, n110, n112, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189;

  NAND2X4 U136 ( .A(B[2]), .B(A[2]), .Y(n89) );
  NAND2X2 U137 ( .A(B[5]), .B(A[5]), .Y(n76) );
  OAI21X1 U138 ( .A0(n23), .A1(n29), .B0(n24), .Y(n22) );
  NOR2X8 U139 ( .A(B[15]), .B(A[15]), .Y(n23) );
  NAND2X4 U140 ( .A(B[4]), .B(A[4]), .Y(n81) );
  OR2X4 U141 ( .A(B[4]), .B(A[4]), .Y(n175) );
  OR2X4 U142 ( .A(B[2]), .B(A[2]), .Y(n176) );
  XNOR2X4 U143 ( .A(n13), .B(n82), .Y(SUM[4]) );
  OAI21X2 U144 ( .A0(n85), .A1(n83), .B0(n84), .Y(n82) );
  NAND2X1 U145 ( .A(n176), .B(n89), .Y(n15) );
  XOR2X2 U146 ( .A(n85), .B(n14), .Y(SUM[3]) );
  AOI21X2 U147 ( .A0(n176), .A1(n188), .B0(n87), .Y(n85) );
  NAND2X2 U148 ( .A(n181), .B(n182), .Y(SUM[10]) );
  NOR2X2 U149 ( .A(B[3]), .B(A[3]), .Y(n83) );
  XNOR2X4 U150 ( .A(n186), .B(n4), .Y(SUM[13]) );
  XNOR2X4 U151 ( .A(n15), .B(n188), .Y(SUM[2]) );
  NAND2X4 U152 ( .A(B[10]), .B(A[10]), .Y(n54) );
  CLKINVX1 U153 ( .A(n64), .Y(n62) );
  NOR2X4 U154 ( .A(B[8]), .B(A[8]), .Y(n64) );
  INVX3 U155 ( .A(n55), .Y(n179) );
  NOR2X1 U156 ( .A(n23), .B(n28), .Y(n21) );
  CLKINVX1 U157 ( .A(n89), .Y(n87) );
  AOI21X2 U158 ( .A0(n82), .A1(n175), .B0(n79), .Y(n77) );
  CLKINVX1 U159 ( .A(n81), .Y(n79) );
  NOR2X4 U160 ( .A(B[6]), .B(A[6]), .Y(n72) );
  NOR2X4 U161 ( .A(B[7]), .B(A[7]), .Y(n67) );
  NOR2X1 U162 ( .A(B[11]), .B(A[11]), .Y(n46) );
  NAND2X1 U163 ( .A(B[11]), .B(A[11]), .Y(n47) );
  NAND2X1 U164 ( .A(B[0]), .B(A[0]), .Y(n98) );
  NAND2X1 U165 ( .A(n112), .B(n84), .Y(n14) );
  CLKINVX1 U166 ( .A(n83), .Y(n112) );
  NAND2X1 U167 ( .A(n107), .B(n65), .Y(n9) );
  XNOR2X1 U168 ( .A(n8), .B(n60), .Y(SUM[9]) );
  NAND2X1 U169 ( .A(n55), .B(n180), .Y(n181) );
  NAND2X1 U170 ( .A(n179), .B(n7), .Y(n182) );
  AO21X1 U171 ( .A0(n42), .A1(n38), .B0(n39), .Y(n186) );
  XNOR2X2 U172 ( .A(n185), .B(n2), .Y(SUM[15]) );
  CLKINVX1 U173 ( .A(n29), .Y(n27) );
  AOI21X2 U174 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  INVX3 U175 ( .A(n43), .Y(n42) );
  OR2X4 U176 ( .A(B[9]), .B(A[9]), .Y(n173) );
  OR2X4 U177 ( .A(B[13]), .B(A[13]), .Y(n174) );
  OR2X2 U178 ( .A(B[1]), .B(A[1]), .Y(n177) );
  NOR2X2 U179 ( .A(B[10]), .B(A[10]), .Y(n53) );
  INVX1 U180 ( .A(n28), .Y(n26) );
  AND2X2 U181 ( .A(n174), .B(n38), .Y(n178) );
  AO21X2 U182 ( .A0(n21), .A1(n30), .B0(n22), .Y(n187) );
  XNOR2X2 U183 ( .A(n6), .B(n48), .Y(SUM[11]) );
  INVX1 U184 ( .A(n67), .Y(n108) );
  OR2X6 U185 ( .A(n69), .B(n67), .Y(n183) );
  NAND2X2 U186 ( .A(n189), .B(n19), .Y(n1) );
  NAND2X8 U187 ( .A(n184), .B(n32), .Y(n30) );
  NAND2X6 U188 ( .A(n178), .B(n42), .Y(n184) );
  XNOR2X4 U189 ( .A(n30), .B(n3), .Y(SUM[14]) );
  NAND2X2 U190 ( .A(n26), .B(n29), .Y(n3) );
  XNOR2X4 U191 ( .A(n5), .B(n42), .Y(SUM[12]) );
  NAND2X2 U192 ( .A(n100), .B(n24), .Y(n2) );
  NAND2X2 U193 ( .A(B[12]), .B(A[12]), .Y(n41) );
  NAND2X2 U194 ( .A(n51), .B(n173), .Y(n49) );
  AOI21X2 U195 ( .A0(n51), .A1(n57), .B0(n52), .Y(n50) );
  AOI21X2 U196 ( .A0(n174), .A1(n39), .B0(n34), .Y(n32) );
  NAND2X2 U197 ( .A(B[1]), .B(A[1]), .Y(n95) );
  XNOR2X4 U198 ( .A(n187), .B(n1), .Y(SUM[16]) );
  INVX1 U199 ( .A(n7), .Y(n180) );
  AOI21X2 U200 ( .A0(n60), .A1(n173), .B0(n57), .Y(n55) );
  NAND2X4 U201 ( .A(n51), .B(n54), .Y(n7) );
  OAI2BB1X2 U202 ( .A0N(n177), .A1N(n96), .B0(n95), .Y(n188) );
  XNOR2X4 U203 ( .A(n16), .B(n96), .Y(SUM[1]) );
  OAI21X2 U204 ( .A0(n77), .A1(n75), .B0(n76), .Y(n74) );
  NAND2X6 U205 ( .A(n183), .B(n68), .Y(n66) );
  AOI21X4 U206 ( .A0(n74), .A1(n70), .B0(n71), .Y(n69) );
  NAND2X2 U207 ( .A(B[7]), .B(A[7]), .Y(n68) );
  AOI21X4 U208 ( .A0(n66), .A1(n62), .B0(n63), .Y(n61) );
  NAND2X2 U209 ( .A(B[9]), .B(A[9]), .Y(n59) );
  NAND2X2 U210 ( .A(B[6]), .B(A[6]), .Y(n73) );
  AO21X4 U211 ( .A0(n30), .A1(n26), .B0(n27), .Y(n185) );
  NAND2X2 U212 ( .A(B[15]), .B(A[15]), .Y(n24) );
  INVX1 U213 ( .A(n64), .Y(n107) );
  XNOR2X1 U214 ( .A(n66), .B(n9), .Y(SUM[8]) );
  NAND2BXL U215 ( .AN(n97), .B(n98), .Y(n17) );
  CLKINVX1 U216 ( .A(n36), .Y(n34) );
  CLKINVX3 U217 ( .A(n41), .Y(n39) );
  CLKINVX3 U218 ( .A(n40), .Y(n38) );
  INVX3 U219 ( .A(n75), .Y(n110) );
  NAND2X2 U220 ( .A(n110), .B(n76), .Y(n12) );
  OAI21X2 U221 ( .A0(n49), .A1(n61), .B0(n50), .Y(n48) );
  CLKINVX3 U222 ( .A(n53), .Y(n51) );
  INVX1 U223 ( .A(n46), .Y(n44) );
  INVX1 U224 ( .A(n54), .Y(n52) );
  OR2X2 U225 ( .A(B[16]), .B(A[16]), .Y(n189) );
  NAND2X2 U226 ( .A(B[8]), .B(A[8]), .Y(n65) );
  NOR2XL U227 ( .A(B[0]), .B(A[0]), .Y(n97) );
  CLKINVX1 U228 ( .A(n23), .Y(n100) );
  CLKINVX1 U229 ( .A(n61), .Y(n60) );
  NAND2X1 U230 ( .A(n104), .B(n47), .Y(n6) );
  CLKINVX1 U231 ( .A(n46), .Y(n104) );
  NAND2X1 U232 ( .A(n175), .B(n81), .Y(n13) );
  XNOR2X1 U233 ( .A(n11), .B(n74), .Y(SUM[6]) );
  NAND2X1 U234 ( .A(n109), .B(n73), .Y(n11) );
  CLKINVX1 U235 ( .A(n72), .Y(n109) );
  NAND2X1 U236 ( .A(n103), .B(n41), .Y(n5) );
  CLKINVX1 U237 ( .A(n40), .Y(n103) );
  NAND2X1 U238 ( .A(n173), .B(n59), .Y(n8) );
  CLKINVX1 U239 ( .A(n65), .Y(n63) );
  CLKINVX1 U240 ( .A(n47), .Y(n45) );
  CLKINVX1 U241 ( .A(n73), .Y(n71) );
  CLKINVX1 U242 ( .A(n72), .Y(n70) );
  XOR2X1 U243 ( .A(n10), .B(n69), .Y(SUM[7]) );
  NAND2X1 U244 ( .A(n108), .B(n68), .Y(n10) );
  NAND2X1 U245 ( .A(n174), .B(n36), .Y(n4) );
  NAND2X1 U246 ( .A(B[16]), .B(A[16]), .Y(n19) );
  XOR2X1 U247 ( .A(n77), .B(n12), .Y(SUM[5]) );
  CLKINVX1 U248 ( .A(n59), .Y(n57) );
  NAND2X1 U249 ( .A(n177), .B(n95), .Y(n16) );
  NOR2X2 U250 ( .A(B[14]), .B(A[14]), .Y(n28) );
  NOR2X2 U251 ( .A(B[12]), .B(A[12]), .Y(n40) );
  NOR2X2 U252 ( .A(B[5]), .B(A[5]), .Y(n75) );
  NAND2X1 U253 ( .A(B[14]), .B(A[14]), .Y(n29) );
  NAND2X1 U254 ( .A(B[3]), .B(A[3]), .Y(n84) );
  NAND2X1 U255 ( .A(B[13]), .B(A[13]), .Y(n36) );
  CLKINVX1 U256 ( .A(n98), .Y(n96) );
  CLKINVX1 U257 ( .A(n17), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_15 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n49, n51, n52, n53, n54, n58, n61, n62, n65, n66, n67, n69, n71, n72,
         n73, n74, n75, n77, n79, n80, n82, n86, n88, n89, n90, n92, n94, n95,
         n97, n157, n158, n159, n160, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173;

  OR2X2 U120 ( .A(A[3]), .B(B[3]), .Y(n159) );
  OR2X1 U121 ( .A(n73), .B(n75), .Y(n164) );
  AOI21X2 U122 ( .A0(n160), .A1(n80), .B0(n77), .Y(n75) );
  NOR2X4 U123 ( .A(A[15]), .B(B[15]), .Y(n21) );
  NOR2X2 U124 ( .A(A[2]), .B(B[2]), .Y(n73) );
  NAND2X2 U125 ( .A(n86), .B(n30), .Y(n4) );
  INVX4 U126 ( .A(n30), .Y(n169) );
  NAND2X2 U127 ( .A(A[13]), .B(B[13]), .Y(n30) );
  AOI21X4 U128 ( .A0(n159), .A1(n72), .B0(n69), .Y(n67) );
  NAND2X2 U129 ( .A(n164), .B(n74), .Y(n72) );
  NAND2X4 U130 ( .A(A[14]), .B(B[14]), .Y(n27) );
  NAND2X2 U131 ( .A(n24), .B(n27), .Y(n3) );
  INVX3 U132 ( .A(n26), .Y(n24) );
  INVX3 U133 ( .A(n27), .Y(n25) );
  NAND2X2 U134 ( .A(A[15]), .B(B[15]), .Y(n22) );
  OR2X2 U135 ( .A(A[6]), .B(B[6]), .Y(n158) );
  OAI21X2 U136 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  NOR2X1 U137 ( .A(A[4]), .B(B[4]), .Y(n65) );
  AND2X2 U138 ( .A(n163), .B(n58), .Y(n170) );
  NAND2X1 U139 ( .A(n158), .B(n162), .Y(n163) );
  OAI21X2 U140 ( .A0(n53), .A1(n170), .B0(n54), .Y(n52) );
  OR2X1 U141 ( .A(A[8]), .B(B[8]), .Y(n157) );
  NOR2X1 U142 ( .A(A[9]), .B(B[9]), .Y(n45) );
  NOR2X4 U143 ( .A(A[10]), .B(B[10]), .Y(n42) );
  NAND2X2 U144 ( .A(A[10]), .B(B[10]), .Y(n43) );
  CLKINVX1 U145 ( .A(n35), .Y(n33) );
  NOR2X2 U146 ( .A(A[13]), .B(B[13]), .Y(n29) );
  CLKINVX1 U147 ( .A(n71), .Y(n69) );
  OA21X2 U148 ( .A0(n65), .A1(n67), .B0(n66), .Y(n172) );
  XOR2X1 U149 ( .A(n6), .B(n39), .Y(SUM[11]) );
  OR2X2 U150 ( .A(A[1]), .B(B[1]), .Y(n160) );
  NOR2X4 U151 ( .A(A[12]), .B(B[12]), .Y(n34) );
  AND2X2 U152 ( .A(n173), .B(n82), .Y(SUM[0]) );
  OR2X4 U153 ( .A(A[16]), .B(B[16]), .Y(n166) );
  NOR2X6 U154 ( .A(n31), .B(n29), .Y(n168) );
  NOR2X2 U155 ( .A(A[11]), .B(B[11]), .Y(n37) );
  NAND2X4 U156 ( .A(A[12]), .B(B[12]), .Y(n35) );
  OAI21X4 U157 ( .A0(n45), .A1(n47), .B0(n46), .Y(n44) );
  OR2X8 U158 ( .A(n168), .B(n169), .Y(n28) );
  OAI21X4 U159 ( .A0(n37), .A1(n39), .B0(n38), .Y(n36) );
  NAND2X1 U160 ( .A(A[2]), .B(B[2]), .Y(n74) );
  XNOR2X4 U161 ( .A(n1), .B(n20), .Y(SUM[16]) );
  NOR2X2 U162 ( .A(A[14]), .B(B[14]), .Y(n26) );
  AOI21X4 U163 ( .A0(n157), .A1(n52), .B0(n49), .Y(n47) );
  AOI21X4 U164 ( .A0(n40), .A1(n44), .B0(n41), .Y(n39) );
  NAND2X1 U165 ( .A(A[3]), .B(B[3]), .Y(n71) );
  NAND2X1 U166 ( .A(A[1]), .B(B[1]), .Y(n79) );
  NAND2X1 U167 ( .A(A[4]), .B(B[4]), .Y(n66) );
  NAND2X1 U168 ( .A(A[16]), .B(B[16]), .Y(n167) );
  NAND2X1 U169 ( .A(A[5]), .B(B[5]), .Y(n62) );
  INVXL U170 ( .A(n53), .Y(n92) );
  XOR2XL U171 ( .A(n10), .B(n170), .Y(SUM[7]) );
  CLKINVX1 U172 ( .A(n171), .Y(n162) );
  OA21X4 U173 ( .A0(n61), .A1(n172), .B0(n62), .Y(n171) );
  NAND2X2 U174 ( .A(A[6]), .B(B[6]), .Y(n58) );
  NAND2X1 U175 ( .A(A[11]), .B(B[11]), .Y(n38) );
  NOR2X1 U176 ( .A(A[5]), .B(B[5]), .Y(n61) );
  OR2XL U177 ( .A(A[15]), .B(B[15]), .Y(n165) );
  NAND2X1 U178 ( .A(A[9]), .B(B[9]), .Y(n46) );
  NAND2X1 U179 ( .A(A[7]), .B(B[7]), .Y(n54) );
  INVX3 U180 ( .A(n34), .Y(n32) );
  NAND2X2 U181 ( .A(n166), .B(n167), .Y(n1) );
  NAND2X2 U182 ( .A(A[0]), .B(B[0]), .Y(n82) );
  OR2XL U183 ( .A(A[0]), .B(B[0]), .Y(n173) );
  XNOR2XL U184 ( .A(n16), .B(n80), .Y(SUM[1]) );
  NAND2XL U185 ( .A(n160), .B(n79), .Y(n16) );
  XOR2XL U186 ( .A(n15), .B(n75), .Y(SUM[2]) );
  NAND2XL U187 ( .A(n97), .B(n74), .Y(n15) );
  XNOR2XL U188 ( .A(n14), .B(n72), .Y(SUM[3]) );
  NAND2XL U189 ( .A(n159), .B(n71), .Y(n14) );
  XOR2XL U190 ( .A(n13), .B(n67), .Y(SUM[4]) );
  NAND2XL U191 ( .A(n95), .B(n66), .Y(n13) );
  XOR2XL U192 ( .A(n12), .B(n172), .Y(SUM[5]) );
  NAND2XL U193 ( .A(n94), .B(n62), .Y(n12) );
  XNOR2X1 U194 ( .A(n3), .B(n28), .Y(SUM[14]) );
  XNOR2XL U195 ( .A(n7), .B(n44), .Y(SUM[10]) );
  NAND2XL U196 ( .A(n89), .B(n43), .Y(n7) );
  INVXL U197 ( .A(n42), .Y(n89) );
  XNOR2XL U198 ( .A(n9), .B(n52), .Y(SUM[8]) );
  NAND2XL U199 ( .A(n157), .B(n51), .Y(n9) );
  NAND2XL U200 ( .A(n92), .B(n54), .Y(n10) );
  XOR2XL U201 ( .A(n11), .B(n171), .Y(SUM[6]) );
  NAND2XL U202 ( .A(n158), .B(n58), .Y(n11) );
  AOI21X4 U203 ( .A0(n36), .A1(n32), .B0(n33), .Y(n31) );
  AOI21X4 U204 ( .A0(n28), .A1(n24), .B0(n25), .Y(n23) );
  CLKINVX1 U205 ( .A(n43), .Y(n41) );
  CLKINVX1 U206 ( .A(n42), .Y(n40) );
  CLKINVX1 U207 ( .A(n61), .Y(n94) );
  CLKINVX1 U208 ( .A(n51), .Y(n49) );
  CLKINVX1 U209 ( .A(n82), .Y(n80) );
  CLKINVX1 U210 ( .A(n65), .Y(n95) );
  CLKINVX1 U211 ( .A(n73), .Y(n97) );
  NOR2X1 U212 ( .A(A[7]), .B(B[7]), .Y(n53) );
  NAND2X1 U213 ( .A(A[8]), .B(B[8]), .Y(n51) );
  CLKINVX1 U214 ( .A(n79), .Y(n77) );
  XOR2X1 U215 ( .A(n4), .B(n31), .Y(SUM[13]) );
  CLKINVX1 U216 ( .A(n29), .Y(n86) );
  XOR2X1 U217 ( .A(n2), .B(n23), .Y(SUM[15]) );
  NAND2X1 U218 ( .A(n165), .B(n22), .Y(n2) );
  XNOR2X1 U219 ( .A(n5), .B(n36), .Y(SUM[12]) );
  NAND2X1 U220 ( .A(n32), .B(n35), .Y(n5) );
  XOR2X1 U221 ( .A(n8), .B(n47), .Y(SUM[9]) );
  NAND2X1 U222 ( .A(n90), .B(n46), .Y(n8) );
  CLKINVX1 U223 ( .A(n45), .Y(n90) );
  NAND2X1 U224 ( .A(n88), .B(n38), .Y(n6) );
  CLKINVX1 U225 ( .A(n37), .Y(n88) );
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
         \w_in[7][5] , \w_in[7][4] , \w_in[7][3] , \w_in[7][2] , \w_in[7][1] ,
         \w_in[7][0] , \w_in[6][7] , \w_in[6][6] , \w_in[6][5] , \w_in[6][4] ,
         \w_in[6][3] , \w_in[6][2] , \w_in[6][1] , \w_in[6][0] , \w_in[5][7] ,
         \w_in[5][6] , \w_in[5][5] , \w_in[5][4] , \w_in[5][3] , \w_in[5][2] ,
         \w_in[5][1] , \w_in[5][0] , \w_in[4][7] , \w_in[4][6] , \w_in[4][5] ,
         \w_in[4][4] , \w_in[4][3] , \w_in[4][2] , \w_in[4][1] , \w_in[4][0] ,
         \w_in[3][7] , \w_in[3][6] , \w_in[3][5] , \w_in[3][4] , \w_in[3][3] ,
         \w_in[3][2] , \w_in[3][1] , \w_in[3][0] , \w_in[2][7] , \w_in[2][6] ,
         \w_in[2][5] , \w_in[2][4] , \w_in[2][3] , \w_in[2][2] , \w_in[2][1] ,
         \w_in[2][0] , \w_in[1][7] , \w_in[1][6] , \w_in[1][5] , \w_in[1][4] ,
         \w_in[1][3] , \w_in[1][2] , \w_in[1][1] , \w_in[1][0] , \w_in[0][7] ,
         \w_in[0][6] , \w_in[0][5] , \w_in[0][4] , \w_in[0][3] , \w_in[0][2] ,
         \w_in[0][1] , \w_in[0][0] , \if_in[8][7] , \if_in[8][6] ,
         \if_in[8][5] , \if_in[8][4] , \if_in[8][3] , \if_in[8][2] ,
         \if_in[8][1] , \if_in[8][0] , \if_in[7][7] , \if_in[7][6] ,
         \if_in[7][5] , \if_in[7][4] , \if_in[7][3] , \if_in[7][2] ,
         \if_in[7][1] , \if_in[7][0] , \if_in[6][7] , \if_in[6][6] ,
         \if_in[6][5] , \if_in[6][4] , \if_in[6][3] , \if_in[6][2] ,
         \if_in[6][1] , \if_in[6][0] , \if_in[5][7] , \if_in[5][6] ,
         \if_in[5][5] , \if_in[5][4] , \if_in[5][3] , \if_in[5][2] ,
         \if_in[5][1] , \if_in[5][0] , \if_in[4][7] , \if_in[4][6] ,
         \if_in[4][5] , \if_in[4][4] , \if_in[4][3] , \if_in[4][2] ,
         \if_in[4][1] , \if_in[4][0] , \if_in[3][7] , \if_in[3][6] ,
         \if_in[3][5] , \if_in[3][4] , \if_in[3][3] , \if_in[3][2] ,
         \if_in[3][1] , \if_in[3][0] , \if_in[2][7] , \if_in[2][6] ,
         \if_in[2][5] , \if_in[2][4] , \if_in[2][3] , \if_in[2][2] ,
         \if_in[2][1] , \if_in[2][0] , \if_in[1][7] , \if_in[1][6] ,
         \if_in[1][5] , \if_in[1][4] , \if_in[1][3] , \if_in[1][2] ,
         \if_in[1][1] , \if_in[1][0] , \if_in[0][7] , \if_in[0][6] ,
         \if_in[0][5] , \if_in[0][4] , \if_in[0][3] , \if_in[0][2] ,
         \if_in[0][1] , \if_in[0][0] , N422, N423, N424, N425, N426, N427,
         N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, N421, N420, N419, N418, N417,
         N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, N406,
         N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, N395,
         N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384,
         N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373,
         N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362,
         N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351,
         N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340,
         N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329,
         N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318,
         N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307,
         N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296,
         N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285,
         N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274,
         N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263,
         N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252,
         N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230,
         N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219,
         N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208,
         N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197,
         N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186,
         N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175,
         N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164,
         N163, N162, N161, N160, N159, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n163;

  CONV_DW_mult_tc_6 mult_89_3 ( .a({\w_in[2][7] , \w_in[2][6] , \w_in[2][5] , 
        \w_in[2][4] , \w_in[2][3] , \w_in[2][2] , \w_in[2][1] , \w_in[2][0] }), 
        .b({\if_in[2][7] , \if_in[2][6] , \if_in[2][5] , \if_in[2][4] , 
        \if_in[2][3] , \if_in[2][2] , \if_in[2][1] , \if_in[2][0] }), 
        .product({N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211, N210, N209, N208}) );
  CONV_DW_mult_tc_4 mult_89_5 ( .a({\w_in[4][7] , \w_in[4][6] , \w_in[4][5] , 
        \w_in[4][4] , \w_in[4][3] , \w_in[4][2] , \w_in[4][1] , \w_in[4][0] }), 
        .b({\if_in[4][7] , \if_in[4][6] , \if_in[4][5] , \if_in[4][4] , 
        \if_in[4][3] , \if_in[4][2] , \if_in[4][1] , \if_in[4][0] }), 
        .product({N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, 
        N279, N278, N277, N276, N275, N274}) );
  CONV_DW_mult_tc_2 mult_89_7 ( .a({\w_in[6][7] , \w_in[6][6] , \w_in[6][5] , 
        \w_in[6][4] , \w_in[6][3] , \w_in[6][2] , \w_in[6][1] , \w_in[6][0] }), 
        .b({\if_in[6][7] , \if_in[6][6] , \if_in[6][5] , \if_in[6][4] , 
        \if_in[6][3] , \if_in[6][2] , \if_in[6][1] , \if_in[6][0] }), 
        .product({N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, 
        N345, N344, N343, N342, N341, N340}) );
  CONV_DW_mult_tc_0 mult_89_9 ( .a({\w_in[8][7] , \w_in[8][6] , \w_in[8][5] , 
        \w_in[8][4] , \w_in[8][3] , \w_in[8][2] , \w_in[8][1] , \w_in[8][0] }), 
        .b({\if_in[8][7] , \if_in[8][6] , \if_in[8][5] , \if_in[8][4] , 
        \if_in[8][3] , \if_in[8][2] , \if_in[8][1] , \if_in[8][0] }), 
        .product({N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, 
        N411, N410, N409, N408, N407, N406}) );
  CONV_DW01_add_7 add_7_root_add_0_root_add_89_8 ( .A({N223, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208}), .B({N355, N355, N354, N353, N352, N351, N350, N349, N348, N347, 
        N346, N345, N344, N343, N342, N341, N340}), .CI(1'b0), .SUM({N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, 
        N194, N193, N192, N191}) );
  CONV_DW01_add_6 add_6_root_add_0_root_add_89_8 ( .A({N421, N421, N420, N419, 
        N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, N407, 
        N406}), .B({N289, N289, N288, N287, N286, N285, N284, N283, N282, N281, 
        N280, N279, N278, N277, N276, N275, N274}), .CI(1'b0), .SUM({N339, 
        N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, 
        N326, N325, N324, N323}) );
  CONV_DW01_add_5 add_2_root_add_0_root_add_89_8 ( .A({N339, N338, N337, N336, 
        N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323}), .B({N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, 
        N197, N196, N195, N194, N193, N192, N191}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224}) );
  CONV_DW01_add_2 add_5_root_add_0_root_add_89_8 ( .A({N174, N174, N173, N172, 
        N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, 
        N159}), .B({N190, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, N179, N178, N177, N176, N175}), .CI(1'b0), .SUM({N306, 
        N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, 
        N293, N292, N291, N290}) );
  CONV_DW_mult_tc_17 mult_89 ( .a({\w_in[0][7] , \w_in[0][6] , \w_in[0][5] , 
        \w_in[0][4] , \w_in[0][3] , \w_in[0][2] , \w_in[0][1] , \w_in[0][0] }), 
        .b({\if_in[0][7] , \if_in[0][6] , \if_in[0][5] , \if_in[0][4] , 
        \if_in[0][3] , \if_in[0][2] , \if_in[0][1] , \if_in[0][0] }), 
        .product({N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160, N159}) );
  CONV_DW_mult_tc_18 mult_89_2 ( .a({\w_in[1][7] , \w_in[1][6] , \w_in[1][5] , 
        \w_in[1][4] , \w_in[1][3] , \w_in[1][2] , \w_in[1][1] , \w_in[1][0] }), 
        .b({\if_in[1][7] , \if_in[1][6] , \if_in[1][5] , \if_in[1][4] , 
        \if_in[1][3] , \if_in[1][2] , \if_in[1][1] , \if_in[1][0] }), 
        .product({N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, 
        N180, N179, N178, N177, N176, N175}) );
  CONV_DW_mult_tc_19 mult_89_6 ( .a({\w_in[5][7] , \w_in[5][6] , \w_in[5][5] , 
        \w_in[5][4] , \w_in[5][3] , \w_in[5][2] , \w_in[5][1] , \w_in[5][0] }), 
        .b({\if_in[5][7] , \if_in[5][6] , \if_in[5][5] , \if_in[5][4] , 
        \if_in[5][3] , \if_in[5][2] , \if_in[5][1] , \if_in[5][0] }), 
        .product({N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, 
        N312, N311, N310, N309, N308, N307}) );
  CONV_DW_mult_tc_20 mult_89_4 ( .a({\w_in[3][7] , \w_in[3][6] , \w_in[3][5] , 
        \w_in[3][4] , \w_in[3][3] , \w_in[3][2] , \w_in[3][1] , \w_in[3][0] }), 
        .b({\if_in[3][7] , \if_in[3][6] , \if_in[3][5] , \if_in[3][4] , 
        \if_in[3][3] , \if_in[3][2] , \if_in[3][1] , \if_in[3][0] }), 
        .product({N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N246, N245, N244, N243, N242, N241}) );
  CONV_DW_mult_tc_21 mult_89_8 ( .a({\w_in[7][7] , \w_in[7][6] , \w_in[7][5] , 
        \w_in[7][4] , \w_in[7][3] , \w_in[7][2] , \w_in[7][1] , \w_in[7][0] }), 
        .b({\if_in[7][7] , \if_in[7][6] , \if_in[7][5] , \if_in[7][4] , 
        \if_in[7][3] , \if_in[7][2] , \if_in[7][1] , \if_in[7][0] }), 
        .product({N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, 
        N378, N377, N376, N375, N374, N373}) );
  CONV_DW01_add_12 add_4_root_add_0_root_add_89_8 ( .A({N256, N256, N255, N254, 
        N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, 
        N241}), .B({N388, N388, N387, N386, N385, N384, N383, N382, N381, N380, 
        N379, N378, N377, N376, N375, N374, N373}), .CI(1'b0), .SUM({N405, 
        N404, N403, N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, 
        N392, N391, N390, N389}) );
  CONV_DW01_add_13 add_3_root_add_0_root_add_89_8 ( .A({N322, N322, N321, N320, 
        N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, 
        N307}), .B({N405, N404, N403, N402, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389}), .CI(1'b0), .SUM({N273, 
        N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, N261, 
        N260, N259, N258, N257}) );
  CONV_DW01_add_14 add_1_root_add_0_root_add_89_8 ( .A({N306, N305, N304, N303, 
        N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, 
        N290}), .B({N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, 
        N263, N262, N261, N260, N259, N258, N257}), .CI(1'b0), .SUM({N372, 
        N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, 
        N359, N358, N357, N356}) );
  CONV_DW01_add_15 add_0_root_add_0_root_add_89_8 ( .A({N240, N239, N238, N237, 
        N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, 
        N224}), .B({N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, 
        N362, N361, N360, N359, N358, N357, N356}), .CI(1'b0), .SUM({N438, 
        N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, 
        N425, N424, N423, N422}) );
  DFFQX4 \if_in_reg[6][6]  ( .D(n145), .CK(clk), .Q(\if_in[6][6] ) );
  DFFQX4 \if_in_reg[0][0]  ( .D(n91), .CK(clk), .Q(\if_in[0][0] ) );
  DFFHQX4 \w_in_reg[6][4]  ( .D(n71), .CK(clk), .Q(\w_in[6][4] ) );
  DFFQX4 \w_in_reg[6][0]  ( .D(n67), .CK(clk), .Q(\w_in[6][0] ) );
  DFFHQX8 \w_in_reg[0][3]  ( .D(n22), .CK(clk), .Q(\w_in[0][3] ) );
  DFFQX4 \if_in_reg[6][2]  ( .D(n141), .CK(clk), .Q(\if_in[6][2] ) );
  DFFQX4 \if_in_reg[8][1]  ( .D(n156), .CK(clk), .Q(\if_in[8][1] ) );
  DFFQX4 \if_in_reg[6][1]  ( .D(n140), .CK(clk), .Q(\if_in[6][1] ) );
  DFFHQX4 \w_in_reg[3][6]  ( .D(n49), .CK(clk), .Q(\w_in[3][6] ) );
  DFFHQX8 \w_in_reg[6][3]  ( .D(n70), .CK(clk), .Q(\w_in[6][3] ) );
  DFFHQX4 \w_in_reg[3][4]  ( .D(n47), .CK(clk), .Q(\w_in[3][4] ) );
  DFFQX2 \if_in_reg[8][6]  ( .D(n161), .CK(clk), .Q(\if_in[8][6] ) );
  DFFQX2 \if_in_reg[4][6]  ( .D(n129), .CK(clk), .Q(\if_in[4][6] ) );
  DFFQX2 \if_in_reg[4][5]  ( .D(n128), .CK(clk), .Q(\if_in[4][5] ) );
  DFFQX2 \if_in_reg[8][5]  ( .D(n160), .CK(clk), .Q(\if_in[8][5] ) );
  DFFHQX8 \w_in_reg[6][5]  ( .D(n72), .CK(clk), .Q(\w_in[6][5] ) );
  DFFQX4 \w_in_reg[5][1]  ( .D(n60), .CK(clk), .Q(\w_in[5][1] ) );
  DFFQX4 \w_in_reg[3][3]  ( .D(n46), .CK(clk), .Q(\w_in[3][3] ) );
  DFFQX1 \if_in_reg[5][7]  ( .D(n138), .CK(clk), .Q(\if_in[5][7] ) );
  DFFQX1 \if_in_reg[1][6]  ( .D(n105), .CK(clk), .Q(\if_in[1][6] ) );
  DFFQX1 \if_in_reg[1][5]  ( .D(n104), .CK(clk), .Q(\if_in[1][5] ) );
  DFFQX1 \if_in_reg[0][7]  ( .D(n98), .CK(clk), .Q(\if_in[0][7] ) );
  DFFQX1 \if_in_reg[0][6]  ( .D(n97), .CK(clk), .Q(\if_in[0][6] ) );
  DFFQX1 \w_in_reg[5][0]  ( .D(n59), .CK(clk), .Q(\w_in[5][0] ) );
  DFFHQX8 \w_in_reg[6][1]  ( .D(n68), .CK(clk), .Q(\w_in[6][1] ) );
  DFFHQX8 \w_in_reg[4][1]  ( .D(n52), .CK(clk), .Q(\w_in[4][1] ) );
  DFFHQX8 \w_in_reg[8][1]  ( .D(n84), .CK(clk), .Q(\w_in[8][1] ) );
  DFFQX2 \if_in_reg[0][2]  ( .D(n93), .CK(clk), .Q(\if_in[0][2] ) );
  DFFHQX8 \if_in_reg[6][0]  ( .D(n139), .CK(clk), .Q(\if_in[6][0] ) );
  DFFHQX8 \w_in_reg[0][1]  ( .D(n20), .CK(clk), .Q(\w_in[0][1] ) );
  DFFQX4 \w_in_reg[0][0]  ( .D(n19), .CK(clk), .Q(\w_in[0][0] ) );
  DFFQX4 \w_in_reg[5][7]  ( .D(n66), .CK(clk), .Q(\w_in[5][7] ) );
  DFFQX4 \w_in_reg[5][5]  ( .D(n64), .CK(clk), .Q(\w_in[5][5] ) );
  DFFQX4 \w_in_reg[1][3]  ( .D(n30), .CK(clk), .Q(\w_in[1][3] ) );
  DFFQX4 \if_in_reg[3][4]  ( .D(n119), .CK(clk), .Q(\if_in[3][4] ) );
  DFFQX4 \w_in_reg[0][7]  ( .D(n26), .CK(clk), .Q(\w_in[0][7] ) );
  DFFQX4 \w_in_reg[0][5]  ( .D(n24), .CK(clk), .Q(\w_in[0][5] ) );
  DFFQX4 \w_in_reg[1][7]  ( .D(n34), .CK(clk), .Q(\w_in[1][7] ) );
  DFFQX1 \w_in_reg[2][6]  ( .D(n41), .CK(clk), .Q(\w_in[2][6] ) );
  DFFQX2 \w_in_reg[6][6]  ( .D(n73), .CK(clk), .Q(\w_in[6][6] ) );
  DFFQX1 \w_in_reg[8][7]  ( .D(n90), .CK(clk), .Q(\w_in[8][7] ) );
  DFFQX1 \w_in_reg[2][7]  ( .D(n42), .CK(clk), .Q(\w_in[2][7] ) );
  DFFQX1 \w_in_reg[4][7]  ( .D(n58), .CK(clk), .Q(\w_in[4][7] ) );
  DFFQX1 \w_in_reg[6][7]  ( .D(n74), .CK(clk), .Q(\w_in[6][7] ) );
  DFFQX2 \if_in_reg[2][6]  ( .D(n113), .CK(clk), .Q(\if_in[2][6] ) );
  DFFQX2 \if_in_reg[2][5]  ( .D(n112), .CK(clk), .Q(\if_in[2][5] ) );
  DFFQX2 \if_in_reg[5][0]  ( .D(n131), .CK(clk), .Q(\if_in[5][0] ) );
  DFFQX4 \w_in_reg[4][4]  ( .D(n55), .CK(clk), .Q(\w_in[4][4] ) );
  DFFQX2 \w_in_reg[4][0]  ( .D(n51), .CK(clk), .Q(\w_in[4][0] ) );
  DFFQX4 \w_in_reg[1][5]  ( .D(n32), .CK(clk), .Q(\w_in[1][5] ) );
  DFFHQX4 \w_in_reg[8][3]  ( .D(n86), .CK(clk), .Q(\w_in[8][3] ) );
  DFFQX2 \if_in_reg[6][5]  ( .D(n144), .CK(clk), .Q(\if_in[6][5] ) );
  DFFQX2 \if_in_reg[2][4]  ( .D(n111), .CK(clk), .Q(\if_in[2][4] ) );
  DFFQX2 \if_in_reg[8][4]  ( .D(n159), .CK(clk), .Q(\if_in[8][4] ) );
  DFFQX2 \if_in_reg[6][4]  ( .D(n143), .CK(clk), .Q(\if_in[6][4] ) );
  DFFQX2 \if_in_reg[2][2]  ( .D(n109), .CK(clk), .Q(\if_in[2][2] ) );
  DFFQX2 \if_in_reg[8][2]  ( .D(n157), .CK(clk), .Q(\if_in[8][2] ) );
  DFFQX2 \if_in_reg[2][3]  ( .D(n110), .CK(clk), .Q(\if_in[2][3] ) );
  DFFQX2 \if_in_reg[4][2]  ( .D(n125), .CK(clk), .Q(\if_in[4][2] ) );
  DFFQX2 \if_in_reg[8][3]  ( .D(n158), .CK(clk), .Q(\if_in[8][3] ) );
  DFFQX2 \if_in_reg[4][3]  ( .D(n126), .CK(clk), .Q(\if_in[4][3] ) );
  DFFQX2 \if_in_reg[6][3]  ( .D(n142), .CK(clk), .Q(\if_in[6][3] ) );
  DFFQX2 \if_in_reg[2][1]  ( .D(n108), .CK(clk), .Q(\if_in[2][1] ) );
  DFFQX2 \if_in_reg[4][1]  ( .D(n124), .CK(clk), .Q(\if_in[4][1] ) );
  DFFQX2 \w_in_reg[5][2]  ( .D(n61), .CK(clk), .Q(\w_in[5][2] ) );
  DFFQX2 \w_in_reg[2][4]  ( .D(n39), .CK(clk), .Q(\w_in[2][4] ) );
  DFFQX2 \w_in_reg[2][2]  ( .D(n37), .CK(clk), .Q(\w_in[2][2] ) );
  DFFQX4 \w_in_reg[8][2]  ( .D(n85), .CK(clk), .Q(\w_in[8][2] ) );
  DFFQX4 \w_in_reg[4][2]  ( .D(n53), .CK(clk), .Q(\w_in[4][2] ) );
  DFFQX4 \w_in_reg[6][2]  ( .D(n69), .CK(clk), .Q(\w_in[6][2] ) );
  DFFHQX4 \w_in_reg[4][3]  ( .D(n54), .CK(clk), .Q(\w_in[4][3] ) );
  DFFQX4 \w_in_reg[2][3]  ( .D(n38), .CK(clk), .Q(\w_in[2][3] ) );
  DFFQX4 \w_in_reg[3][2]  ( .D(n45), .CK(clk), .Q(\w_in[3][2] ) );
  DFFQX1 \if_in_reg[8][7]  ( .D(n162), .CK(clk), .Q(\if_in[8][7] ) );
  DFFQX1 \if_in_reg[4][7]  ( .D(n130), .CK(clk), .Q(\if_in[4][7] ) );
  DFFQX1 \if_in_reg[6][7]  ( .D(n146), .CK(clk), .Q(\if_in[6][7] ) );
  DFFQX1 \w_in_reg[4][6]  ( .D(n57), .CK(clk), .Q(\w_in[4][6] ) );
  DFFQX2 \w_in_reg[8][5]  ( .D(n88), .CK(clk), .Q(\w_in[8][5] ) );
  DFFQX1 \if_in_reg[2][7]  ( .D(n114), .CK(clk), .Q(\if_in[2][7] ) );
  DFFQX4 \w_in_reg[4][5]  ( .D(n56), .CK(clk), .Q(\w_in[4][5] ) );
  DFFQX2 \w_in_reg[2][5]  ( .D(n40), .CK(clk), .Q(\w_in[2][5] ) );
  DFFQX2 \w_in_reg[2][0]  ( .D(n35), .CK(clk), .Q(\w_in[2][0] ) );
  DFFQX4 \w_in_reg[7][3]  ( .D(n78), .CK(clk), .Q(\w_in[7][3] ) );
  DFFQX2 \if_in_reg[3][0]  ( .D(n115), .CK(clk), .Q(\if_in[3][0] ) );
  DFFQX4 \w_in_reg[3][1]  ( .D(n44), .CK(clk), .Q(\w_in[3][1] ) );
  DFFQX4 \w_in_reg[3][7]  ( .D(n50), .CK(clk), .Q(\w_in[3][7] ) );
  DFFHQX4 \w_in_reg[7][1]  ( .D(n76), .CK(clk), .Q(\w_in[7][1] ) );
  DFFQX2 \w_in_reg[1][6]  ( .D(n33), .CK(clk), .Q(\w_in[1][6] ) );
  DFFQX1 \w_in_reg[0][6]  ( .D(n25), .CK(clk), .Q(\w_in[0][6] ) );
  DFFHQX4 \w_in_reg[3][5]  ( .D(n48), .CK(clk), .Q(\w_in[3][5] ) );
  DFFHQX4 \w_in_reg[2][1]  ( .D(n36), .CK(clk), .Q(\w_in[2][1] ) );
  DFFQX4 \w_in_reg[7][5]  ( .D(n80), .CK(clk), .Q(\w_in[7][5] ) );
  DFFQX4 \w_in_reg[3][0]  ( .D(n43), .CK(clk), .Q(\w_in[3][0] ) );
  DFFQX2 \if_in_reg[7][5]  ( .D(n152), .CK(clk), .Q(\if_in[7][5] ) );
  DFFQX4 \w_in_reg[7][2]  ( .D(n77), .CK(clk), .Q(\w_in[7][2] ) );
  DFFQX2 \if_in_reg[7][2]  ( .D(n149), .CK(clk), .Q(\if_in[7][2] ) );
  DFFQX2 \if_in_reg[3][2]  ( .D(n117), .CK(clk), .Q(\if_in[3][2] ) );
  DFFQX2 \if_in_reg[7][3]  ( .D(n150), .CK(clk), .Q(\if_in[7][3] ) );
  DFFQX2 \if_in_reg[3][1]  ( .D(n116), .CK(clk), .Q(\if_in[3][1] ) );
  DFFQX2 \if_in_reg[7][1]  ( .D(n148), .CK(clk), .Q(\if_in[7][1] ) );
  DFFQX2 \if_in_reg[3][3]  ( .D(n118), .CK(clk), .Q(\if_in[3][3] ) );
  DFFQX2 \if_in_reg[7][6]  ( .D(n153), .CK(clk), .Q(\if_in[7][6] ) );
  DFFQX2 \if_in_reg[7][7]  ( .D(n154), .CK(clk), .Q(\if_in[7][7] ) );
  DFFQX2 \if_in_reg[7][4]  ( .D(n151), .CK(clk), .Q(\if_in[7][4] ) );
  DFFQX2 \if_in_reg[3][6]  ( .D(n121), .CK(clk), .Q(\if_in[3][6] ) );
  DFFQX2 \if_in_reg[4][0]  ( .D(n123), .CK(clk), .Q(\if_in[4][0] ) );
  DFFQX4 \w_in_reg[7][0]  ( .D(n75), .CK(clk), .Q(\w_in[7][0] ) );
  DFFQX2 \if_in_reg[0][1]  ( .D(n92), .CK(clk), .Q(\if_in[0][1] ) );
  DFFQX2 \w_in_reg[1][4]  ( .D(n31), .CK(clk), .Q(\w_in[1][4] ) );
  DFFHQX4 \w_in_reg[7][6]  ( .D(n81), .CK(clk), .Q(\w_in[7][6] ) );
  DFFHQX4 \w_in_reg[7][7]  ( .D(n82), .CK(clk), .Q(\w_in[7][7] ) );
  DFFQX4 \w_in_reg[7][4]  ( .D(n79), .CK(clk), .Q(\w_in[7][4] ) );
  DFFQX2 \w_in_reg[0][4]  ( .D(n23), .CK(clk), .Q(\w_in[0][4] ) );
  DFFQX2 \if_in_reg[0][4]  ( .D(n95), .CK(clk), .Q(\if_in[0][4] ) );
  DFFQX4 \w_in_reg[1][1]  ( .D(n28), .CK(clk), .Q(\w_in[1][1] ) );
  DFFQX2 \if_in_reg[1][4]  ( .D(n103), .CK(clk), .Q(\if_in[1][4] ) );
  DFFQX2 \w_in_reg[1][2]  ( .D(n29), .CK(clk), .Q(\w_in[1][2] ) );
  DFFQX2 \if_in_reg[3][5]  ( .D(n120), .CK(clk), .Q(\if_in[3][5] ) );
  DFFQX4 \w_in_reg[0][2]  ( .D(n21), .CK(clk), .Q(\w_in[0][2] ) );
  DFFQX1 \if_in_reg[5][6]  ( .D(n137), .CK(clk), .Q(\if_in[5][6] ) );
  DFFQX1 \if_in_reg[1][7]  ( .D(n106), .CK(clk), .Q(\if_in[1][7] ) );
  DFFQX2 \w_in_reg[5][4]  ( .D(n63), .CK(clk), .Q(\w_in[5][4] ) );
  DFFQX4 \w_in_reg[5][3]  ( .D(n62), .CK(clk), .Q(\w_in[5][3] ) );
  DFFQX2 \if_in_reg[5][1]  ( .D(n132), .CK(clk), .Q(\if_in[5][1] ) );
  DFFQX2 \w_in_reg[1][0]  ( .D(n27), .CK(clk), .Q(\w_in[1][0] ) );
  DFFHQX8 \w_in_reg[8][0]  ( .D(n83), .CK(clk), .Q(\w_in[8][0] ) );
  DFFQX2 \if_in_reg[4][4]  ( .D(n127), .CK(clk), .Q(\if_in[4][4] ) );
  DFFQX4 \w_in_reg[8][4]  ( .D(n87), .CK(clk), .Q(\w_in[8][4] ) );
  DFFHQX8 \if_in_reg[5][2]  ( .D(n133), .CK(clk), .Q(\if_in[5][2] ) );
  DFFHQX8 \if_in_reg[8][0]  ( .D(n155), .CK(clk), .Q(\if_in[8][0] ) );
  DFFQX4 \if_in_reg[0][5]  ( .D(n96), .CK(clk), .Q(\if_in[0][5] ) );
  DFFHQX8 \if_in_reg[2][0]  ( .D(n107), .CK(clk), .Q(\if_in[2][0] ) );
  DFFQX2 \w_in_reg[8][6]  ( .D(n89), .CK(clk), .Q(\w_in[8][6] ) );
  DFFQX4 \if_in_reg[3][7]  ( .D(n122), .CK(clk), .Q(\if_in[3][7] ) );
  DFFQX2 \if_in_reg[1][3]  ( .D(n102), .CK(clk), .Q(\if_in[1][3] ) );
  DFFQX2 \if_in_reg[1][2]  ( .D(n101), .CK(clk), .Q(\if_in[1][2] ) );
  DFFQX2 \if_in_reg[1][1]  ( .D(n100), .CK(clk), .Q(\if_in[1][1] ) );
  DFFQX4 \if_in_reg[0][3]  ( .D(n94), .CK(clk), .Q(\if_in[0][3] ) );
  DFFHQX8 \if_in_reg[7][0]  ( .D(n147), .CK(clk), .Q(\if_in[7][0] ) );
  DFFQX4 \if_in_reg[1][0]  ( .D(n99), .CK(clk), .Q(\if_in[1][0] ) );
  DFFQX2 \if_in_reg[5][4]  ( .D(n135), .CK(clk), .Q(\if_in[5][4] ) );
  DFFQX2 \if_in_reg[5][5]  ( .D(n136), .CK(clk), .Q(\if_in[5][5] ) );
  DFFQX2 \if_in_reg[5][3]  ( .D(n134), .CK(clk), .Q(\if_in[5][3] ) );
  DFFQX2 \w_in_reg[5][6]  ( .D(n65), .CK(clk), .Q(\w_in[5][6] ) );
  CLKBUFX3 U3 ( .A(n18), .Y(n6) );
  AND2X8 U4 ( .A(N438), .B(n163), .Y(out[16]) );
  AND2X4 U5 ( .A(N436), .B(n163), .Y(out[14]) );
  INVX3 U6 ( .A(rst), .Y(n163) );
  NOR2X1 U7 ( .A(rst), .B(n11), .Y(n18) );
  AO22XL U8 ( .A0(\if_in[2][0] ), .A1(n8), .B0(if_in2[0]), .B1(n10), .Y(n107)
         );
  AO22XL U9 ( .A0(\if_in[4][0] ), .A1(n9), .B0(if_in4[0]), .B1(n10), .Y(n123)
         );
  AO22XL U10 ( .A0(\if_in[6][0] ), .A1(n9), .B0(if_in6[0]), .B1(n10), .Y(n139)
         );
  AO22XL U11 ( .A0(\if_in[0][1] ), .A1(n7), .B0(if_in0[1]), .B1(n12), .Y(n92)
         );
  AO22XL U12 ( .A0(\if_in[0][2] ), .A1(n7), .B0(if_in0[2]), .B1(n12), .Y(n93)
         );
  AO22XL U13 ( .A0(\if_in[0][3] ), .A1(n7), .B0(if_in0[3]), .B1(n12), .Y(n94)
         );
  AO22XL U14 ( .A0(\if_in[0][4] ), .A1(n7), .B0(if_in0[4]), .B1(n12), .Y(n95)
         );
  AO22XL U15 ( .A0(\if_in[0][5] ), .A1(n7), .B0(if_in0[5]), .B1(n12), .Y(n96)
         );
  AO22XL U16 ( .A0(\if_in[0][6] ), .A1(n7), .B0(if_in0[6]), .B1(n12), .Y(n97)
         );
  AO22XL U17 ( .A0(\if_in[0][7] ), .A1(n7), .B0(if_in0[7]), .B1(n12), .Y(n98)
         );
  AO22XL U18 ( .A0(\if_in[1][0] ), .A1(n7), .B0(if_in1[0]), .B1(n12), .Y(n99)
         );
  AO22XL U19 ( .A0(\if_in[1][1] ), .A1(n7), .B0(if_in1[1]), .B1(n12), .Y(n100)
         );
  AO22XL U20 ( .A0(\if_in[1][2] ), .A1(n7), .B0(if_in1[2]), .B1(n12), .Y(n101)
         );
  AO22XL U21 ( .A0(\if_in[1][3] ), .A1(n7), .B0(if_in1[3]), .B1(n12), .Y(n102)
         );
  AO22XL U22 ( .A0(\if_in[1][4] ), .A1(n8), .B0(if_in1[4]), .B1(n12), .Y(n103)
         );
  AO22XL U23 ( .A0(\if_in[1][5] ), .A1(n8), .B0(if_in1[5]), .B1(n12), .Y(n104)
         );
  AO22XL U24 ( .A0(\if_in[1][6] ), .A1(n8), .B0(if_in1[6]), .B1(n12), .Y(n105)
         );
  AO22XL U25 ( .A0(\if_in[8][7] ), .A1(n9), .B0(if_in8[7]), .B1(n12), .Y(n162)
         );
  AO22XL U26 ( .A0(\if_in[1][7] ), .A1(n8), .B0(if_in1[7]), .B1(if_w), .Y(n106) );
  AO22XL U27 ( .A0(\if_in[2][1] ), .A1(n8), .B0(if_in2[1]), .B1(if_w), .Y(n108) );
  AO22XL U28 ( .A0(\if_in[2][2] ), .A1(n8), .B0(if_in2[2]), .B1(if_w), .Y(n109) );
  AO22XL U29 ( .A0(\if_in[2][3] ), .A1(n8), .B0(if_in2[3]), .B1(if_w), .Y(n110) );
  AO22XL U30 ( .A0(\if_in[2][4] ), .A1(n8), .B0(if_in2[4]), .B1(if_w), .Y(n111) );
  AO22XL U31 ( .A0(\if_in[2][5] ), .A1(n8), .B0(if_in2[5]), .B1(n11), .Y(n112)
         );
  AO22XL U32 ( .A0(\if_in[2][6] ), .A1(n8), .B0(if_in2[6]), .B1(n10), .Y(n113)
         );
  AO22XL U33 ( .A0(\if_in[2][7] ), .A1(n8), .B0(if_in2[7]), .B1(if_w), .Y(n114) );
  AO22XL U34 ( .A0(\if_in[4][1] ), .A1(n9), .B0(if_in4[1]), .B1(n10), .Y(n124)
         );
  AO22XL U35 ( .A0(\if_in[4][2] ), .A1(n9), .B0(if_in4[2]), .B1(n10), .Y(n125)
         );
  AO22XL U36 ( .A0(\if_in[4][3] ), .A1(n9), .B0(if_in4[3]), .B1(n10), .Y(n126)
         );
  AO22XL U37 ( .A0(\if_in[4][4] ), .A1(n9), .B0(if_in4[4]), .B1(n10), .Y(n127)
         );
  AO22XL U38 ( .A0(\if_in[4][5] ), .A1(n9), .B0(if_in4[5]), .B1(if_w), .Y(n128) );
  AO22XL U39 ( .A0(\if_in[4][6] ), .A1(n9), .B0(if_in4[6]), .B1(if_w), .Y(n129) );
  AO22XL U40 ( .A0(\if_in[4][7] ), .A1(n9), .B0(if_in4[7]), .B1(if_w), .Y(n130) );
  AO22XL U41 ( .A0(\if_in[6][1] ), .A1(n9), .B0(if_in6[1]), .B1(n10), .Y(n140)
         );
  AO22XL U42 ( .A0(\if_in[6][2] ), .A1(n9), .B0(if_in6[2]), .B1(n10), .Y(n141)
         );
  AO22XL U43 ( .A0(\if_in[6][3] ), .A1(n9), .B0(if_in6[3]), .B1(n10), .Y(n142)
         );
  AO22XL U44 ( .A0(\if_in[0][0] ), .A1(n7), .B0(n12), .B1(if_in0[0]), .Y(n91)
         );
  AO22XL U45 ( .A0(\w_in[2][1] ), .A1(n4), .B0(w_in2[1]), .B1(n13), .Y(n36) );
  AO22XL U46 ( .A0(\w_in[4][1] ), .A1(n5), .B0(w_in4[1]), .B1(n13), .Y(n52) );
  AO22XL U47 ( .A0(\w_in[6][1] ), .A1(n5), .B0(w_in6[1]), .B1(n14), .Y(n68) );
  AO22XL U48 ( .A0(\w_in[8][1] ), .A1(n4), .B0(w_in8[1]), .B1(n15), .Y(n84) );
  AO22XL U49 ( .A0(\if_in[6][4] ), .A1(n6), .B0(if_in6[4]), .B1(if_w), .Y(n143) );
  AO22XL U50 ( .A0(\if_in[6][5] ), .A1(n6), .B0(if_in6[5]), .B1(if_w), .Y(n144) );
  AO22XL U51 ( .A0(\if_in[6][6] ), .A1(n9), .B0(if_in6[6]), .B1(if_w), .Y(n145) );
  AO22XL U52 ( .A0(\if_in[6][7] ), .A1(n8), .B0(if_in6[7]), .B1(if_w), .Y(n146) );
  AO22XL U53 ( .A0(\if_in[8][1] ), .A1(n7), .B0(if_in8[1]), .B1(if_w), .Y(n156) );
  AO22XL U54 ( .A0(\if_in[8][2] ), .A1(n8), .B0(if_in8[2]), .B1(if_w), .Y(n157) );
  AO22XL U55 ( .A0(\if_in[8][3] ), .A1(n9), .B0(if_in8[3]), .B1(if_w), .Y(n158) );
  AO22XL U56 ( .A0(\if_in[8][4] ), .A1(n7), .B0(if_in8[4]), .B1(if_w), .Y(n159) );
  AO22XL U57 ( .A0(\if_in[8][5] ), .A1(n6), .B0(if_in8[5]), .B1(if_w), .Y(n160) );
  AO22XL U58 ( .A0(\if_in[8][6] ), .A1(n6), .B0(if_in8[6]), .B1(if_w), .Y(n161) );
  AO22XL U59 ( .A0(\if_in[8][0] ), .A1(n7), .B0(if_in8[0]), .B1(n12), .Y(n155)
         );
  AO22XL U60 ( .A0(\w_in[5][1] ), .A1(n2), .B0(w_in5[1]), .B1(n13), .Y(n60) );
  AO22XL U61 ( .A0(\w_in[5][2] ), .A1(n2), .B0(w_in5[2]), .B1(w_w), .Y(n61) );
  AO22XL U62 ( .A0(\w_in[5][3] ), .A1(n2), .B0(w_in5[3]), .B1(w_w), .Y(n62) );
  AO22XL U63 ( .A0(\w_in[5][4] ), .A1(n2), .B0(w_in5[4]), .B1(w_w), .Y(n63) );
  AO22XL U64 ( .A0(\w_in[5][5] ), .A1(n2), .B0(w_in5[5]), .B1(w_w), .Y(n64) );
  AO22XL U65 ( .A0(\w_in[5][6] ), .A1(n2), .B0(w_in5[6]), .B1(w_w), .Y(n65) );
  AO22XL U66 ( .A0(\w_in[5][7] ), .A1(n2), .B0(w_in5[7]), .B1(w_w), .Y(n66) );
  AO22XL U67 ( .A0(\w_in[2][3] ), .A1(n4), .B0(w_in2[3]), .B1(n13), .Y(n38) );
  AO22XL U68 ( .A0(\w_in[2][5] ), .A1(n4), .B0(w_in2[5]), .B1(n13), .Y(n40) );
  AO22XL U69 ( .A0(\w_in[4][3] ), .A1(n5), .B0(w_in4[3]), .B1(n14), .Y(n54) );
  AO22XL U70 ( .A0(\w_in[4][5] ), .A1(n5), .B0(w_in4[5]), .B1(n14), .Y(n56) );
  AO22XL U71 ( .A0(\w_in[6][3] ), .A1(n5), .B0(w_in6[3]), .B1(n14), .Y(n70) );
  AO22XL U72 ( .A0(\w_in[6][5] ), .A1(n2), .B0(w_in6[5]), .B1(n14), .Y(n72) );
  AO22XL U73 ( .A0(\w_in[8][3] ), .A1(n5), .B0(w_in8[3]), .B1(n15), .Y(n86) );
  AO22XL U74 ( .A0(\w_in[8][5] ), .A1(n3), .B0(w_in8[5]), .B1(n15), .Y(n88) );
  AO22XL U75 ( .A0(\w_in[0][1] ), .A1(n1), .B0(w_in0[1]), .B1(n13), .Y(n20) );
  AO22XL U76 ( .A0(\w_in[0][2] ), .A1(n1), .B0(w_in0[2]), .B1(n13), .Y(n21) );
  AO22XL U77 ( .A0(\w_in[0][3] ), .A1(n1), .B0(w_in0[3]), .B1(n13), .Y(n22) );
  AO22XL U78 ( .A0(\w_in[0][4] ), .A1(n1), .B0(w_in0[4]), .B1(n13), .Y(n23) );
  AO22XL U79 ( .A0(\w_in[0][5] ), .A1(n5), .B0(w_in0[5]), .B1(n13), .Y(n24) );
  AO22XL U80 ( .A0(\w_in[0][6] ), .A1(n1), .B0(w_in0[6]), .B1(n13), .Y(n25) );
  AO22XL U81 ( .A0(\w_in[0][7] ), .A1(n2), .B0(w_in0[7]), .B1(n13), .Y(n26) );
  AO22XL U82 ( .A0(\w_in[1][0] ), .A1(n3), .B0(w_in1[0]), .B1(n13), .Y(n27) );
  AO22XL U83 ( .A0(\w_in[1][1] ), .A1(n1), .B0(w_in1[1]), .B1(n13), .Y(n28) );
  AO22XL U84 ( .A0(\w_in[1][2] ), .A1(n1), .B0(w_in1[2]), .B1(n13), .Y(n29) );
  AO22XL U85 ( .A0(\w_in[1][3] ), .A1(n4), .B0(w_in1[3]), .B1(n13), .Y(n30) );
  AO22XL U86 ( .A0(\w_in[1][4] ), .A1(n4), .B0(w_in1[4]), .B1(n13), .Y(n31) );
  AO22XL U87 ( .A0(\w_in[1][5] ), .A1(n4), .B0(w_in1[5]), .B1(n13), .Y(n32) );
  AO22XL U88 ( .A0(\w_in[1][6] ), .A1(n4), .B0(w_in1[6]), .B1(n14), .Y(n33) );
  AO22XL U89 ( .A0(\w_in[1][7] ), .A1(n4), .B0(w_in1[7]), .B1(n15), .Y(n34) );
  AO22XL U90 ( .A0(\w_in[2][0] ), .A1(n4), .B0(w_in2[0]), .B1(n13), .Y(n35) );
  AO22XL U91 ( .A0(\w_in[2][2] ), .A1(n4), .B0(w_in2[2]), .B1(n14), .Y(n37) );
  AO22XL U92 ( .A0(\w_in[2][4] ), .A1(n4), .B0(w_in2[4]), .B1(n13), .Y(n39) );
  AO22XL U93 ( .A0(\w_in[2][6] ), .A1(n4), .B0(w_in2[6]), .B1(n13), .Y(n41) );
  AO22XL U94 ( .A0(\w_in[2][7] ), .A1(n4), .B0(w_in2[7]), .B1(n15), .Y(n42) );
  AO22XL U95 ( .A0(\w_in[3][0] ), .A1(n3), .B0(w_in3[0]), .B1(n14), .Y(n43) );
  AO22XL U96 ( .A0(\w_in[3][1] ), .A1(n3), .B0(w_in3[1]), .B1(n15), .Y(n44) );
  AO22XL U97 ( .A0(\w_in[3][2] ), .A1(n3), .B0(w_in3[2]), .B1(n15), .Y(n45) );
  AO22XL U98 ( .A0(\w_in[3][3] ), .A1(n3), .B0(w_in3[3]), .B1(n15), .Y(n46) );
  AO22XL U99 ( .A0(\w_in[3][4] ), .A1(n2), .B0(w_in3[4]), .B1(n14), .Y(n47) );
  AO22XL U100 ( .A0(\w_in[3][5] ), .A1(n2), .B0(w_in3[5]), .B1(n14), .Y(n48)
         );
  AO22XL U101 ( .A0(\w_in[3][6] ), .A1(n2), .B0(w_in3[6]), .B1(n15), .Y(n49)
         );
  AO22XL U102 ( .A0(\w_in[3][7] ), .A1(n2), .B0(w_in3[7]), .B1(n14), .Y(n50)
         );
  AO22XL U103 ( .A0(\w_in[4][0] ), .A1(n5), .B0(w_in4[0]), .B1(n15), .Y(n51)
         );
  AO22XL U104 ( .A0(\w_in[4][2] ), .A1(n5), .B0(w_in4[2]), .B1(n14), .Y(n53)
         );
  AO22XL U105 ( .A0(\w_in[4][4] ), .A1(n5), .B0(w_in4[4]), .B1(n14), .Y(n55)
         );
  AO22XL U106 ( .A0(\w_in[4][6] ), .A1(n5), .B0(w_in4[6]), .B1(n14), .Y(n57)
         );
  AO22XL U107 ( .A0(\w_in[4][7] ), .A1(n5), .B0(w_in4[7]), .B1(n14), .Y(n58)
         );
  AO22XL U108 ( .A0(\w_in[5][0] ), .A1(n2), .B0(w_in5[0]), .B1(n14), .Y(n59)
         );
  AO22XL U109 ( .A0(\w_in[6][0] ), .A1(n5), .B0(w_in6[0]), .B1(n14), .Y(n67)
         );
  AO22XL U110 ( .A0(\w_in[6][2] ), .A1(n5), .B0(w_in6[2]), .B1(n14), .Y(n69)
         );
  AO22XL U111 ( .A0(\w_in[6][4] ), .A1(n4), .B0(w_in6[4]), .B1(n14), .Y(n71)
         );
  AO22XL U112 ( .A0(\w_in[6][6] ), .A1(n2), .B0(w_in6[6]), .B1(n14), .Y(n73)
         );
  AO22XL U113 ( .A0(\w_in[6][7] ), .A1(n1), .B0(w_in6[7]), .B1(n15), .Y(n74)
         );
  AO22XL U114 ( .A0(\w_in[7][0] ), .A1(n3), .B0(w_in7[0]), .B1(n15), .Y(n75)
         );
  AO22XL U115 ( .A0(\w_in[7][1] ), .A1(n3), .B0(w_in7[1]), .B1(n15), .Y(n76)
         );
  AO22XL U116 ( .A0(\w_in[7][2] ), .A1(n3), .B0(w_in7[2]), .B1(n15), .Y(n77)
         );
  AO22XL U117 ( .A0(\w_in[7][3] ), .A1(n3), .B0(w_in7[3]), .B1(n15), .Y(n78)
         );
  AO22XL U118 ( .A0(\w_in[7][4] ), .A1(n3), .B0(w_in7[4]), .B1(n15), .Y(n79)
         );
  AO22XL U119 ( .A0(\w_in[7][5] ), .A1(n3), .B0(w_in7[5]), .B1(n14), .Y(n80)
         );
  AO22XL U120 ( .A0(\w_in[7][6] ), .A1(n3), .B0(w_in7[6]), .B1(n15), .Y(n81)
         );
  AO22XL U121 ( .A0(\w_in[7][7] ), .A1(n3), .B0(w_in7[7]), .B1(n14), .Y(n82)
         );
  AO22XL U122 ( .A0(\w_in[8][0] ), .A1(n1), .B0(w_in8[0]), .B1(n15), .Y(n83)
         );
  AO22XL U123 ( .A0(\w_in[8][2] ), .A1(n5), .B0(w_in8[2]), .B1(n15), .Y(n85)
         );
  AO22XL U124 ( .A0(\w_in[8][4] ), .A1(n3), .B0(w_in8[4]), .B1(n15), .Y(n87)
         );
  AO22XL U125 ( .A0(\w_in[8][6] ), .A1(n5), .B0(w_in8[6]), .B1(n15), .Y(n89)
         );
  AO22XL U126 ( .A0(\w_in[8][7] ), .A1(n3), .B0(w_in8[7]), .B1(n15), .Y(n90)
         );
  AO22XL U127 ( .A0(\w_in[0][0] ), .A1(n1), .B0(n13), .B1(w_in0[0]), .Y(n19)
         );
  CLKBUFX3 U128 ( .A(n1), .Y(n4) );
  CLKBUFX3 U129 ( .A(n1), .Y(n2) );
  CLKBUFX3 U130 ( .A(n1), .Y(n5) );
  CLKBUFX3 U131 ( .A(n1), .Y(n3) );
  CLKBUFX3 U132 ( .A(n6), .Y(n7) );
  CLKBUFX3 U133 ( .A(n6), .Y(n8) );
  CLKBUFX3 U134 ( .A(n6), .Y(n9) );
  INVX3 U135 ( .A(n16), .Y(n13) );
  INVX3 U136 ( .A(n17), .Y(n14) );
  INVX3 U137 ( .A(n17), .Y(n15) );
  AND2X2 U138 ( .A(N422), .B(n163), .Y(out[0]) );
  AND2X2 U139 ( .A(N423), .B(n163), .Y(out[1]) );
  AND2X2 U140 ( .A(N424), .B(n163), .Y(out[2]) );
  AND2X2 U141 ( .A(N425), .B(n163), .Y(out[3]) );
  AND2X2 U142 ( .A(N426), .B(n163), .Y(out[4]) );
  AND2X2 U143 ( .A(N427), .B(n163), .Y(out[5]) );
  AND2X2 U144 ( .A(N435), .B(n163), .Y(out[13]) );
  AND2X2 U145 ( .A(N437), .B(n163), .Y(out[15]) );
  AND2X2 U146 ( .A(N432), .B(n163), .Y(out[10]) );
  AND2X2 U147 ( .A(N434), .B(n163), .Y(out[12]) );
  AND2X2 U148 ( .A(N431), .B(n163), .Y(out[9]) );
  AND2X2 U149 ( .A(N433), .B(n163), .Y(out[11]) );
  AND2X2 U150 ( .A(N428), .B(n163), .Y(out[6]) );
  AND2X2 U151 ( .A(N429), .B(n163), .Y(out[7]) );
  AND2X2 U152 ( .A(N430), .B(n163), .Y(out[8]) );
  AND2X2 U153 ( .A(n16), .B(n163), .Y(n1) );
  CLKBUFX3 U154 ( .A(n10), .Y(n11) );
  CLKBUFX3 U155 ( .A(n17), .Y(n16) );
  CLKBUFX3 U156 ( .A(n10), .Y(n12) );
  AO22X1 U157 ( .A0(if_in3[1]), .A1(n11), .B0(\if_in[3][1] ), .B1(n6), .Y(n116) );
  AO22X1 U158 ( .A0(if_in3[2]), .A1(n11), .B0(\if_in[3][2] ), .B1(n18), .Y(
        n117) );
  AO22X1 U159 ( .A0(if_in3[3]), .A1(n11), .B0(\if_in[3][3] ), .B1(n6), .Y(n118) );
  AO22X1 U160 ( .A0(if_in3[4]), .A1(n11), .B0(\if_in[3][4] ), .B1(n18), .Y(
        n119) );
  AO22X1 U161 ( .A0(if_in3[5]), .A1(n11), .B0(\if_in[3][5] ), .B1(n6), .Y(n120) );
  AO22X1 U162 ( .A0(if_in3[6]), .A1(n11), .B0(\if_in[3][6] ), .B1(n9), .Y(n121) );
  AO22X1 U163 ( .A0(if_in3[7]), .A1(n11), .B0(\if_in[3][7] ), .B1(n9), .Y(n122) );
  AO22X1 U164 ( .A0(if_in5[1]), .A1(n11), .B0(\if_in[5][1] ), .B1(n7), .Y(n132) );
  AO22X1 U165 ( .A0(if_in5[2]), .A1(n11), .B0(\if_in[5][2] ), .B1(n8), .Y(n133) );
  AO22X1 U166 ( .A0(if_in5[3]), .A1(n11), .B0(\if_in[5][3] ), .B1(n7), .Y(n134) );
  AO22X1 U167 ( .A0(if_in5[4]), .A1(n11), .B0(\if_in[5][4] ), .B1(n9), .Y(n135) );
  AO22X1 U168 ( .A0(if_in5[5]), .A1(n11), .B0(\if_in[5][5] ), .B1(n8), .Y(n136) );
  AO22X1 U169 ( .A0(if_in5[6]), .A1(n11), .B0(\if_in[5][6] ), .B1(n6), .Y(n137) );
  AO22X1 U170 ( .A0(if_in5[7]), .A1(n11), .B0(\if_in[5][7] ), .B1(n8), .Y(n138) );
  AO22X1 U171 ( .A0(if_in7[1]), .A1(n12), .B0(\if_in[7][1] ), .B1(n9), .Y(n148) );
  AO22X1 U172 ( .A0(if_in7[2]), .A1(n12), .B0(\if_in[7][2] ), .B1(n7), .Y(n149) );
  AO22X1 U173 ( .A0(if_in7[3]), .A1(n12), .B0(\if_in[7][3] ), .B1(n8), .Y(n150) );
  AO22X1 U174 ( .A0(if_in7[4]), .A1(n11), .B0(\if_in[7][4] ), .B1(n18), .Y(
        n151) );
  AO22X1 U175 ( .A0(if_in7[5]), .A1(n11), .B0(\if_in[7][5] ), .B1(n6), .Y(n152) );
  AO22X1 U176 ( .A0(if_in7[6]), .A1(n11), .B0(\if_in[7][6] ), .B1(n18), .Y(
        n153) );
  AO22X1 U177 ( .A0(if_in7[7]), .A1(n12), .B0(\if_in[7][7] ), .B1(n6), .Y(n154) );
  AO22X1 U178 ( .A0(if_in5[0]), .A1(n11), .B0(\if_in[5][0] ), .B1(n8), .Y(n131) );
  AO22X1 U179 ( .A0(if_in3[0]), .A1(n11), .B0(\if_in[3][0] ), .B1(n18), .Y(
        n115) );
  AO22X1 U180 ( .A0(if_in7[0]), .A1(n12), .B0(\if_in[7][0] ), .B1(n6), .Y(n147) );
  CLKBUFX3 U181 ( .A(if_w), .Y(n10) );
  CLKINVX1 U182 ( .A(w_w), .Y(n17) );
endmodule


module PRelu ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8;

  NAND2X2 U2 ( .A(n8), .B(n6), .Y(out[14]) );
  BUFX20 U3 ( .A(in[16]), .Y(out[16]) );
  NAND2X4 U4 ( .A(n8), .B(n7), .Y(out[15]) );
  INVX2 U5 ( .A(in[15]), .Y(n7) );
  INVX6 U6 ( .A(out[16]), .Y(n8) );
  CLKMX2X4 U7 ( .A(in[9]), .B(in[15]), .S0(out[16]), .Y(out[9]) );
  NAND2X1 U8 ( .A(n8), .B(n5), .Y(out[13]) );
  MX2X1 U9 ( .A(in[0]), .B(in[6]), .S0(out[16]), .Y(out[0]) );
  MX2X1 U10 ( .A(in[1]), .B(in[7]), .S0(out[16]), .Y(out[1]) );
  MX2X1 U11 ( .A(in[2]), .B(in[8]), .S0(out[16]), .Y(out[2]) );
  MX2X1 U12 ( .A(in[3]), .B(in[9]), .S0(out[16]), .Y(out[3]) );
  MX2X1 U13 ( .A(in[4]), .B(in[10]), .S0(out[16]), .Y(out[4]) );
  MX2X1 U14 ( .A(in[5]), .B(in[11]), .S0(out[16]), .Y(out[5]) );
  MX2X1 U15 ( .A(in[6]), .B(in[12]), .S0(out[16]), .Y(out[6]) );
  MX2X1 U16 ( .A(in[7]), .B(in[13]), .S0(out[16]), .Y(out[7]) );
  MX2X1 U17 ( .A(in[8]), .B(in[14]), .S0(out[16]), .Y(out[8]) );
  INVX1 U18 ( .A(in[10]), .Y(n2) );
  INVX1 U19 ( .A(in[11]), .Y(n3) );
  INVX1 U20 ( .A(in[12]), .Y(n4) );
  INVX1 U21 ( .A(in[13]), .Y(n5) );
  CLKINVX1 U22 ( .A(in[14]), .Y(n6) );
  NAND2X2 U23 ( .A(n8), .B(n2), .Y(out[10]) );
  NAND2X2 U24 ( .A(n8), .B(n3), .Y(out[11]) );
  NAND2X2 U25 ( .A(n8), .B(n4), .Y(out[12]) );
endmodule


module top ( clk, rst, w_w, if_w, w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, 
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
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [16:0] out_temp;

  CONV C1 ( .clk(clk), .rst(rst), .w_w(w_w), .if_w(if_w), .w_in0(w_in0), 
        .w_in1(w_in1), .w_in2(w_in2), .w_in3(w_in3), .w_in4(w_in4), .w_in5(
        w_in5), .w_in6(w_in6), .w_in7(w_in7), .w_in8(w_in8), .if_in0(if_in0), 
        .if_in1(if_in1), .if_in2(if_in2), .if_in3(if_in3), .if_in4(if_in4), 
        .if_in5(if_in5), .if_in6(if_in6), .if_in7(if_in7), .if_in8(if_in8), 
        .out(out_temp) );
  PRelu Pl ( .in(out_temp), .out({out[16:14], n11, out[12:9], n12, n13, n14, 
        n15, n16, n17, n18, n19, n20}) );
  CLKBUFX8 U1 ( .A(n11), .Y(out[13]) );
  BUFX8 U2 ( .A(n20), .Y(out[0]) );
  BUFX8 U3 ( .A(n19), .Y(out[1]) );
  BUFX8 U4 ( .A(n18), .Y(out[2]) );
  BUFX8 U5 ( .A(n17), .Y(out[3]) );
  BUFX8 U6 ( .A(n16), .Y(out[4]) );
  BUFX8 U7 ( .A(n15), .Y(out[5]) );
  BUFX8 U8 ( .A(n14), .Y(out[6]) );
  BUFX8 U9 ( .A(n13), .Y(out[7]) );
  BUFX8 U10 ( .A(n12), .Y(out[8]) );
endmodule

