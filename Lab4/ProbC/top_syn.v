/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 27 11:59:57 2021
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
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260;

  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n211), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  OAI22X1 U140 ( .A0(n220), .A1(n219), .B0(n221), .B1(n218), .Y(n86) );
  NAND2X1 U141 ( .A(n197), .B(n198), .Y(n221) );
  OAI22X1 U142 ( .A0(n222), .A1(n219), .B0(n223), .B1(n218), .Y(n84) );
  XOR2X1 U143 ( .A(n190), .B(n217), .Y(n223) );
  BUFX4 U144 ( .A(n230), .Y(n189) );
  CLKXOR2X4 U145 ( .A(b[5]), .B(n217), .Y(n224) );
  NOR2X2 U146 ( .A(n191), .B(n213), .Y(n79) );
  AND2X8 U147 ( .A(n201), .B(n202), .Y(n191) );
  BUFX6 U148 ( .A(b[4]), .Y(n190) );
  NAND2X1 U149 ( .A(a[2]), .B(n200), .Y(n201) );
  INVX2 U150 ( .A(a[2]), .Y(n199) );
  CMPR42X1 U151 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), 
        .ICO(n31), .CO(n32) );
  CMPR42X1 U152 ( .A(n66), .B(n60), .C(n210), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  OAI22XL U153 ( .A0(n224), .A1(n219), .B0(n225), .B1(n218), .Y(n82) );
  ADDFXL U154 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  OAI22XL U155 ( .A0(n223), .A1(n219), .B0(n224), .B1(n218), .Y(n83) );
  ADDFHX2 U156 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  XOR2X1 U157 ( .A(n7), .B(n192), .Y(product[9]) );
  CLKINVX1 U158 ( .A(n1), .Y(product[15]) );
  NAND2X6 U159 ( .A(n191), .B(n258), .Y(n228) );
  INVX6 U160 ( .A(a[1]), .Y(n217) );
  INVX3 U161 ( .A(b[0]), .Y(n213) );
  XOR2X1 U162 ( .A(n28), .B(n32), .Y(n192) );
  NAND2X1 U163 ( .A(n28), .B(n7), .Y(n193) );
  NAND2X1 U164 ( .A(n32), .B(n7), .Y(n194) );
  NAND2X1 U165 ( .A(n32), .B(n28), .Y(n195) );
  NAND3X2 U166 ( .A(n193), .B(n194), .C(n195), .Y(n6) );
  ADDFHX2 U167 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  NAND2X2 U168 ( .A(b[2]), .B(a[1]), .Y(n197) );
  NAND2X2 U169 ( .A(n196), .B(n217), .Y(n198) );
  INVX1 U170 ( .A(b[2]), .Y(n196) );
  OAI22XL U171 ( .A0(n221), .A1(n219), .B0(n222), .B1(n218), .Y(n85) );
  NAND2X1 U172 ( .A(n199), .B(a[1]), .Y(n202) );
  INVX1 U173 ( .A(a[1]), .Y(n200) );
  NAND2X4 U174 ( .A(b[1]), .B(n204), .Y(n205) );
  NAND2X2 U175 ( .A(n203), .B(n217), .Y(n206) );
  NAND2X6 U176 ( .A(n205), .B(n206), .Y(n220) );
  INVX1 U177 ( .A(b[1]), .Y(n203) );
  CLKINVX4 U178 ( .A(n217), .Y(n204) );
  OAI22X2 U179 ( .A0(b[0]), .A1(n219), .B0(n220), .B1(n218), .Y(n87) );
  ADDFX1 U180 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHX1 U181 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  XOR2X2 U182 ( .A(b[1]), .B(n216), .Y(n229) );
  INVX4 U183 ( .A(a[3]), .Y(n216) );
  XOR2X4 U184 ( .A(b[3]), .B(n217), .Y(n222) );
  OAI21X2 U185 ( .A0(b[0]), .A1(n217), .B0(n219), .Y(n55) );
  NAND2X4 U186 ( .A(a[1]), .B(n218), .Y(n219) );
  OAI22X1 U187 ( .A0(n227), .A1(n228), .B0(n191), .B1(n229), .Y(n78) );
  OAI22X1 U188 ( .A0(n229), .A1(n228), .B0(n191), .B1(n189), .Y(n77) );
  XOR2X4 U189 ( .A(a[4]), .B(a[3]), .Y(n207) );
  CLKINVX12 U190 ( .A(n207), .Y(n235) );
  INVX4 U191 ( .A(a[5]), .Y(n215) );
  INVX6 U192 ( .A(a[0]), .Y(n218) );
  XOR2XL U193 ( .A(n216), .B(b[0]), .Y(n227) );
  XOR2X1 U194 ( .A(b[1]), .B(n215), .Y(n238) );
  NAND2X2 U195 ( .A(n208), .B(n260), .Y(n247) );
  CMPR32X2 U196 ( .A(n17), .B(n212), .C(n3), .CO(n2), .S(product[13]) );
  INVX1 U197 ( .A(n29), .Y(n210) );
  ADDHX1 U198 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  CMPR32X2 U199 ( .A(n15), .B(n56), .C(n2), .CO(n1), .S(product[14]) );
  ADDHX1 U200 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  OAI32XL U201 ( .A0(n214), .A1(b[0]), .A2(n208), .B0(n214), .B1(n247), .Y(n52) );
  XOR2XL U202 ( .A(n214), .B(b[0]), .Y(n246) );
  OAI2BB1XL U203 ( .A0N(n218), .A1N(n219), .B0(n226), .Y(n255) );
  OA22XL U204 ( .A0(n233), .A1(n228), .B0(n191), .B1(n257), .Y(n256) );
  INVX1 U205 ( .A(n21), .Y(n211) );
  AO21XL U206 ( .A0(n228), .A1(n191), .B0(n234), .Y(n72) );
  NAND2BXL U207 ( .AN(n255), .B(n256), .Y(n34) );
  NAND2X4 U208 ( .A(n235), .B(n259), .Y(n237) );
  XOR2XL U209 ( .A(b[2]), .B(n216), .Y(n230) );
  XOR2XL U210 ( .A(n190), .B(n216), .Y(n232) );
  XOR2XL U211 ( .A(b[2]), .B(n215), .Y(n239) );
  XOR2XL U212 ( .A(b[3]), .B(n215), .Y(n240) );
  XOR2XL U213 ( .A(b[1]), .B(n214), .Y(n248) );
  XOR2XL U214 ( .A(b[5]), .B(n216), .Y(n233) );
  XOR2XL U215 ( .A(b[6]), .B(n215), .Y(n243) );
  XOR2XL U216 ( .A(n190), .B(n215), .Y(n241) );
  XOR2XL U217 ( .A(b[2]), .B(n214), .Y(n249) );
  XOR2XL U218 ( .A(b[5]), .B(n215), .Y(n242) );
  XOR2XL U219 ( .A(b[3]), .B(n214), .Y(n250) );
  XOR2XL U220 ( .A(n190), .B(n214), .Y(n251) );
  XOR2XL U221 ( .A(b[5]), .B(n214), .Y(n252) );
  XOR2XL U222 ( .A(b[6]), .B(n216), .Y(n257) );
  XOR2XL U223 ( .A(b[7]), .B(n216), .Y(n234) );
  XOR2XL U224 ( .A(b[7]), .B(n215), .Y(n244) );
  XOR2XL U225 ( .A(b[6]), .B(n214), .Y(n253) );
  XOR2XL U226 ( .A(b[7]), .B(n214), .Y(n254) );
  ADDFX2 U227 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  CLKINVX1 U228 ( .A(n15), .Y(n212) );
  INVX3 U229 ( .A(a[7]), .Y(n214) );
  CLKBUFX3 U230 ( .A(n245), .Y(n208) );
  XNOR2X1 U231 ( .A(a[6]), .B(a[5]), .Y(n245) );
  ADDFX2 U232 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFHX2 U233 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFX2 U234 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  NOR2X1 U235 ( .A(n218), .B(n213), .Y(product[0]) );
  OAI2BB2XL U236 ( .B0(n225), .B1(n219), .A0N(n226), .A1N(a[0]), .Y(n81) );
  XOR2X1 U237 ( .A(b[6]), .B(n217), .Y(n225) );
  OAI22XL U238 ( .A0(n189), .A1(n228), .B0(n191), .B1(n231), .Y(n76) );
  OAI22XL U239 ( .A0(n231), .A1(n228), .B0(n191), .B1(n232), .Y(n75) );
  XOR2X1 U240 ( .A(b[3]), .B(n216), .Y(n231) );
  OAI22XL U241 ( .A0(n232), .A1(n228), .B0(n191), .B1(n233), .Y(n74) );
  NOR2X1 U242 ( .A(n235), .B(n213), .Y(n71) );
  OAI22XL U243 ( .A0(n236), .A1(n237), .B0(n235), .B1(n238), .Y(n70) );
  XOR2X1 U244 ( .A(n215), .B(b[0]), .Y(n236) );
  OAI22XL U245 ( .A0(n238), .A1(n237), .B0(n235), .B1(n239), .Y(n69) );
  OAI22XL U246 ( .A0(n239), .A1(n237), .B0(n235), .B1(n240), .Y(n68) );
  OAI22XL U247 ( .A0(n240), .A1(n237), .B0(n235), .B1(n241), .Y(n67) );
  OAI22XL U248 ( .A0(n241), .A1(n237), .B0(n235), .B1(n242), .Y(n66) );
  OAI22XL U249 ( .A0(n242), .A1(n237), .B0(n235), .B1(n243), .Y(n65) );
  AO21X1 U250 ( .A0(n237), .A1(n235), .B0(n244), .Y(n64) );
  NOR2X1 U251 ( .A(n208), .B(n213), .Y(n63) );
  OAI22XL U252 ( .A0(n246), .A1(n247), .B0(n208), .B1(n248), .Y(n62) );
  OAI22XL U253 ( .A0(n248), .A1(n247), .B0(n208), .B1(n249), .Y(n61) );
  OAI22XL U254 ( .A0(n249), .A1(n247), .B0(n208), .B1(n250), .Y(n60) );
  OAI22XL U255 ( .A0(n250), .A1(n247), .B0(n208), .B1(n251), .Y(n59) );
  OAI22XL U256 ( .A0(n251), .A1(n247), .B0(n208), .B1(n252), .Y(n58) );
  OAI22XL U257 ( .A0(n252), .A1(n247), .B0(n208), .B1(n253), .Y(n57) );
  AO21X1 U258 ( .A0(n247), .A1(n208), .B0(n254), .Y(n56) );
  OAI32X1 U259 ( .A0(n216), .A1(b[0]), .A2(n191), .B0(n216), .B1(n228), .Y(n54) );
  OAI32X1 U260 ( .A0(n215), .A1(b[0]), .A2(n235), .B0(n215), .B1(n237), .Y(n53) );
  XOR2X1 U261 ( .A(n255), .B(n256), .Y(n35) );
  XOR2X1 U262 ( .A(b[7]), .B(a[1]), .Y(n226) );
  OAI22XL U263 ( .A0(n191), .A1(n234), .B0(n257), .B1(n228), .Y(n29) );
  XOR2X1 U264 ( .A(a[3]), .B(a[2]), .Y(n258) );
  OAI22XL U265 ( .A0(n235), .A1(n244), .B0(n243), .B1(n237), .Y(n21) );
  XOR2X1 U266 ( .A(a[5]), .B(a[4]), .Y(n259) );
  OAI22XL U267 ( .A0(n208), .A1(n254), .B0(n253), .B1(n247), .Y(n15) );
  XOR2X1 U268 ( .A(a[7]), .B(a[6]), .Y(n260) );
endmodule


module CONV_DW_mult_tc_4 ( a, b, product );
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
         n248;

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
  ADDHX1 U140 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CLKBUFX3 U141 ( .A(b[5]), .Y(n189) );
  CLKXOR2X1 U142 ( .A(b[6]), .B(n205), .Y(n213) );
  INVX16 U143 ( .A(n194), .Y(n205) );
  XOR2X4 U144 ( .A(n189), .B(n205), .Y(n212) );
  OAI22X1 U145 ( .A0(n219), .A1(n217), .B0(n215), .B1(n220), .Y(n76) );
  XOR2X1 U146 ( .A(b[3]), .B(n204), .Y(n220) );
  ADDFHX4 U147 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFHX2 U148 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFHX2 U149 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  XOR2X4 U150 ( .A(b[3]), .B(n205), .Y(n210) );
  XOR2X4 U151 ( .A(b[4]), .B(n205), .Y(n211) );
  NAND2X4 U152 ( .A(n215), .B(n246), .Y(n217) );
  OAI22X1 U153 ( .A0(n209), .A1(n207), .B0(n210), .B1(n206), .Y(n85) );
  CMPR42X1 U154 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  CLKXOR2X2 U155 ( .A(b[1]), .B(n205), .Y(n208) );
  NAND2X1 U156 ( .A(n192), .B(n193), .Y(n209) );
  NAND2X1 U157 ( .A(b[2]), .B(n194), .Y(n192) );
  OAI22XL U158 ( .A0(n210), .A1(n207), .B0(n211), .B1(n206), .Y(n84) );
  ADDFXL U159 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFX2 U160 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFX2 U161 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  INVX3 U162 ( .A(a[0]), .Y(n206) );
  XNOR2X4 U163 ( .A(a[4]), .B(a[3]), .Y(n190) );
  CLKBUFX6 U164 ( .A(a[1]), .Y(n194) );
  OAI22X1 U165 ( .A0(n216), .A1(n217), .B0(n215), .B1(n218), .Y(n78) );
  XOR2X1 U166 ( .A(b[1]), .B(n204), .Y(n218) );
  ADDFX2 U167 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFX2 U168 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDHX1 U169 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  NAND2X8 U170 ( .A(n194), .B(n206), .Y(n207) );
  ADDHX2 U171 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OAI21X1 U172 ( .A0(b[0]), .A1(n205), .B0(n207), .Y(n55) );
  NAND2X1 U173 ( .A(n191), .B(n205), .Y(n193) );
  INVXL U174 ( .A(b[2]), .Y(n191) );
  OAI22X2 U175 ( .A0(n208), .A1(n207), .B0(n209), .B1(n206), .Y(n86) );
  ADDFHX2 U176 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  OAI22X1 U177 ( .A0(b[0]), .A1(n207), .B0(n208), .B1(n206), .Y(n87) );
  XOR2X4 U178 ( .A(a[2]), .B(n194), .Y(n195) );
  CLKINVX12 U179 ( .A(n195), .Y(n215) );
  ADDFX2 U180 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFHX1 U181 ( .A(n17), .B(n200), .CI(n3), .CO(n2), .S(product[13]) );
  XOR2XL U182 ( .A(b[2]), .B(n204), .Y(n219) );
  OAI22XL U183 ( .A0(n226), .A1(n225), .B0(n190), .B1(n227), .Y(n69) );
  XOR2XL U184 ( .A(n203), .B(b[0]), .Y(n224) );
  INVX8 U185 ( .A(a[3]), .Y(n204) );
  INVX3 U186 ( .A(a[5]), .Y(n203) );
  INVX1 U187 ( .A(n29), .Y(n198) );
  ADDHX1 U188 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U189 ( .A0(n224), .A1(n225), .B0(n190), .B1(n226), .Y(n70) );
  NOR2XL U190 ( .A(n206), .B(n201), .Y(product[0]) );
  NAND2BXL U191 ( .AN(n243), .B(n244), .Y(n34) );
  INVX1 U192 ( .A(n21), .Y(n199) );
  NAND2X4 U193 ( .A(n190), .B(n247), .Y(n225) );
  XOR2XL U194 ( .A(b[4]), .B(n204), .Y(n221) );
  XOR2XL U195 ( .A(b[2]), .B(n203), .Y(n227) );
  XOR2XL U196 ( .A(b[7]), .B(n194), .Y(n214) );
  XOR2XL U197 ( .A(b[3]), .B(n203), .Y(n228) );
  XOR2XL U198 ( .A(b[1]), .B(n202), .Y(n236) );
  XOR2XL U199 ( .A(b[4]), .B(n203), .Y(n229) );
  XOR2XL U200 ( .A(n189), .B(n204), .Y(n222) );
  XOR2XL U201 ( .A(b[6]), .B(n203), .Y(n231) );
  XOR2XL U202 ( .A(b[2]), .B(n202), .Y(n237) );
  XOR2XL U203 ( .A(n189), .B(n203), .Y(n230) );
  XOR2XL U204 ( .A(b[3]), .B(n202), .Y(n238) );
  XOR2XL U205 ( .A(b[4]), .B(n202), .Y(n239) );
  XOR2XL U206 ( .A(n189), .B(n202), .Y(n240) );
  XOR2XL U207 ( .A(b[6]), .B(n204), .Y(n245) );
  XOR2XL U208 ( .A(b[7]), .B(n204), .Y(n223) );
  XOR2XL U209 ( .A(b[7]), .B(n203), .Y(n232) );
  XOR2XL U210 ( .A(b[6]), .B(n202), .Y(n241) );
  XOR2XL U211 ( .A(b[7]), .B(n202), .Y(n242) );
  CLKINVX1 U212 ( .A(n15), .Y(n200) );
  ADDFX2 U213 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFX2 U214 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  CLKINVX1 U215 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U216 ( .A(b[0]), .Y(n201) );
  CLKBUFX3 U217 ( .A(n233), .Y(n196) );
  XNOR2X1 U218 ( .A(a[6]), .B(a[5]), .Y(n233) );
  NAND2X2 U219 ( .A(n196), .B(n248), .Y(n235) );
  INVX3 U220 ( .A(a[7]), .Y(n202) );
  ADDFX2 U221 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFX2 U222 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  OAI22XL U223 ( .A0(n211), .A1(n207), .B0(n212), .B1(n206), .Y(n83) );
  OAI22XL U224 ( .A0(n212), .A1(n207), .B0(n213), .B1(n206), .Y(n82) );
  OAI2BB2XL U225 ( .B0(n213), .B1(n207), .A0N(n214), .A1N(a[0]), .Y(n81) );
  NOR2X1 U226 ( .A(n215), .B(n201), .Y(n79) );
  XOR2X1 U227 ( .A(n204), .B(b[0]), .Y(n216) );
  OAI22XL U228 ( .A0(n218), .A1(n217), .B0(n215), .B1(n219), .Y(n77) );
  OAI22XL U229 ( .A0(n220), .A1(n217), .B0(n215), .B1(n221), .Y(n75) );
  OAI22XL U230 ( .A0(n221), .A1(n217), .B0(n215), .B1(n222), .Y(n74) );
  AO21X1 U231 ( .A0(n217), .A1(n215), .B0(n223), .Y(n72) );
  NOR2X1 U232 ( .A(n190), .B(n201), .Y(n71) );
  XOR2X1 U233 ( .A(b[1]), .B(n203), .Y(n226) );
  OAI22XL U234 ( .A0(n227), .A1(n225), .B0(n190), .B1(n228), .Y(n68) );
  OAI22XL U235 ( .A0(n228), .A1(n225), .B0(n190), .B1(n229), .Y(n67) );
  OAI22XL U236 ( .A0(n229), .A1(n225), .B0(n190), .B1(n230), .Y(n66) );
  OAI22XL U237 ( .A0(n230), .A1(n225), .B0(n190), .B1(n231), .Y(n65) );
  AO21X1 U238 ( .A0(n225), .A1(n190), .B0(n232), .Y(n64) );
  NOR2X1 U239 ( .A(n196), .B(n201), .Y(n63) );
  OAI22XL U240 ( .A0(n234), .A1(n235), .B0(n196), .B1(n236), .Y(n62) );
  XOR2X1 U241 ( .A(n202), .B(b[0]), .Y(n234) );
  OAI22XL U242 ( .A0(n236), .A1(n235), .B0(n196), .B1(n237), .Y(n61) );
  OAI22XL U243 ( .A0(n237), .A1(n235), .B0(n196), .B1(n238), .Y(n60) );
  OAI22XL U244 ( .A0(n238), .A1(n235), .B0(n196), .B1(n239), .Y(n59) );
  OAI22XL U245 ( .A0(n239), .A1(n235), .B0(n196), .B1(n240), .Y(n58) );
  OAI22XL U246 ( .A0(n240), .A1(n235), .B0(n196), .B1(n241), .Y(n57) );
  AO21X1 U247 ( .A0(n235), .A1(n196), .B0(n242), .Y(n56) );
  OAI32X1 U248 ( .A0(n204), .A1(b[0]), .A2(n215), .B0(n204), .B1(n217), .Y(n54) );
  OAI32X1 U249 ( .A0(n203), .A1(b[0]), .A2(n190), .B0(n203), .B1(n225), .Y(n53) );
  OAI32X1 U250 ( .A0(n202), .A1(b[0]), .A2(n196), .B0(n202), .B1(n235), .Y(n52) );
  XOR2X1 U251 ( .A(n243), .B(n244), .Y(n35) );
  OA22X1 U252 ( .A0(n222), .A1(n217), .B0(n215), .B1(n245), .Y(n244) );
  OAI2BB1X1 U253 ( .A0N(n206), .A1N(n207), .B0(n214), .Y(n243) );
  OAI22XL U254 ( .A0(n215), .A1(n223), .B0(n245), .B1(n217), .Y(n29) );
  XOR2X1 U255 ( .A(a[3]), .B(a[2]), .Y(n246) );
  OAI22XL U256 ( .A0(n190), .A1(n232), .B0(n231), .B1(n225), .Y(n21) );
  XOR2X1 U257 ( .A(a[5]), .B(a[4]), .Y(n247) );
  OAI22XL U258 ( .A0(n196), .A1(n242), .B0(n241), .B1(n235), .Y(n15) );
  XOR2X1 U259 ( .A(a[7]), .B(a[6]), .Y(n248) );
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
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259;

  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U18 ( .A(n210), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n209), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFX2 U140 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFX2 U141 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDHX1 U142 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  ADDFHX2 U143 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  XOR2X4 U144 ( .A(n192), .B(n216), .Y(n219) );
  OAI22X1 U145 ( .A0(n221), .A1(n218), .B0(n222), .B1(n217), .Y(n84) );
  XOR2X1 U146 ( .A(b[4]), .B(n216), .Y(n222) );
  OAI22X1 U147 ( .A0(n228), .A1(n227), .B0(n203), .B1(n229), .Y(n77) );
  NAND2X4 U148 ( .A(n203), .B(n257), .Y(n227) );
  ADDFHX1 U149 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDHX1 U150 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  XOR2X4 U151 ( .A(n193), .B(n216), .Y(n220) );
  INVX6 U152 ( .A(n205), .Y(n216) );
  ADDFX1 U153 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  BUFX6 U154 ( .A(b[3]), .Y(n189) );
  INVX6 U155 ( .A(b[0]), .Y(n190) );
  CLKINVX12 U156 ( .A(n190), .Y(n191) );
  BUFX6 U157 ( .A(b[1]), .Y(n192) );
  OAI21X1 U158 ( .A0(n191), .A1(n216), .B0(n218), .Y(n55) );
  BUFX6 U159 ( .A(b[2]), .Y(n193) );
  ADDFXL U160 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  OAI22XL U161 ( .A0(n222), .A1(n218), .B0(n223), .B1(n217), .Y(n83) );
  OAI22XL U162 ( .A0(n229), .A1(n227), .B0(n203), .B1(n230), .Y(n76) );
  ADDFX2 U163 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFX2 U164 ( .A(n17), .B(n211), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U165 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDFXL U166 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFX2 U167 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  INVX3 U168 ( .A(a[3]), .Y(n215) );
  XOR2XL U169 ( .A(n18), .B(n19), .Y(n194) );
  XOR2X1 U170 ( .A(n4), .B(n194), .Y(product[12]) );
  NAND2X2 U171 ( .A(n18), .B(n4), .Y(n195) );
  NAND2X2 U172 ( .A(n19), .B(n4), .Y(n196) );
  NAND2X1 U173 ( .A(n19), .B(n18), .Y(n197) );
  NAND3X2 U174 ( .A(n195), .B(n196), .C(n197), .Y(n3) );
  ADDFHX2 U175 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  OR2XL U176 ( .A(n223), .B(n218), .Y(n198) );
  OR2X1 U177 ( .A(n224), .B(n217), .Y(n199) );
  NAND2X1 U178 ( .A(n198), .B(n199), .Y(n82) );
  INVX4 U179 ( .A(a[0]), .Y(n217) );
  NAND2X1 U180 ( .A(b[4]), .B(a[3]), .Y(n201) );
  NAND2XL U181 ( .A(n200), .B(n215), .Y(n202) );
  NAND2X1 U182 ( .A(n201), .B(n202), .Y(n231) );
  INVXL U183 ( .A(b[4]), .Y(n200) );
  BUFX16 U184 ( .A(n206), .Y(n203) );
  XNOR2X2 U185 ( .A(a[2]), .B(n205), .Y(n206) );
  XOR2X2 U186 ( .A(n189), .B(n216), .Y(n221) );
  XOR2X1 U187 ( .A(n189), .B(n215), .Y(n230) );
  XOR2X1 U188 ( .A(n193), .B(n215), .Y(n229) );
  OAI22X1 U189 ( .A0(n219), .A1(n218), .B0(n220), .B1(n217), .Y(n86) );
  OAI22X2 U190 ( .A0(n226), .A1(n227), .B0(n203), .B1(n228), .Y(n78) );
  BUFX3 U191 ( .A(n78), .Y(n204) );
  OAI22X1 U192 ( .A0(n220), .A1(n218), .B0(n221), .B1(n217), .Y(n85) );
  ADDHX1 U193 ( .A(n85), .B(n204), .CO(n50), .S(n51) );
  ADDHX2 U194 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OAI22X1 U195 ( .A0(n191), .A1(n218), .B0(n219), .B1(n217), .Y(n87) );
  BUFX6 U196 ( .A(a[1]), .Y(n205) );
  INVX4 U197 ( .A(a[5]), .Y(n214) );
  XNOR2X4 U198 ( .A(a[4]), .B(a[3]), .Y(n234) );
  ADDFHX2 U199 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  XOR2X1 U200 ( .A(n192), .B(n214), .Y(n237) );
  NAND2X4 U201 ( .A(n207), .B(n259), .Y(n246) );
  INVX1 U202 ( .A(n29), .Y(n209) );
  CMPR32X2 U203 ( .A(n15), .B(n56), .C(n2), .CO(n1), .S(product[14]) );
  OAI32XL U204 ( .A0(n213), .A1(n191), .A2(n207), .B0(n213), .B1(n246), .Y(n52) );
  XOR2XL U205 ( .A(n213), .B(n191), .Y(n245) );
  NOR2XL U206 ( .A(n217), .B(n212), .Y(product[0]) );
  NAND2BXL U207 ( .AN(n254), .B(n255), .Y(n34) );
  OAI2BB1XL U208 ( .A0N(n217), .A1N(n218), .B0(n225), .Y(n254) );
  INVX1 U209 ( .A(n21), .Y(n210) );
  NAND2X4 U210 ( .A(n234), .B(n258), .Y(n236) );
  XOR2XL U211 ( .A(n193), .B(n214), .Y(n238) );
  XOR2XL U212 ( .A(n189), .B(n214), .Y(n239) );
  XOR2XL U213 ( .A(n192), .B(n213), .Y(n247) );
  XOR2XL U214 ( .A(b[4]), .B(n214), .Y(n240) );
  XOR2XL U215 ( .A(n193), .B(n213), .Y(n248) );
  XOR2XL U216 ( .A(b[5]), .B(n215), .Y(n232) );
  XOR2XL U217 ( .A(b[6]), .B(n215), .Y(n256) );
  XOR2XL U218 ( .A(b[7]), .B(n215), .Y(n233) );
  XOR2XL U219 ( .A(b[6]), .B(n214), .Y(n242) );
  XOR2XL U220 ( .A(b[5]), .B(n214), .Y(n241) );
  XOR2XL U221 ( .A(n189), .B(n213), .Y(n249) );
  XOR2XL U222 ( .A(b[4]), .B(n213), .Y(n250) );
  XOR2XL U223 ( .A(b[5]), .B(n213), .Y(n251) );
  XOR2XL U224 ( .A(b[7]), .B(n214), .Y(n243) );
  XOR2XL U225 ( .A(b[6]), .B(n213), .Y(n252) );
  XOR2XL U226 ( .A(b[7]), .B(n213), .Y(n253) );
  CLKINVX1 U227 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U228 ( .A(n15), .Y(n211) );
  CLKINVX1 U229 ( .A(n191), .Y(n212) );
  NAND2X2 U230 ( .A(n205), .B(n217), .Y(n218) );
  INVX3 U231 ( .A(a[7]), .Y(n213) );
  CLKBUFX3 U232 ( .A(n244), .Y(n207) );
  XNOR2X1 U233 ( .A(a[6]), .B(a[5]), .Y(n244) );
  XOR2X1 U234 ( .A(b[5]), .B(n216), .Y(n223) );
  OAI2BB2XL U235 ( .B0(n224), .B1(n218), .A0N(n225), .A1N(a[0]), .Y(n81) );
  XOR2X1 U236 ( .A(b[6]), .B(n216), .Y(n224) );
  NOR2X1 U237 ( .A(n203), .B(n212), .Y(n79) );
  XOR2X1 U238 ( .A(n215), .B(n191), .Y(n226) );
  XOR2X1 U239 ( .A(n192), .B(n215), .Y(n228) );
  OAI22XL U240 ( .A0(n230), .A1(n227), .B0(n203), .B1(n231), .Y(n75) );
  OAI22XL U241 ( .A0(n231), .A1(n227), .B0(n203), .B1(n232), .Y(n74) );
  AO21X1 U242 ( .A0(n227), .A1(n203), .B0(n233), .Y(n72) );
  NOR2X1 U243 ( .A(n234), .B(n212), .Y(n71) );
  OAI22XL U244 ( .A0(n235), .A1(n236), .B0(n234), .B1(n237), .Y(n70) );
  XOR2X1 U245 ( .A(n214), .B(n191), .Y(n235) );
  OAI22XL U246 ( .A0(n237), .A1(n236), .B0(n234), .B1(n238), .Y(n69) );
  OAI22XL U247 ( .A0(n238), .A1(n236), .B0(n234), .B1(n239), .Y(n68) );
  OAI22XL U248 ( .A0(n239), .A1(n236), .B0(n234), .B1(n240), .Y(n67) );
  OAI22XL U249 ( .A0(n240), .A1(n236), .B0(n234), .B1(n241), .Y(n66) );
  OAI22XL U250 ( .A0(n241), .A1(n236), .B0(n234), .B1(n242), .Y(n65) );
  AO21X1 U251 ( .A0(n236), .A1(n234), .B0(n243), .Y(n64) );
  NOR2X1 U252 ( .A(n207), .B(n212), .Y(n63) );
  OAI22XL U253 ( .A0(n245), .A1(n246), .B0(n207), .B1(n247), .Y(n62) );
  OAI22XL U254 ( .A0(n247), .A1(n246), .B0(n207), .B1(n248), .Y(n61) );
  OAI22XL U255 ( .A0(n248), .A1(n246), .B0(n207), .B1(n249), .Y(n60) );
  OAI22XL U256 ( .A0(n249), .A1(n246), .B0(n207), .B1(n250), .Y(n59) );
  OAI22XL U257 ( .A0(n250), .A1(n246), .B0(n207), .B1(n251), .Y(n58) );
  OAI22XL U258 ( .A0(n251), .A1(n246), .B0(n207), .B1(n252), .Y(n57) );
  AO21X1 U259 ( .A0(n246), .A1(n207), .B0(n253), .Y(n56) );
  OAI32X1 U260 ( .A0(n215), .A1(n191), .A2(n203), .B0(n215), .B1(n227), .Y(n54) );
  OAI32X1 U261 ( .A0(n214), .A1(n191), .A2(n234), .B0(n214), .B1(n236), .Y(n53) );
  XOR2X1 U262 ( .A(n254), .B(n255), .Y(n35) );
  OA22X1 U263 ( .A0(n232), .A1(n227), .B0(n203), .B1(n256), .Y(n255) );
  XOR2X1 U264 ( .A(b[7]), .B(n205), .Y(n225) );
  OAI22XL U265 ( .A0(n203), .A1(n233), .B0(n256), .B1(n227), .Y(n29) );
  XOR2X1 U266 ( .A(a[3]), .B(a[2]), .Y(n257) );
  OAI22XL U267 ( .A0(n234), .A1(n243), .B0(n242), .B1(n236), .Y(n21) );
  XOR2X1 U268 ( .A(a[5]), .B(a[4]), .Y(n258) );
  OAI22XL U269 ( .A0(n207), .A1(n253), .B0(n252), .B1(n246), .Y(n15) );
  XOR2X1 U270 ( .A(a[7]), .B(a[6]), .Y(n259) );
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
         n192, n193, n194, n195, n196, n197, n198, n199, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250;

  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
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
  XOR2X2 U140 ( .A(b[2]), .B(n208), .Y(n212) );
  ADDHXL U141 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  OAI22X1 U142 ( .A0(n199), .A1(n190), .B0(n211), .B1(n209), .Y(n87) );
  XOR3X2 U143 ( .A(n10), .B(n44), .C(n43), .Y(product[6]) );
  BUFX6 U144 ( .A(b[4]), .Y(n189) );
  ADDFHX4 U145 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  NAND3X2 U146 ( .A(n193), .B(n194), .C(n195), .Y(n9) );
  BUFX12 U147 ( .A(n210), .Y(n190) );
  XOR2X4 U148 ( .A(b[1]), .B(n208), .Y(n211) );
  ADDFHX2 U149 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFHX4 U150 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFHX2 U151 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFHX2 U152 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  CMPR32X2 U153 ( .A(n15), .B(n56), .C(n2), .CO(n1), .S(product[14]) );
  ADDHX2 U154 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U155 ( .A0(n212), .A1(n190), .B0(n213), .B1(n209), .Y(n85) );
  NAND2X1 U156 ( .A(a[1]), .B(n209), .Y(n210) );
  INVX3 U157 ( .A(a[5]), .Y(n206) );
  NAND2X2 U158 ( .A(n191), .B(n249), .Y(n227) );
  XOR2X1 U159 ( .A(b[3]), .B(n208), .Y(n213) );
  OR2X1 U160 ( .A(n213), .B(n190), .Y(n196) );
  INVX4 U161 ( .A(a[1]), .Y(n208) );
  ADDFX2 U162 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFX2 U163 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  CLKBUFX3 U164 ( .A(b[0]), .Y(n199) );
  INVX3 U165 ( .A(a[0]), .Y(n209) );
  XNOR2X4 U166 ( .A(a[4]), .B(a[3]), .Y(n191) );
  XNOR2X4 U167 ( .A(a[2]), .B(a[1]), .Y(n192) );
  NAND2XL U168 ( .A(n43), .B(n10), .Y(n193) );
  NAND2XL U169 ( .A(n44), .B(n10), .Y(n194) );
  NAND2X1 U170 ( .A(n44), .B(n43), .Y(n195) );
  OR2XL U171 ( .A(n214), .B(n209), .Y(n197) );
  NAND2X1 U172 ( .A(n196), .B(n197), .Y(n84) );
  XOR2X2 U173 ( .A(n189), .B(n208), .Y(n214) );
  ADDFHX2 U174 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  OAI22X2 U175 ( .A0(n218), .A1(n219), .B0(n192), .B1(n220), .Y(n78) );
  NAND2X6 U176 ( .A(n192), .B(n248), .Y(n219) );
  OAI22X1 U177 ( .A0(n220), .A1(n219), .B0(n192), .B1(n221), .Y(n77) );
  XOR2X1 U178 ( .A(b[1]), .B(n207), .Y(n220) );
  INVX8 U179 ( .A(a[3]), .Y(n207) );
  XOR2XL U180 ( .A(n207), .B(n199), .Y(n218) );
  OAI22XL U181 ( .A0(n214), .A1(n190), .B0(n215), .B1(n209), .Y(n83) );
  ADDFX2 U182 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFHX2 U183 ( .A(n17), .B(n203), .CI(n3), .CO(n2), .S(product[13]) );
  INVX1 U184 ( .A(n29), .Y(n201) );
  OAI22X1 U185 ( .A0(n226), .A1(n227), .B0(n191), .B1(n228), .Y(n70) );
  ADDHX1 U186 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  NOR2XL U187 ( .A(n209), .B(n204), .Y(product[0]) );
  INVX1 U188 ( .A(n21), .Y(n202) );
  OAI2BB1XL U189 ( .A0N(n209), .A1N(n190), .B0(n217), .Y(n245) );
  OA22XL U190 ( .A0(n224), .A1(n219), .B0(n192), .B1(n247), .Y(n246) );
  AO21XL U191 ( .A0(n219), .A1(n192), .B0(n225), .Y(n72) );
  XOR2XL U192 ( .A(n189), .B(n207), .Y(n223) );
  XOR2XL U193 ( .A(b[2]), .B(n206), .Y(n229) );
  XOR2XL U194 ( .A(b[3]), .B(n206), .Y(n230) );
  XOR2XL U195 ( .A(b[1]), .B(n205), .Y(n238) );
  XOR2XL U196 ( .A(n189), .B(n206), .Y(n231) );
  XOR2XL U197 ( .A(b[5]), .B(n207), .Y(n224) );
  XOR2XL U198 ( .A(b[6]), .B(n206), .Y(n233) );
  XOR2XL U199 ( .A(b[2]), .B(n205), .Y(n239) );
  XOR2XL U200 ( .A(b[5]), .B(n206), .Y(n232) );
  XOR2XL U201 ( .A(b[3]), .B(n205), .Y(n240) );
  XOR2XL U202 ( .A(n189), .B(n205), .Y(n241) );
  XOR2XL U203 ( .A(b[5]), .B(n205), .Y(n242) );
  XOR2XL U204 ( .A(b[6]), .B(n207), .Y(n247) );
  XOR2XL U205 ( .A(b[7]), .B(n207), .Y(n225) );
  XOR2XL U206 ( .A(b[7]), .B(n206), .Y(n234) );
  XOR2XL U207 ( .A(b[6]), .B(n205), .Y(n243) );
  XOR2XL U208 ( .A(b[7]), .B(n205), .Y(n244) );
  CLKINVX1 U209 ( .A(n1), .Y(product[15]) );
  CLKINVX1 U210 ( .A(n15), .Y(n203) );
  ADDFX2 U211 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFX2 U212 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  CLKINVX1 U213 ( .A(n199), .Y(n204) );
  CLKBUFX3 U214 ( .A(n235), .Y(n198) );
  XNOR2X1 U215 ( .A(a[6]), .B(a[5]), .Y(n235) );
  NAND2X2 U216 ( .A(n198), .B(n250), .Y(n237) );
  INVX3 U217 ( .A(a[7]), .Y(n205) );
  OAI22XL U218 ( .A0(n211), .A1(n190), .B0(n212), .B1(n209), .Y(n86) );
  OAI22XL U219 ( .A0(n215), .A1(n190), .B0(n216), .B1(n209), .Y(n82) );
  XOR2X1 U220 ( .A(b[5]), .B(n208), .Y(n215) );
  OAI2BB2XL U221 ( .B0(n216), .B1(n190), .A0N(n217), .A1N(a[0]), .Y(n81) );
  XOR2X1 U222 ( .A(b[6]), .B(n208), .Y(n216) );
  NOR2X1 U223 ( .A(n192), .B(n204), .Y(n79) );
  OAI22XL U224 ( .A0(n221), .A1(n219), .B0(n192), .B1(n222), .Y(n76) );
  XOR2X1 U225 ( .A(b[2]), .B(n207), .Y(n221) );
  OAI22XL U226 ( .A0(n222), .A1(n219), .B0(n192), .B1(n223), .Y(n75) );
  XOR2X1 U227 ( .A(b[3]), .B(n207), .Y(n222) );
  OAI22XL U228 ( .A0(n223), .A1(n219), .B0(n192), .B1(n224), .Y(n74) );
  NOR2X1 U229 ( .A(n191), .B(n204), .Y(n71) );
  XOR2X1 U230 ( .A(n206), .B(n199), .Y(n226) );
  OAI22XL U231 ( .A0(n228), .A1(n227), .B0(n191), .B1(n229), .Y(n69) );
  XOR2X1 U232 ( .A(b[1]), .B(n206), .Y(n228) );
  OAI22XL U233 ( .A0(n229), .A1(n227), .B0(n191), .B1(n230), .Y(n68) );
  OAI22XL U234 ( .A0(n230), .A1(n227), .B0(n191), .B1(n231), .Y(n67) );
  OAI22XL U235 ( .A0(n231), .A1(n227), .B0(n191), .B1(n232), .Y(n66) );
  OAI22XL U236 ( .A0(n232), .A1(n227), .B0(n191), .B1(n233), .Y(n65) );
  AO21X1 U237 ( .A0(n227), .A1(n191), .B0(n234), .Y(n64) );
  NOR2X1 U238 ( .A(n198), .B(n204), .Y(n63) );
  OAI22XL U239 ( .A0(n236), .A1(n237), .B0(n198), .B1(n238), .Y(n62) );
  XOR2X1 U240 ( .A(n205), .B(n199), .Y(n236) );
  OAI22XL U241 ( .A0(n238), .A1(n237), .B0(n198), .B1(n239), .Y(n61) );
  OAI22XL U242 ( .A0(n239), .A1(n237), .B0(n198), .B1(n240), .Y(n60) );
  OAI22XL U243 ( .A0(n240), .A1(n237), .B0(n198), .B1(n241), .Y(n59) );
  OAI22XL U244 ( .A0(n241), .A1(n237), .B0(n198), .B1(n242), .Y(n58) );
  OAI22XL U245 ( .A0(n242), .A1(n237), .B0(n198), .B1(n243), .Y(n57) );
  AO21X1 U246 ( .A0(n237), .A1(n198), .B0(n244), .Y(n56) );
  OAI21XL U247 ( .A0(n199), .A1(n208), .B0(n190), .Y(n55) );
  OAI32X1 U248 ( .A0(n207), .A1(n199), .A2(n192), .B0(n207), .B1(n219), .Y(n54) );
  OAI32X1 U249 ( .A0(n206), .A1(n199), .A2(n191), .B0(n206), .B1(n227), .Y(n53) );
  OAI32X1 U250 ( .A0(n205), .A1(n199), .A2(n198), .B0(n205), .B1(n237), .Y(n52) );
  XOR2X1 U251 ( .A(n245), .B(n246), .Y(n35) );
  NAND2BX1 U252 ( .AN(n245), .B(n246), .Y(n34) );
  XOR2X1 U253 ( .A(b[7]), .B(a[1]), .Y(n217) );
  OAI22XL U254 ( .A0(n192), .A1(n225), .B0(n247), .B1(n219), .Y(n29) );
  XOR2X1 U255 ( .A(a[3]), .B(a[2]), .Y(n248) );
  OAI22XL U256 ( .A0(n191), .A1(n234), .B0(n233), .B1(n227), .Y(n21) );
  XOR2X1 U257 ( .A(a[5]), .B(a[4]), .Y(n249) );
  OAI22XL U258 ( .A0(n198), .A1(n244), .B0(n243), .B1(n237), .Y(n15) );
  XOR2X1 U259 ( .A(a[7]), .B(a[6]), .Y(n250) );
endmodule


module CONV_DW01_add_7 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFHX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFHX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
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
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CMPR32X2 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_15 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n22, n24, n25, n26, n27, n30, n31, n34, n35, n36, n38,
         n40, n46, n52, n58, n59, n60, n61, n62, n64, n66, n67, n68, n69, n70,
         n72, n74, n75, n76, n77, n79, n81, n84, n86, n87, n88, n90, n92, n93,
         n94, n95, n98, n99, n100, n105, n107, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186;

  XNOR2X4 U6 ( .A(n2), .B(n25), .Y(SUM[15]) );
  OR2X2 U133 ( .A(A[8]), .B(B[8]), .Y(n184) );
  XNOR2X2 U134 ( .A(n7), .B(n173), .Y(SUM[10]) );
  OAI21X2 U135 ( .A0(n60), .A1(n62), .B0(n61), .Y(n59) );
  AOI21X4 U136 ( .A0(n178), .A1(n67), .B0(n64), .Y(n62) );
  XNOR2X2 U137 ( .A(n11), .B(n67), .Y(SUM[6]) );
  XOR2X4 U138 ( .A(n4), .B(n171), .Y(SUM[13]) );
  NAND2X2 U139 ( .A(A[6]), .B(B[6]), .Y(n66) );
  OR2X2 U140 ( .A(A[6]), .B(B[6]), .Y(n178) );
  AOI21X4 U141 ( .A0(n179), .A1(n25), .B0(n22), .Y(n20) );
  OR2X2 U142 ( .A(A[3]), .B(B[3]), .Y(n185) );
  XNOR2X2 U143 ( .A(n9), .B(n59), .Y(SUM[8]) );
  NOR2X1 U144 ( .A(A[7]), .B(B[7]), .Y(n60) );
  NAND2X1 U145 ( .A(A[8]), .B(B[8]), .Y(n58) );
  NAND2X1 U146 ( .A(A[11]), .B(B[11]), .Y(n40) );
  OAI21X1 U147 ( .A0(n76), .A1(n88), .B0(n77), .Y(n75) );
  AOI21X1 U148 ( .A0(n185), .A1(n84), .B0(n79), .Y(n77) );
  XNOR2X1 U149 ( .A(n8), .B(n180), .Y(SUM[9]) );
  NAND2X1 U150 ( .A(n176), .B(n52), .Y(n8) );
  XOR2X2 U151 ( .A(n5), .B(n36), .Y(SUM[12]) );
  NAND2X1 U152 ( .A(B[0]), .B(A[0]), .Y(n95) );
  NAND2X4 U153 ( .A(n182), .B(n19), .Y(n1) );
  NAND2X1 U154 ( .A(A[7]), .B(B[7]), .Y(n61) );
  OAI21X4 U155 ( .A0(n26), .A1(n172), .B0(n27), .Y(n25) );
  NAND2X2 U156 ( .A(A[14]), .B(B[14]), .Y(n27) );
  INVX3 U157 ( .A(n24), .Y(n22) );
  NAND2X2 U158 ( .A(n179), .B(n24), .Y(n2) );
  NAND2X2 U159 ( .A(A[15]), .B(B[15]), .Y(n24) );
  XOR2X4 U160 ( .A(n3), .B(n172), .Y(SUM[14]) );
  OA21X4 U161 ( .A0(n30), .A1(n171), .B0(n31), .Y(n172) );
  OR2X4 U162 ( .A(A[15]), .B(B[15]), .Y(n179) );
  NAND2X4 U163 ( .A(A[13]), .B(B[13]), .Y(n31) );
  NAND2X1 U164 ( .A(A[10]), .B(B[10]), .Y(n46) );
  NAND2X1 U165 ( .A(A[3]), .B(B[3]), .Y(n81) );
  NAND2X1 U166 ( .A(n100), .B(n35), .Y(n5) );
  INVXL U167 ( .A(n34), .Y(n100) );
  OA21X4 U168 ( .A0(n34), .A1(n36), .B0(n35), .Y(n171) );
  AOI21X4 U169 ( .A0(n181), .A1(n174), .B0(n38), .Y(n36) );
  OR2X2 U170 ( .A(A[11]), .B(B[11]), .Y(n181) );
  OR2XL U171 ( .A(A[1]), .B(B[1]), .Y(n183) );
  OAI21X1 U172 ( .A0(n68), .A1(n70), .B0(n69), .Y(n67) );
  INVXL U173 ( .A(n68), .Y(n107) );
  NAND2XL U174 ( .A(n107), .B(n69), .Y(n12) );
  OAI2BB1X4 U175 ( .A0N(n184), .A1N(n59), .B0(n58), .Y(n180) );
  INVX3 U176 ( .A(n86), .Y(n84) );
  OR2X4 U177 ( .A(B[16]), .B(A[16]), .Y(n182) );
  AO21XL U178 ( .A0(n186), .A1(n87), .B0(n84), .Y(n170) );
  XNOR2X1 U179 ( .A(n14), .B(n170), .Y(SUM[3]) );
  NOR2X4 U180 ( .A(A[14]), .B(B[14]), .Y(n26) );
  NAND2XL U181 ( .A(A[1]), .B(B[1]), .Y(n92) );
  NAND2XL U182 ( .A(n178), .B(n66), .Y(n11) );
  NAND2XL U183 ( .A(n177), .B(n74), .Y(n13) );
  NAND2XL U184 ( .A(n175), .B(n46), .Y(n7) );
  NOR2X4 U185 ( .A(A[13]), .B(B[13]), .Y(n30) );
  NAND2X2 U186 ( .A(B[16]), .B(A[16]), .Y(n19) );
  AOI21X2 U187 ( .A0(n183), .A1(n93), .B0(n90), .Y(n88) );
  OR2X2 U188 ( .A(A[2]), .B(B[2]), .Y(n186) );
  NAND2BXL U189 ( .AN(n94), .B(n95), .Y(n17) );
  NOR2XL U190 ( .A(B[0]), .B(A[0]), .Y(n94) );
  XNOR2X1 U191 ( .A(n6), .B(n174), .Y(SUM[11]) );
  NAND2X1 U192 ( .A(n181), .B(n40), .Y(n6) );
  AOI21X1 U193 ( .A0(n177), .A1(n75), .B0(n72), .Y(n70) );
  CLKINVX1 U194 ( .A(n74), .Y(n72) );
  CLKINVX1 U195 ( .A(n66), .Y(n64) );
  CLKINVX1 U196 ( .A(n40), .Y(n38) );
  NAND2X1 U197 ( .A(n99), .B(n31), .Y(n4) );
  CLKINVX1 U198 ( .A(n30), .Y(n99) );
  XOR2X1 U199 ( .A(n12), .B(n70), .Y(SUM[5]) );
  CLKINVX1 U200 ( .A(n88), .Y(n87) );
  OAI2BB1X1 U201 ( .A0N(n176), .A1N(n180), .B0(n52), .Y(n173) );
  OAI2BB1X2 U202 ( .A0N(n175), .A1N(n173), .B0(n46), .Y(n174) );
  XNOR2X1 U203 ( .A(n13), .B(n75), .Y(SUM[4]) );
  NAND2X1 U204 ( .A(n184), .B(n58), .Y(n9) );
  NAND2X1 U205 ( .A(n98), .B(n27), .Y(n3) );
  CLKINVX1 U206 ( .A(n26), .Y(n98) );
  CLKINVX1 U207 ( .A(n92), .Y(n90) );
  NOR2X4 U208 ( .A(A[12]), .B(B[12]), .Y(n34) );
  NOR2X1 U209 ( .A(A[5]), .B(B[5]), .Y(n68) );
  NAND2X2 U210 ( .A(A[12]), .B(B[12]), .Y(n35) );
  NAND2X1 U211 ( .A(A[5]), .B(B[5]), .Y(n69) );
  XOR2X1 U212 ( .A(n10), .B(n62), .Y(SUM[7]) );
  NAND2X1 U213 ( .A(n105), .B(n61), .Y(n10) );
  CLKINVX1 U214 ( .A(n60), .Y(n105) );
  NAND2X1 U215 ( .A(n185), .B(n81), .Y(n14) );
  OR2X4 U216 ( .A(A[10]), .B(B[10]), .Y(n175) );
  OR2X2 U217 ( .A(A[9]), .B(B[9]), .Y(n176) );
  OR2X1 U218 ( .A(A[4]), .B(B[4]), .Y(n177) );
  NAND2X2 U219 ( .A(A[9]), .B(B[9]), .Y(n52) );
  XNOR2X1 U220 ( .A(n15), .B(n87), .Y(SUM[2]) );
  NAND2X1 U221 ( .A(n186), .B(n86), .Y(n15) );
  XNOR2X1 U222 ( .A(n16), .B(n93), .Y(SUM[1]) );
  NAND2X1 U223 ( .A(n183), .B(n92), .Y(n16) );
  NAND2X1 U224 ( .A(n185), .B(n186), .Y(n76) );
  CLKINVX1 U225 ( .A(n81), .Y(n79) );
  NAND2X1 U226 ( .A(A[4]), .B(B[4]), .Y(n74) );
  CLKINVX1 U227 ( .A(n95), .Y(n93) );
  NAND2X1 U228 ( .A(A[2]), .B(B[2]), .Y(n86) );
  CLKINVX1 U229 ( .A(n17), .Y(SUM[0]) );
  XOR2X4 U230 ( .A(n20), .B(n1), .Y(SUM[16]) );
endmodule


module CONV_DW01_add_14 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n22, n24, n25, n26, n27, n28, n32, n38, n44, n45, n46, n47,
         n50, n51, n52, n54, n56, n57, n58, n59, n60, n62, n64, n65, n66, n67,
         n68, n70, n72, n73, n74, n75, n77, n79, n82, n84, n85, n86, n88, n90,
         n91, n93, n96, n100, n101, n103, n105, n168, n169, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188;

  BUFX8 U131 ( .A(B[10]), .Y(n168) );
  BUFX8 U132 ( .A(A[10]), .Y(n169) );
  NOR2X2 U133 ( .A(n169), .B(n168), .Y(n46) );
  OA21X4 U134 ( .A0(n50), .A1(n52), .B0(n51), .Y(n173) );
  AOI21X2 U135 ( .A0(n184), .A1(n57), .B0(n54), .Y(n52) );
  NAND2X2 U136 ( .A(A[7]), .B(B[7]), .Y(n59) );
  OR2X2 U137 ( .A(B[1]), .B(A[1]), .Y(n186) );
  OR2X4 U138 ( .A(A[6]), .B(B[6]), .Y(n176) );
  OAI21X4 U139 ( .A0(n58), .A1(n60), .B0(n59), .Y(n57) );
  NOR2X2 U140 ( .A(A[7]), .B(B[7]), .Y(n58) );
  NAND2X2 U141 ( .A(A[6]), .B(B[6]), .Y(n64) );
  OR2X2 U142 ( .A(A[4]), .B(B[4]), .Y(n182) );
  XOR2X2 U143 ( .A(n7), .B(n173), .Y(SUM[10]) );
  XNOR2X4 U144 ( .A(n6), .B(n45), .Y(SUM[11]) );
  OAI2BB1X4 U145 ( .A0N(n178), .A1N(n45), .B0(n44), .Y(n174) );
  OAI21X2 U146 ( .A0(n46), .A1(n173), .B0(n47), .Y(n45) );
  OAI21X2 U147 ( .A0(n66), .A1(n68), .B0(n67), .Y(n65) );
  OR2X1 U148 ( .A(A[11]), .B(B[11]), .Y(n178) );
  NAND2X1 U149 ( .A(A[11]), .B(B[11]), .Y(n44) );
  NAND2X1 U150 ( .A(A[12]), .B(B[12]), .Y(n38) );
  XOR2X2 U151 ( .A(n3), .B(n28), .Y(SUM[14]) );
  NAND2X1 U152 ( .A(A[16]), .B(B[16]), .Y(n19) );
  AOI21X2 U153 ( .A0(n176), .A1(n65), .B0(n62), .Y(n60) );
  NAND2X1 U154 ( .A(A[13]), .B(B[13]), .Y(n32) );
  AND2X2 U155 ( .A(n187), .B(n93), .Y(SUM[0]) );
  INVX3 U156 ( .A(n24), .Y(n22) );
  NAND2X2 U157 ( .A(A[15]), .B(B[15]), .Y(n24) );
  OR2X4 U158 ( .A(A[12]), .B(B[12]), .Y(n180) );
  NAND2X2 U159 ( .A(n96), .B(n27), .Y(n3) );
  AND2X8 U160 ( .A(n171), .B(n32), .Y(n28) );
  NAND2X6 U161 ( .A(n179), .B(n175), .Y(n171) );
  NAND2XL U162 ( .A(n179), .B(n32), .Y(n4) );
  AOI21X4 U163 ( .A0(n177), .A1(n25), .B0(n22), .Y(n20) );
  OAI2BB1X4 U164 ( .A0N(n180), .A1N(n174), .B0(n38), .Y(n175) );
  OR2X6 U165 ( .A(A[8]), .B(B[8]), .Y(n184) );
  NAND2X6 U166 ( .A(A[14]), .B(B[14]), .Y(n27) );
  NAND2X1 U167 ( .A(n177), .B(n24), .Y(n2) );
  OR2X2 U168 ( .A(A[13]), .B(B[13]), .Y(n179) );
  OAI21X4 U169 ( .A0(n26), .A1(n28), .B0(n27), .Y(n25) );
  OR2X2 U170 ( .A(A[16]), .B(B[16]), .Y(n181) );
  NOR2X2 U171 ( .A(A[14]), .B(B[14]), .Y(n26) );
  XNOR2X4 U172 ( .A(n188), .B(n20), .Y(SUM[16]) );
  AOI21X4 U173 ( .A0(n182), .A1(n73), .B0(n70), .Y(n68) );
  OAI21X4 U174 ( .A0(n74), .A1(n86), .B0(n75), .Y(n73) );
  NAND2X2 U175 ( .A(A[4]), .B(B[4]), .Y(n72) );
  NAND2X2 U176 ( .A(B[1]), .B(A[1]), .Y(n90) );
  NAND2X2 U177 ( .A(A[8]), .B(B[8]), .Y(n56) );
  OR2X4 U178 ( .A(A[15]), .B(B[15]), .Y(n177) );
  NAND2X1 U179 ( .A(n183), .B(n185), .Y(n74) );
  AND2X2 U180 ( .A(n181), .B(n19), .Y(n188) );
  INVXL U181 ( .A(n66), .Y(n105) );
  AOI21X2 U182 ( .A0(n183), .A1(n82), .B0(n77), .Y(n75) );
  INVX3 U183 ( .A(n79), .Y(n77) );
  AOI21X2 U184 ( .A0(n186), .A1(n91), .B0(n88), .Y(n86) );
  NAND2XL U185 ( .A(n183), .B(n79), .Y(n14) );
  OR2X2 U186 ( .A(A[3]), .B(B[3]), .Y(n183) );
  NAND2X2 U187 ( .A(B[2]), .B(A[2]), .Y(n84) );
  NAND2X2 U188 ( .A(B[0]), .B(A[0]), .Y(n93) );
  OR2XL U189 ( .A(B[0]), .B(A[0]), .Y(n187) );
  NAND2XL U190 ( .A(n186), .B(n90), .Y(n16) );
  XNOR2XL U191 ( .A(n16), .B(n91), .Y(SUM[1]) );
  NAND2XL U192 ( .A(n185), .B(n84), .Y(n15) );
  XNOR2X1 U193 ( .A(n14), .B(n172), .Y(SUM[3]) );
  AO21XL U194 ( .A0(n185), .A1(n85), .B0(n82), .Y(n172) );
  NAND2XL U195 ( .A(n182), .B(n72), .Y(n13) );
  XNOR2XL U196 ( .A(n13), .B(n73), .Y(SUM[4]) );
  NAND2XL U197 ( .A(n105), .B(n67), .Y(n12) );
  XOR2XL U198 ( .A(n12), .B(n68), .Y(SUM[5]) );
  XNOR2XL U199 ( .A(n5), .B(n174), .Y(SUM[12]) );
  XNOR2XL U200 ( .A(n9), .B(n57), .Y(SUM[8]) );
  NAND2XL U201 ( .A(n184), .B(n56), .Y(n9) );
  XNOR2XL U202 ( .A(n11), .B(n65), .Y(SUM[6]) );
  NAND2XL U203 ( .A(n176), .B(n64), .Y(n11) );
  CLKINVX1 U204 ( .A(n64), .Y(n62) );
  CLKINVX1 U205 ( .A(n72), .Y(n70) );
  CLKINVX1 U206 ( .A(n86), .Y(n85) );
  CLKINVX1 U207 ( .A(n56), .Y(n54) );
  NOR2X1 U208 ( .A(A[9]), .B(B[9]), .Y(n50) );
  NAND2X1 U209 ( .A(n169), .B(n168), .Y(n47) );
  NAND2X1 U210 ( .A(A[9]), .B(B[9]), .Y(n51) );
  NOR2X1 U211 ( .A(A[5]), .B(B[5]), .Y(n66) );
  NAND2X1 U212 ( .A(A[5]), .B(B[5]), .Y(n67) );
  CLKINVX1 U213 ( .A(n90), .Y(n88) );
  CLKINVX1 U214 ( .A(n84), .Y(n82) );
  OR2X1 U215 ( .A(B[2]), .B(A[2]), .Y(n185) );
  NAND2X1 U216 ( .A(A[3]), .B(B[3]), .Y(n79) );
  CLKINVX1 U217 ( .A(n93), .Y(n91) );
  XNOR2X1 U218 ( .A(n15), .B(n85), .Y(SUM[2]) );
  XNOR2X1 U219 ( .A(n4), .B(n175), .Y(SUM[13]) );
  CLKINVX1 U220 ( .A(n26), .Y(n96) );
  NAND2X1 U221 ( .A(n178), .B(n44), .Y(n6) );
  XOR2X1 U222 ( .A(n8), .B(n52), .Y(SUM[9]) );
  NAND2X1 U223 ( .A(n101), .B(n51), .Y(n8) );
  CLKINVX1 U224 ( .A(n50), .Y(n101) );
  NAND2X1 U225 ( .A(n100), .B(n47), .Y(n7) );
  CLKINVX1 U226 ( .A(n46), .Y(n100) );
  XOR2X1 U227 ( .A(n10), .B(n60), .Y(SUM[7]) );
  NAND2X1 U228 ( .A(n103), .B(n59), .Y(n10) );
  CLKINVX1 U229 ( .A(n58), .Y(n103) );
  NAND2XL U230 ( .A(n180), .B(n38), .Y(n5) );
  XNOR2X1 U231 ( .A(n2), .B(n25), .Y(SUM[15]) );
endmodule


module CONV_DW01_add_16 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n21, n22, n23, n24, n25, n27, n29, n35, n41, n42, n43, n44, n47,
         n48, n51, n52, n53, n57, n58, n59, n60, n61, n63, n65, n66, n67, n68,
         n69, n71, n73, n74, n75, n76, n77, n79, n81, n82, n83, n84, n86, n90,
         n91, n92, n94, n96, n98, n101, n102, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174;

  NAND2X2 U123 ( .A(A[0]), .B(B[0]), .Y(n84) );
  BUFX3 U124 ( .A(A[1]), .Y(n158) );
  XOR2X4 U125 ( .A(n10), .B(n61), .Y(SUM[6]) );
  NOR2X6 U126 ( .A(A[10]), .B(B[10]), .Y(n43) );
  OA21X4 U127 ( .A0(n51), .A1(n53), .B0(n52), .Y(n170) );
  NAND2X1 U128 ( .A(A[8]), .B(B[8]), .Y(n52) );
  NAND2X2 U129 ( .A(A[9]), .B(B[9]), .Y(n48) );
  NAND2X2 U130 ( .A(n90), .B(n44), .Y(n6) );
  OAI21X4 U131 ( .A0(n43), .A1(n163), .B0(n44), .Y(n42) );
  NAND2X1 U132 ( .A(A[10]), .B(B[10]), .Y(n44) );
  XOR2X4 U133 ( .A(n6), .B(n163), .Y(SUM[10]) );
  OA21X2 U134 ( .A0(n47), .A1(n170), .B0(n48), .Y(n163) );
  XNOR2X4 U135 ( .A(n9), .B(n58), .Y(SUM[7]) );
  OAI2BB1X2 U136 ( .A0N(n172), .A1N(n58), .B0(n57), .Y(n162) );
  OAI21X2 U137 ( .A0(n59), .A1(n61), .B0(n60), .Y(n58) );
  AOI21X1 U138 ( .A0(n22), .A1(n169), .B0(n19), .Y(SUM[16]) );
  CLKINVX1 U139 ( .A(n65), .Y(n63) );
  NOR2X1 U140 ( .A(A[6]), .B(B[6]), .Y(n59) );
  NAND2X1 U141 ( .A(A[7]), .B(B[7]), .Y(n57) );
  CLKINVX1 U142 ( .A(n162), .Y(n53) );
  OR2X1 U143 ( .A(A[11]), .B(B[11]), .Y(n168) );
  NOR2X2 U144 ( .A(A[14]), .B(B[14]), .Y(n23) );
  NAND2X1 U145 ( .A(A[14]), .B(B[14]), .Y(n24) );
  NOR2X1 U146 ( .A(n159), .B(n160), .Y(n161) );
  CLKINVX1 U147 ( .A(n29), .Y(n27) );
  CLKINVX1 U148 ( .A(n165), .Y(n160) );
  CLKINVX1 U149 ( .A(n81), .Y(n79) );
  OAI21X1 U150 ( .A0(n67), .A1(n69), .B0(n68), .Y(n66) );
  OR2X1 U151 ( .A(n102), .B(n101), .Y(n169) );
  NAND2X1 U152 ( .A(n96), .B(n68), .Y(n12) );
  CLKINVX1 U153 ( .A(n67), .Y(n96) );
  XNOR2X4 U154 ( .A(n22), .B(n1), .Y(SUM[15]) );
  OAI21X2 U155 ( .A0(n23), .A1(n25), .B0(n24), .Y(n22) );
  NAND2XL U156 ( .A(A[6]), .B(B[6]), .Y(n60) );
  NOR2X2 U157 ( .A(n161), .B(n27), .Y(n25) );
  INVX2 U158 ( .A(n167), .Y(n159) );
  OR2X4 U159 ( .A(A[13]), .B(B[13]), .Y(n167) );
  OAI2BB1X4 U160 ( .A0N(n171), .A1N(n164), .B0(n35), .Y(n165) );
  XOR2X4 U161 ( .A(n2), .B(n25), .Y(SUM[14]) );
  XNOR2X4 U162 ( .A(n3), .B(n165), .Y(SUM[13]) );
  NAND2X4 U163 ( .A(n86), .B(n24), .Y(n2) );
  NAND2X1 U164 ( .A(n167), .B(n29), .Y(n3) );
  INVXL U165 ( .A(n59), .Y(n94) );
  NAND2X1 U166 ( .A(n94), .B(n60), .Y(n10) );
  INVX3 U167 ( .A(n43), .Y(n90) );
  OAI2BB1X4 U168 ( .A0N(n168), .A1N(n42), .B0(n41), .Y(n164) );
  OAI21X1 U169 ( .A0(n75), .A1(n77), .B0(n76), .Y(n74) );
  NOR2X1 U170 ( .A(A[9]), .B(B[9]), .Y(n47) );
  NAND2X1 U171 ( .A(n102), .B(n101), .Y(n21) );
  NAND2X1 U172 ( .A(A[12]), .B(B[12]), .Y(n35) );
  NOR2X1 U173 ( .A(A[8]), .B(B[8]), .Y(n51) );
  NAND2BXL U174 ( .AN(n83), .B(n84), .Y(n16) );
  NOR2XL U175 ( .A(A[0]), .B(B[0]), .Y(n83) );
  OR2X4 U176 ( .A(A[12]), .B(B[12]), .Y(n171) );
  CLKINVX3 U177 ( .A(n84), .Y(n82) );
  NAND2XL U178 ( .A(n173), .B(n81), .Y(n15) );
  XNOR2X1 U179 ( .A(n11), .B(n66), .Y(SUM[5]) );
  NAND2X1 U180 ( .A(n166), .B(n65), .Y(n11) );
  XNOR2X1 U181 ( .A(n5), .B(n42), .Y(SUM[11]) );
  NAND2X1 U182 ( .A(n168), .B(n41), .Y(n5) );
  XNOR2X1 U183 ( .A(n4), .B(n164), .Y(SUM[12]) );
  NAND2X1 U184 ( .A(n171), .B(n35), .Y(n4) );
  NAND2X1 U185 ( .A(n169), .B(n21), .Y(n1) );
  CLKINVX1 U186 ( .A(n21), .Y(n19) );
  AOI21X1 U187 ( .A0(n166), .A1(n66), .B0(n63), .Y(n61) );
  XOR2X1 U188 ( .A(n7), .B(n170), .Y(SUM[9]) );
  NAND2X1 U189 ( .A(n91), .B(n48), .Y(n7) );
  CLKINVX1 U190 ( .A(n47), .Y(n91) );
  XOR2X1 U191 ( .A(n12), .B(n69), .Y(SUM[4]) );
  NAND2X1 U192 ( .A(n172), .B(n57), .Y(n9) );
  XNOR2X1 U193 ( .A(n15), .B(n82), .Y(SUM[1]) );
  NAND2X1 U194 ( .A(A[13]), .B(B[13]), .Y(n29) );
  NAND2X1 U195 ( .A(A[5]), .B(B[5]), .Y(n65) );
  NOR2X1 U196 ( .A(A[4]), .B(B[4]), .Y(n67) );
  NAND2X1 U197 ( .A(A[11]), .B(B[11]), .Y(n41) );
  XOR2X1 U198 ( .A(n8), .B(n53), .Y(SUM[8]) );
  NAND2X1 U199 ( .A(n92), .B(n52), .Y(n8) );
  CLKINVX1 U200 ( .A(n51), .Y(n92) );
  OR2X1 U201 ( .A(A[5]), .B(B[5]), .Y(n166) );
  XNOR2X1 U202 ( .A(n13), .B(n74), .Y(SUM[3]) );
  NAND2X1 U203 ( .A(n174), .B(n73), .Y(n13) );
  NAND2X1 U204 ( .A(A[4]), .B(B[4]), .Y(n68) );
  AOI21X1 U205 ( .A0(n174), .A1(n74), .B0(n71), .Y(n69) );
  CLKINVX1 U206 ( .A(n73), .Y(n71) );
  AOI21X1 U207 ( .A0(n173), .A1(n82), .B0(n79), .Y(n77) );
  XOR2X1 U208 ( .A(n14), .B(n77), .Y(SUM[2]) );
  NAND2X1 U209 ( .A(n98), .B(n76), .Y(n14) );
  CLKINVX1 U210 ( .A(n75), .Y(n98) );
  NAND2X1 U211 ( .A(n158), .B(B[1]), .Y(n81) );
  CLKINVX1 U212 ( .A(A[16]), .Y(n102) );
  OR2X1 U213 ( .A(A[7]), .B(B[7]), .Y(n172) );
  NAND2X1 U214 ( .A(A[3]), .B(B[3]), .Y(n73) );
  NOR2X1 U215 ( .A(A[2]), .B(B[2]), .Y(n75) );
  OR2X1 U216 ( .A(n158), .B(B[1]), .Y(n173) );
  NAND2X1 U217 ( .A(A[2]), .B(B[2]), .Y(n76) );
  CLKINVX1 U218 ( .A(B[16]), .Y(n101) );
  OR2X1 U219 ( .A(A[3]), .B(B[3]), .Y(n174) );
  CLKINVX1 U220 ( .A(n16), .Y(SUM[0]) );
  CLKINVX1 U221 ( .A(n23), .Y(n86) );
endmodule


module CONV_DW_mult_tc_17 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n228, n229,
         n230, n231, n232, n233, n234, n235, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281;
  assign product[15] = n15;

  NAND2BX1 U230 ( .AN(n75), .B(n76), .Y(n14) );
  BUFX6 U231 ( .A(n228), .Y(n212) );
  OAI22X1 U232 ( .A0(n213), .A1(n180), .B0(n179), .B1(n217), .Y(n145) );
  XNOR2X1 U233 ( .A(b[6]), .B(n226), .Y(n183) );
  BUFX16 U234 ( .A(a[3]), .Y(n226) );
  OAI22X1 U235 ( .A0(n212), .A1(n170), .B0(n169), .B1(n216), .Y(n135) );
  CLKBUFX8 U236 ( .A(b[0]), .Y(n207) );
  XNOR2X1 U237 ( .A(b[7]), .B(n280), .Y(n191) );
  OAI21X1 U238 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  AOI21X2 U239 ( .A0(n70), .A1(n74), .B0(n71), .Y(n69) );
  BUFX4 U240 ( .A(n235), .Y(n219) );
  BUFX8 U241 ( .A(n231), .Y(n215) );
  XNOR2X4 U242 ( .A(n13), .B(n74), .Y(product[2]) );
  OAI22X1 U243 ( .A0(n214), .A1(n183), .B0(n182), .B1(n218), .Y(n148) );
  CMPR42X2 U244 ( .A(n136), .B(n150), .C(n157), .D(n116), .ICI(n117), .S(n114), 
        .ICO(n112), .CO(n113) );
  ADDHX1 U245 ( .A(n128), .B(n143), .CO(n115), .S(n116) );
  OAI21X1 U246 ( .A0(n57), .A1(n55), .B0(n56), .Y(n54) );
  ADDHX1 U247 ( .A(n129), .B(n159), .CO(n122), .S(n123) );
  OAI22X1 U248 ( .A0(n214), .A1(n222), .B0(n218), .B1(n190), .Y(n130) );
  NAND2X2 U249 ( .A(n127), .B(n161), .Y(n68) );
  XNOR2X1 U250 ( .A(b[4]), .B(n280), .Y(n194) );
  ADDFXL U251 ( .A(n139), .B(n98), .CI(n99), .CO(n95), .S(n96) );
  XNOR2X1 U252 ( .A(b[1]), .B(n226), .Y(n188) );
  ADDFX2 U253 ( .A(n152), .B(n145), .CI(n123), .CO(n120), .S(n121) );
  OAI22XL U254 ( .A0(n214), .A1(n187), .B0(n186), .B1(n218), .Y(n152) );
  OAI22X1 U255 ( .A0(n214), .A1(n186), .B0(n185), .B1(n218), .Y(n151) );
  CLKINVX1 U256 ( .A(n47), .Y(n45) );
  CLKBUFX3 U257 ( .A(n232), .Y(n216) );
  OAI21X1 U258 ( .A0(n31), .A1(n29), .B0(n30), .Y(n28) );
  NAND2X2 U259 ( .A(n267), .B(n268), .Y(n162) );
  OR2X1 U260 ( .A(n196), .B(n219), .Y(n268) );
  OR2X1 U261 ( .A(n215), .B(n197), .Y(n267) );
  OR2X1 U262 ( .A(n273), .B(n274), .Y(n161) );
  NOR2X1 U263 ( .A(n163), .B(n131), .Y(n75) );
  NAND2X1 U264 ( .A(n162), .B(n155), .Y(n73) );
  AOI21X1 U265 ( .A0(n66), .A1(n62), .B0(n63), .Y(n61) );
  CLKINVX1 U266 ( .A(n64), .Y(n62) );
  CLKINVX1 U267 ( .A(n18), .Y(n16) );
  NAND2X1 U268 ( .A(n210), .B(n234), .Y(n230) );
  BUFX4 U269 ( .A(n234), .Y(n218) );
  XNOR2X2 U270 ( .A(a[1]), .B(a[2]), .Y(n234) );
  OR2XL U271 ( .A(n214), .B(n188), .Y(n265) );
  OR2X1 U272 ( .A(n187), .B(n218), .Y(n266) );
  NAND2X2 U273 ( .A(n265), .B(n266), .Y(n153) );
  BUFX12 U274 ( .A(n230), .Y(n214) );
  XNOR2X1 U275 ( .A(b[1]), .B(n280), .Y(n197) );
  XNOR2X1 U276 ( .A(b[2]), .B(n280), .Y(n196) );
  NOR2X2 U277 ( .A(n162), .B(n155), .Y(n72) );
  NOR2X1 U278 ( .A(n213), .B(n178), .Y(n269) );
  NOR2XL U279 ( .A(n177), .B(n217), .Y(n270) );
  OR2X2 U280 ( .A(n269), .B(n270), .Y(n143) );
  BUFX12 U281 ( .A(n233), .Y(n217) );
  OR2XL U282 ( .A(n213), .B(n221), .Y(n271) );
  OR2XL U283 ( .A(n217), .B(n181), .Y(n272) );
  NAND2X2 U284 ( .A(n271), .B(n272), .Y(n129) );
  INVXL U285 ( .A(n225), .Y(n221) );
  NAND2BXL U286 ( .AN(n207), .B(n225), .Y(n181) );
  NOR2XL U287 ( .A(n215), .B(n196), .Y(n273) );
  NOR2XL U288 ( .A(n195), .B(n219), .Y(n274) );
  NOR2X4 U289 ( .A(n127), .B(n161), .Y(n67) );
  NAND2XL U290 ( .A(b[3]), .B(n226), .Y(n276) );
  NAND2X2 U291 ( .A(n275), .B(n222), .Y(n277) );
  NAND2X2 U292 ( .A(n276), .B(n277), .Y(n186) );
  INVXL U293 ( .A(b[3]), .Y(n275) );
  OR2X4 U294 ( .A(n215), .B(n198), .Y(n278) );
  OR2X6 U295 ( .A(n197), .B(n219), .Y(n279) );
  NAND2X6 U296 ( .A(n278), .B(n279), .Y(n163) );
  NAND2X4 U297 ( .A(n163), .B(n131), .Y(n76) );
  OAI22X1 U298 ( .A0(n215), .A1(n193), .B0(n192), .B1(n219), .Y(n158) );
  OAI22X1 U299 ( .A0(n213), .A1(n179), .B0(n178), .B1(n217), .Y(n144) );
  XNOR2X1 U300 ( .A(b[1]), .B(n225), .Y(n179) );
  ADDHX2 U301 ( .A(n130), .B(n154), .CO(n126), .S(n127) );
  BUFX12 U302 ( .A(a[1]), .Y(n280) );
  XNOR2X2 U303 ( .A(b[4]), .B(n226), .Y(n185) );
  OAI22X2 U304 ( .A0(n215), .A1(n223), .B0(n199), .B1(n219), .Y(n131) );
  ADDFHX2 U305 ( .A(n146), .B(n153), .CI(n160), .CO(n124), .S(n125) );
  OAI22X1 U306 ( .A0(n214), .A1(n189), .B0(n188), .B1(n218), .Y(n154) );
  XNOR2X2 U307 ( .A(b[2]), .B(n225), .Y(n178) );
  CLKBUFX4 U308 ( .A(a[5]), .Y(n225) );
  OAI21X1 U309 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  OAI21X2 U310 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  XOR2X1 U311 ( .A(a[3]), .B(a[2]), .Y(n210) );
  XNOR2X1 U312 ( .A(n28), .B(n3), .Y(product[12]) );
  NAND2BX1 U313 ( .AN(n59), .B(n60), .Y(n10) );
  BUFX8 U314 ( .A(a[7]), .Y(n224) );
  NOR2X1 U315 ( .A(n119), .B(n120), .Y(n55) );
  NOR2X1 U316 ( .A(n104), .B(n108), .Y(n41) );
  AOI21X1 U317 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  NOR2X1 U318 ( .A(n52), .B(n55), .Y(n50) );
  NAND2BX1 U319 ( .AN(n29), .B(n30), .Y(n4) );
  NAND2BXL U320 ( .AN(n26), .B(n27), .Y(n3) );
  NAND2X1 U321 ( .A(n119), .B(n120), .Y(n56) );
  XNOR2XL U322 ( .A(n225), .B(n207), .Y(n180) );
  OAI22X1 U323 ( .A0(n212), .A1(n220), .B0(n216), .B1(n172), .Y(n128) );
  XNOR2X1 U324 ( .A(b[5]), .B(n280), .Y(n193) );
  AOI21XL U325 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  OAI21X1 U326 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NAND2BXL U327 ( .AN(n64), .B(n65), .Y(n11) );
  NAND2BXL U328 ( .AN(n52), .B(n53), .Y(n8) );
  XNOR2XL U329 ( .A(n36), .B(n5), .Y(product[10]) );
  XOR2XL U330 ( .A(n31), .B(n4), .Y(product[11]) );
  XOR2XL U331 ( .A(n23), .B(n2), .Y(product[13]) );
  INVX1 U332 ( .A(n281), .Y(n15) );
  OAI2BB1XL U333 ( .A0N(n20), .A1N(n16), .B0(n19), .Y(n281) );
  NAND2BXL U334 ( .AN(n34), .B(n35), .Y(n5) );
  NAND2BXL U335 ( .AN(n41), .B(n42), .Y(n6) );
  NOR2X1 U336 ( .A(n121), .B(n124), .Y(n59) );
  NOR2X1 U337 ( .A(n125), .B(n126), .Y(n64) );
  NOR2X1 U338 ( .A(n109), .B(n113), .Y(n46) );
  NOR2X1 U339 ( .A(n100), .B(n96), .Y(n29) );
  NOR2X1 U340 ( .A(n101), .B(n103), .Y(n34) );
  NOR2X1 U341 ( .A(n95), .B(n94), .Y(n26) );
  NOR2X1 U342 ( .A(n93), .B(n92), .Y(n21) );
  NOR2X1 U343 ( .A(n132), .B(n91), .Y(n18) );
  INVXL U344 ( .A(n226), .Y(n222) );
  XNOR2XL U345 ( .A(n226), .B(n207), .Y(n189) );
  NAND2BXL U346 ( .AN(n207), .B(n226), .Y(n190) );
  NOR2BXL U347 ( .AN(n207), .B(n217), .Y(n146) );
  OAI22XL U348 ( .A0(n214), .A1(n184), .B0(n183), .B1(n218), .Y(n149) );
  NOR2BXL U349 ( .AN(n207), .B(n219), .Y(product[0]) );
  OAI22X1 U350 ( .A0(n212), .A1(n169), .B0(n168), .B1(n216), .Y(n105) );
  AO21XL U351 ( .A0(n215), .A1(n219), .B0(n191), .Y(n156) );
  OAI22XL U352 ( .A0(n212), .A1(n167), .B0(n166), .B1(n216), .Y(n97) );
  AO21XL U353 ( .A0(n214), .A1(n218), .B0(n182), .Y(n147) );
  ADDFXL U354 ( .A(n97), .B(n133), .CI(n138), .CO(n93), .S(n94) );
  AO21XL U355 ( .A0(n213), .A1(n217), .B0(n173), .Y(n138) );
  OAI22X1 U356 ( .A0(n212), .A1(n165), .B0(n164), .B1(n216), .Y(n91) );
  AO21XL U357 ( .A0(n212), .A1(n216), .B0(n164), .Y(n132) );
  NAND2XL U358 ( .A(n208), .B(n232), .Y(n228) );
  XOR2XL U359 ( .A(a[7]), .B(a[6]), .Y(n208) );
  BUFX8 U360 ( .A(n229), .Y(n213) );
  NAND2XL U361 ( .A(n209), .B(n233), .Y(n229) );
  XOR2XL U362 ( .A(a[5]), .B(a[4]), .Y(n209) );
  INVX1 U363 ( .A(a[0]), .Y(n235) );
  XNOR2XL U364 ( .A(b[5]), .B(n226), .Y(n184) );
  XNOR2XL U365 ( .A(b[1]), .B(n224), .Y(n170) );
  XNOR2XL U366 ( .A(b[6]), .B(n280), .Y(n192) );
  XNOR2XL U367 ( .A(b[5]), .B(n225), .Y(n175) );
  XNOR2XL U368 ( .A(b[4]), .B(n225), .Y(n176) );
  XNOR2XL U369 ( .A(b[7]), .B(n226), .Y(n182) );
  XNOR2XL U370 ( .A(b[6]), .B(n225), .Y(n174) );
  XNOR2XL U371 ( .A(b[7]), .B(n225), .Y(n173) );
  CLKINVX1 U372 ( .A(n58), .Y(n57) );
  CLKINVX1 U373 ( .A(n49), .Y(n48) );
  CLKINVX1 U374 ( .A(n65), .Y(n63) );
  CLKINVX1 U375 ( .A(n73), .Y(n71) );
  CLKINVX1 U376 ( .A(n72), .Y(n70) );
  XNOR2X1 U377 ( .A(n20), .B(n1), .Y(product[14]) );
  XOR2X1 U378 ( .A(n12), .B(n69), .Y(product[3]) );
  XOR2X1 U379 ( .A(n57), .B(n9), .Y(product[6]) );
  CLKINVX1 U380 ( .A(n76), .Y(n74) );
  XNOR2X1 U381 ( .A(n66), .B(n11), .Y(product[4]) );
  XNOR2X1 U382 ( .A(n54), .B(n8), .Y(product[7]) );
  XNOR2X1 U383 ( .A(n48), .B(n7), .Y(product[8]) );
  XOR2X1 U384 ( .A(n61), .B(n10), .Y(product[5]) );
  XOR2X1 U385 ( .A(n43), .B(n6), .Y(product[9]) );
  CLKINVX1 U386 ( .A(n14), .Y(product[1]) );
  NAND2BX1 U387 ( .AN(n55), .B(n56), .Y(n9) );
  NAND2BX1 U388 ( .AN(n67), .B(n68), .Y(n12) );
  NAND2BX1 U389 ( .AN(n72), .B(n73), .Y(n13) );
  AOI21X1 U390 ( .A0(n36), .A1(n32), .B0(n33), .Y(n31) );
  CLKINVX1 U391 ( .A(n35), .Y(n33) );
  CLKINVX1 U392 ( .A(n34), .Y(n32) );
  AOI21X1 U393 ( .A0(n28), .A1(n24), .B0(n25), .Y(n23) );
  CLKINVX1 U394 ( .A(n27), .Y(n25) );
  CLKINVX1 U395 ( .A(n26), .Y(n24) );
  OAI21X1 U396 ( .A0(n49), .A1(n37), .B0(n38), .Y(n36) );
  NAND2X1 U397 ( .A(n44), .B(n39), .Y(n37) );
  AOI21X1 U398 ( .A0(n45), .A1(n39), .B0(n40), .Y(n38) );
  CLKINVX1 U399 ( .A(n41), .Y(n39) );
  CLKINVX1 U400 ( .A(n46), .Y(n44) );
  NAND2BX1 U401 ( .AN(n46), .B(n47), .Y(n7) );
  CLKINVX1 U402 ( .A(n42), .Y(n40) );
  NAND2BX1 U403 ( .AN(n21), .B(n22), .Y(n2) );
  NAND2BX1 U404 ( .AN(n18), .B(n19), .Y(n1) );
  NOR2X2 U405 ( .A(n114), .B(n118), .Y(n52) );
  NAND2X1 U406 ( .A(n114), .B(n118), .Y(n53) );
  NAND2X1 U407 ( .A(n125), .B(n126), .Y(n65) );
  NAND2X1 U408 ( .A(n121), .B(n124), .Y(n60) );
  NAND2X1 U409 ( .A(n109), .B(n113), .Y(n47) );
  NAND2X1 U410 ( .A(n104), .B(n108), .Y(n42) );
  NAND2X1 U411 ( .A(n101), .B(n103), .Y(n35) );
  NAND2X1 U412 ( .A(n100), .B(n96), .Y(n30) );
  CLKINVX1 U413 ( .A(n105), .Y(n106) );
  NAND2X1 U414 ( .A(n95), .B(n94), .Y(n27) );
  CLKINVX1 U415 ( .A(n91), .Y(n92) );
  NAND2X1 U416 ( .A(n93), .B(n92), .Y(n22) );
  NAND2X1 U417 ( .A(n132), .B(n91), .Y(n19) );
  XNOR2X1 U418 ( .A(n280), .B(n207), .Y(n198) );
  CLKINVX1 U419 ( .A(n280), .Y(n223) );
  NAND2BX1 U420 ( .AN(n207), .B(n280), .Y(n199) );
  CMPR42X1 U421 ( .A(n137), .B(n144), .C(n151), .D(n158), .ICI(n122), .S(n119), 
        .ICO(n117), .CO(n118) );
  NOR2BX1 U422 ( .AN(n207), .B(n216), .Y(n137) );
  OAI22XL U423 ( .A0(n215), .A1(n192), .B0(n191), .B1(n219), .Y(n157) );
  OAI22XL U424 ( .A0(n214), .A1(n185), .B0(n184), .B1(n218), .Y(n150) );
  OAI22XL U425 ( .A0(n212), .A1(n171), .B0(n170), .B1(n216), .Y(n136) );
  NOR2BX1 U426 ( .AN(n207), .B(n218), .Y(n155) );
  XNOR2X1 U427 ( .A(n224), .B(n207), .Y(n171) );
  OAI22XL U428 ( .A0(n215), .A1(n195), .B0(n194), .B1(n219), .Y(n160) );
  OAI22XL U429 ( .A0(n215), .A1(n194), .B0(n193), .B1(n219), .Y(n159) );
  CLKINVX1 U430 ( .A(n224), .Y(n220) );
  NAND2BX1 U431 ( .AN(n207), .B(n224), .Y(n172) );
  CMPR42X1 U432 ( .A(n148), .B(n141), .C(n106), .D(n110), .ICI(n107), .S(n104), 
        .ICO(n102), .CO(n103) );
  OAI22XL U433 ( .A0(n213), .A1(n176), .B0(n175), .B1(n217), .Y(n141) );
  OR2X1 U434 ( .A(n149), .B(n135), .Y(n110) );
  CMPR42X1 U435 ( .A(n105), .B(n134), .C(n140), .D(n147), .ICI(n102), .S(n101), 
        .ICO(n99), .CO(n100) );
  OAI22XL U436 ( .A0(n213), .A1(n175), .B0(n174), .B1(n217), .Y(n140) );
  OAI22XL U437 ( .A0(n212), .A1(n168), .B0(n167), .B1(n216), .Y(n134) );
  CMPR42X1 U438 ( .A(n142), .B(n156), .C(n115), .D(n112), .ICI(n111), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X1 U439 ( .A(n149), .B(n135), .Y(n111) );
  OAI22XL U440 ( .A0(n213), .A1(n177), .B0(n176), .B1(n217), .Y(n142) );
  OAI22XL U441 ( .A0(n213), .A1(n174), .B0(n173), .B1(n217), .Y(n139) );
  CLKINVX1 U442 ( .A(n97), .Y(n98) );
  OAI22XL U443 ( .A0(n212), .A1(n166), .B0(n165), .B1(n216), .Y(n133) );
  XNOR2X1 U444 ( .A(b[2]), .B(n226), .Y(n187) );
  XNOR2X1 U445 ( .A(b[3]), .B(n280), .Y(n195) );
  XNOR2X1 U446 ( .A(b[3]), .B(n225), .Y(n177) );
  XNOR2X1 U447 ( .A(a[3]), .B(a[4]), .Y(n233) );
  XNOR2X1 U448 ( .A(a[5]), .B(a[6]), .Y(n232) );
  NAND2X1 U449 ( .A(n211), .B(n235), .Y(n231) );
  XOR2X1 U450 ( .A(a[0]), .B(a[1]), .Y(n211) );
  XNOR2X1 U451 ( .A(b[2]), .B(n224), .Y(n169) );
  XNOR2X1 U452 ( .A(b[3]), .B(n224), .Y(n168) );
  XNOR2X1 U453 ( .A(b[4]), .B(n224), .Y(n167) );
  XNOR2X1 U454 ( .A(b[5]), .B(n224), .Y(n166) );
  XNOR2X1 U455 ( .A(b[6]), .B(n224), .Y(n165) );
  XNOR2X1 U456 ( .A(b[7]), .B(n224), .Y(n164) );
endmodule


module CONV_DW_mult_tc_18 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n19,
         n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n33, n35, n36, n37,
         n38, n40, n42, n43, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n63, n65, n66, n67, n68, n69, n71, n73,
         n74, n75, n76, n78, n80, n84, n85, n86, n88, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300;
  assign product[15] = n15;

  BUFX4 U230 ( .A(n233), .Y(n217) );
  XNOR2X2 U231 ( .A(a[1]), .B(n207), .Y(n198) );
  BUFX4 U232 ( .A(a[1]), .Y(n227) );
  OAI21X1 U233 ( .A0(n49), .A1(n37), .B0(n38), .Y(n36) );
  AOI21X2 U234 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  OAI21X1 U235 ( .A0(n57), .A1(n55), .B0(n56), .Y(n54) );
  NOR2X2 U236 ( .A(n119), .B(n120), .Y(n55) );
  CLKBUFX3 U237 ( .A(b[5]), .Y(n265) );
  INVX4 U238 ( .A(n58), .Y(n57) );
  ADDHX2 U239 ( .A(n130), .B(n154), .CO(n126), .S(n127) );
  OAI22X1 U240 ( .A0(n214), .A1(n189), .B0(n188), .B1(n218), .Y(n154) );
  NOR2X6 U241 ( .A(n114), .B(n118), .Y(n52) );
  CMPR42X2 U242 ( .A(n137), .B(n144), .C(n151), .D(n158), .ICI(n122), .S(n119), 
        .ICO(n117), .CO(n118) );
  INVX3 U243 ( .A(b[6]), .Y(n266) );
  CLKINVX6 U244 ( .A(n266), .Y(n267) );
  OAI22X1 U245 ( .A0(n214), .A1(n278), .B0(n218), .B1(n190), .Y(n130) );
  OAI22X1 U246 ( .A0(n215), .A1(n196), .B0(n195), .B1(n219), .Y(n161) );
  BUFX8 U247 ( .A(n235), .Y(n219) );
  OAI21X4 U248 ( .A0(n31), .A1(n29), .B0(n30), .Y(n28) );
  AOI21X2 U249 ( .A0(n36), .A1(n272), .B0(n33), .Y(n31) );
  OAI22X1 U250 ( .A0(n213), .A1(n176), .B0(n175), .B1(n217), .Y(n141) );
  XNOR2X1 U251 ( .A(n265), .B(n225), .Y(n175) );
  OAI22X1 U252 ( .A0(n214), .A1(n185), .B0(n184), .B1(n218), .Y(n150) );
  OAI22X2 U253 ( .A0(n214), .A1(n184), .B0(n183), .B1(n218), .Y(n149) );
  XNOR2X1 U254 ( .A(n265), .B(n226), .Y(n184) );
  XNOR2X2 U255 ( .A(n149), .B(n135), .Y(n111) );
  OR2X2 U256 ( .A(n149), .B(n135), .Y(n110) );
  OAI22X1 U257 ( .A0(n212), .A1(n170), .B0(n169), .B1(n216), .Y(n135) );
  OAI22X1 U258 ( .A0(n214), .A1(n183), .B0(n182), .B1(n218), .Y(n148) );
  XNOR2X2 U259 ( .A(n267), .B(n226), .Y(n183) );
  OR2X1 U260 ( .A(n213), .B(n292), .Y(n298) );
  ADDFXL U261 ( .A(n139), .B(n98), .CI(n99), .CO(n95), .S(n96) );
  NAND2X2 U262 ( .A(n281), .B(n282), .Y(n162) );
  OR2X2 U263 ( .A(n196), .B(n219), .Y(n282) );
  OAI22XL U264 ( .A0(n215), .A1(n193), .B0(n192), .B1(n219), .Y(n158) );
  CLKBUFX8 U265 ( .A(n228), .Y(n212) );
  CLKBUFX3 U266 ( .A(n232), .Y(n216) );
  NOR2X2 U267 ( .A(n127), .B(n161), .Y(n67) );
  NAND2X1 U268 ( .A(n127), .B(n161), .Y(n68) );
  ADDFX2 U269 ( .A(n146), .B(n153), .CI(n160), .CO(n124), .S(n125) );
  INVX1 U270 ( .A(n13), .Y(n295) );
  OAI21X1 U271 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  OAI21XL U272 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  CLKBUFX6 U273 ( .A(b[0]), .Y(n207) );
  NAND2X4 U274 ( .A(n163), .B(n131), .Y(n76) );
  INVX1 U275 ( .A(n49), .Y(n48) );
  XOR2X1 U276 ( .A(a[7]), .B(a[6]), .Y(n208) );
  ADDFHX2 U277 ( .A(n152), .B(n145), .CI(n123), .CO(n120), .S(n121) );
  OAI22X1 U278 ( .A0(n214), .A1(n187), .B0(n186), .B1(n218), .Y(n152) );
  NOR2X1 U279 ( .A(n163), .B(n131), .Y(n75) );
  OR2X1 U280 ( .A(n109), .B(n113), .Y(n268) );
  OR2X1 U281 ( .A(n104), .B(n108), .Y(n269) );
  OR2X1 U282 ( .A(n162), .B(n155), .Y(n270) );
  OR2X1 U283 ( .A(n125), .B(n126), .Y(n271) );
  OR2X1 U284 ( .A(n101), .B(n103), .Y(n272) );
  OR2X1 U285 ( .A(n95), .B(n94), .Y(n273) );
  OR2X1 U286 ( .A(n132), .B(n91), .Y(n274) );
  CLKINVX1 U287 ( .A(n76), .Y(n74) );
  BUFX8 U288 ( .A(a[3]), .Y(n226) );
  BUFX4 U289 ( .A(a[5]), .Y(n225) );
  XNOR2X1 U290 ( .A(n36), .B(n5), .Y(product[10]) );
  XOR2X1 U291 ( .A(n23), .B(n2), .Y(product[13]) );
  XOR2X1 U292 ( .A(n31), .B(n4), .Y(product[11]) );
  NOR2X1 U293 ( .A(n212), .B(n171), .Y(n275) );
  NOR2X1 U294 ( .A(n170), .B(n216), .Y(n276) );
  OR2X1 U295 ( .A(n275), .B(n276), .Y(n136) );
  XNOR2XL U296 ( .A(a[7]), .B(n207), .Y(n171) );
  XNOR2X1 U297 ( .A(b[1]), .B(a[7]), .Y(n170) );
  CMPR42X2 U298 ( .A(n136), .B(n150), .C(n157), .D(n116), .ICI(n117), .S(n114), 
        .ICO(n112), .CO(n113) );
  NAND2XL U299 ( .A(b[3]), .B(n226), .Y(n279) );
  NAND2X2 U300 ( .A(n277), .B(n278), .Y(n280) );
  NAND2X1 U301 ( .A(n279), .B(n280), .Y(n186) );
  INVXL U302 ( .A(b[3]), .Y(n277) );
  INVXL U303 ( .A(n226), .Y(n278) );
  OR2X2 U304 ( .A(n215), .B(n197), .Y(n281) );
  OR2X1 U305 ( .A(n215), .B(n195), .Y(n283) );
  OR2X1 U306 ( .A(n194), .B(n219), .Y(n284) );
  NAND2X1 U307 ( .A(n283), .B(n284), .Y(n160) );
  NAND2XL U308 ( .A(n267), .B(a[1]), .Y(n287) );
  NAND2X2 U309 ( .A(n285), .B(n286), .Y(n288) );
  NAND2X2 U310 ( .A(n287), .B(n288), .Y(n192) );
  INVXL U311 ( .A(n267), .Y(n285) );
  INVXL U312 ( .A(a[1]), .Y(n286) );
  OAI22X1 U313 ( .A0(n215), .A1(n192), .B0(n191), .B1(n219), .Y(n157) );
  OR2XL U314 ( .A(n215), .B(n194), .Y(n289) );
  OR2XL U315 ( .A(n193), .B(n219), .Y(n290) );
  NAND2X1 U316 ( .A(n289), .B(n290), .Y(n159) );
  BUFX12 U317 ( .A(n231), .Y(n215) );
  NAND2XL U318 ( .A(b[2]), .B(n225), .Y(n293) );
  NAND2X1 U319 ( .A(n291), .B(n292), .Y(n294) );
  NAND2X2 U320 ( .A(n293), .B(n294), .Y(n178) );
  INVXL U321 ( .A(b[2]), .Y(n291) );
  INVXL U322 ( .A(n225), .Y(n292) );
  OAI22X1 U323 ( .A0(n213), .A1(n178), .B0(n177), .B1(n217), .Y(n143) );
  NAND2X1 U324 ( .A(n13), .B(n74), .Y(n296) );
  NAND2X2 U325 ( .A(n295), .B(n76), .Y(n297) );
  NAND2X2 U326 ( .A(n296), .B(n297), .Y(product[2]) );
  OR2XL U327 ( .A(n217), .B(n181), .Y(n299) );
  NAND2X1 U328 ( .A(n298), .B(n299), .Y(n129) );
  BUFX12 U329 ( .A(n229), .Y(n213) );
  NAND2BXL U330 ( .AN(n207), .B(n225), .Y(n181) );
  OAI22X2 U331 ( .A0(n215), .A1(n286), .B0(n199), .B1(n219), .Y(n131) );
  OAI22X2 U332 ( .A0(n215), .A1(n198), .B0(n197), .B1(n219), .Y(n163) );
  XNOR2X1 U333 ( .A(a[5]), .B(a[6]), .Y(n232) );
  OAI22X1 U334 ( .A0(n213), .A1(n180), .B0(n179), .B1(n217), .Y(n145) );
  OAI22X1 U335 ( .A0(n213), .A1(n179), .B0(n178), .B1(n217), .Y(n144) );
  XNOR2X2 U336 ( .A(b[1]), .B(n227), .Y(n197) );
  OAI22X1 U337 ( .A0(n214), .A1(n188), .B0(n187), .B1(n218), .Y(n153) );
  XOR2X1 U338 ( .A(a[3]), .B(a[2]), .Y(n210) );
  ADDHX1 U339 ( .A(n129), .B(n159), .CO(n122), .S(n123) );
  OAI21X2 U340 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  CLKINVX3 U341 ( .A(n47), .Y(n45) );
  NAND2X2 U342 ( .A(n162), .B(n155), .Y(n73) );
  NAND2BXL U343 ( .AN(n75), .B(n76), .Y(n14) );
  XNOR2X1 U344 ( .A(n28), .B(n3), .Y(product[12]) );
  INVXL U345 ( .A(n52), .Y(n84) );
  NAND2XL U346 ( .A(n208), .B(n232), .Y(n228) );
  XOR2XL U347 ( .A(a[5]), .B(a[4]), .Y(n209) );
  NOR2X1 U348 ( .A(n52), .B(n55), .Y(n50) );
  XNOR2XL U349 ( .A(n225), .B(n207), .Y(n180) );
  XNOR2X1 U350 ( .A(n265), .B(n227), .Y(n193) );
  XNOR2X1 U351 ( .A(b[4]), .B(n227), .Y(n194) );
  NAND2X2 U352 ( .A(n210), .B(n234), .Y(n230) );
  NAND2X2 U353 ( .A(n209), .B(n233), .Y(n229) );
  AOI21XL U354 ( .A0(n48), .A1(n268), .B0(n45), .Y(n43) );
  OAI21X1 U355 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NAND2XL U356 ( .A(n84), .B(n53), .Y(n8) );
  INVX1 U357 ( .A(n55), .Y(n85) );
  NAND2XL U358 ( .A(n272), .B(n35), .Y(n5) );
  NAND2XL U359 ( .A(n269), .B(n42), .Y(n6) );
  NOR2X1 U360 ( .A(n121), .B(n124), .Y(n59) );
  NOR2X1 U361 ( .A(n100), .B(n96), .Y(n29) );
  NOR2X1 U362 ( .A(n93), .B(n92), .Y(n21) );
  ADDHX1 U363 ( .A(n128), .B(n143), .CO(n115), .S(n116) );
  OAI22X1 U364 ( .A0(n212), .A1(n220), .B0(n216), .B1(n172), .Y(n128) );
  BUFX8 U365 ( .A(n234), .Y(n218) );
  XNOR2XL U366 ( .A(n226), .B(n207), .Y(n189) );
  NAND2BXL U367 ( .AN(n207), .B(n226), .Y(n190) );
  NOR2BXL U368 ( .AN(n207), .B(n217), .Y(n146) );
  NOR2BXL U369 ( .AN(n207), .B(n219), .Y(product[0]) );
  OAI22X1 U370 ( .A0(n212), .A1(n169), .B0(n168), .B1(n216), .Y(n105) );
  AO21XL U371 ( .A0(n215), .A1(n219), .B0(n191), .Y(n156) );
  OAI22XL U372 ( .A0(n212), .A1(n167), .B0(n166), .B1(n216), .Y(n97) );
  AO21XL U373 ( .A0(n214), .A1(n218), .B0(n182), .Y(n147) );
  ADDFXL U374 ( .A(n97), .B(n133), .CI(n138), .CO(n93), .S(n94) );
  AO21XL U375 ( .A0(n213), .A1(n217), .B0(n173), .Y(n138) );
  OAI22X1 U376 ( .A0(n212), .A1(n165), .B0(n164), .B1(n216), .Y(n91) );
  AO21XL U377 ( .A0(n212), .A1(n216), .B0(n164), .Y(n132) );
  BUFX8 U378 ( .A(n230), .Y(n214) );
  INVX1 U379 ( .A(a[0]), .Y(n235) );
  XNOR2XL U380 ( .A(b[1]), .B(n225), .Y(n179) );
  XNOR2XL U381 ( .A(b[4]), .B(n226), .Y(n185) );
  XNOR2XL U382 ( .A(b[4]), .B(n225), .Y(n176) );
  XNOR2XL U383 ( .A(b[7]), .B(a[1]), .Y(n191) );
  XNOR2XL U384 ( .A(b[7]), .B(n226), .Y(n182) );
  XNOR2XL U385 ( .A(n267), .B(n225), .Y(n174) );
  XNOR2XL U386 ( .A(b[7]), .B(n225), .Y(n173) );
  AOI21X1 U387 ( .A0(n66), .A1(n271), .B0(n63), .Y(n61) );
  CLKINVX1 U388 ( .A(n65), .Y(n63) );
  AOI21X1 U389 ( .A0(n270), .A1(n74), .B0(n71), .Y(n69) );
  CLKINVX1 U390 ( .A(n73), .Y(n71) );
  NAND2X1 U391 ( .A(n270), .B(n73), .Y(n13) );
  XNOR2X1 U392 ( .A(n20), .B(n1), .Y(product[14]) );
  NAND2X1 U393 ( .A(n274), .B(n19), .Y(n1) );
  XOR2X1 U394 ( .A(n12), .B(n69), .Y(product[3]) );
  NAND2X1 U395 ( .A(n88), .B(n68), .Y(n12) );
  XOR2X1 U396 ( .A(n57), .B(n9), .Y(product[6]) );
  NAND2X1 U397 ( .A(n85), .B(n56), .Y(n9) );
  XNOR2X1 U398 ( .A(n66), .B(n11), .Y(product[4]) );
  NAND2X1 U399 ( .A(n271), .B(n65), .Y(n11) );
  XNOR2X1 U400 ( .A(n54), .B(n8), .Y(product[7]) );
  XNOR2X1 U401 ( .A(n48), .B(n7), .Y(product[8]) );
  NAND2X1 U402 ( .A(n268), .B(n47), .Y(n7) );
  NAND2X1 U403 ( .A(n273), .B(n27), .Y(n3) );
  XOR2X1 U404 ( .A(n61), .B(n10), .Y(product[5]) );
  NAND2X1 U405 ( .A(n86), .B(n60), .Y(n10) );
  XOR2X1 U406 ( .A(n43), .B(n6), .Y(product[9]) );
  NAND2X1 U407 ( .A(n80), .B(n30), .Y(n4) );
  NAND2X1 U408 ( .A(n78), .B(n22), .Y(n2) );
  CLKINVX1 U409 ( .A(n14), .Y(product[1]) );
  CLKINVX1 U410 ( .A(n67), .Y(n88) );
  CLKINVX1 U411 ( .A(n59), .Y(n86) );
  CLKINVX1 U412 ( .A(n35), .Y(n33) );
  AOI21X1 U413 ( .A0(n28), .A1(n273), .B0(n25), .Y(n23) );
  CLKINVX1 U414 ( .A(n27), .Y(n25) );
  NAND2X1 U415 ( .A(n268), .B(n269), .Y(n37) );
  AOI21X1 U416 ( .A0(n45), .A1(n269), .B0(n40), .Y(n38) );
  OAI2BB1X1 U417 ( .A0N(n20), .A1N(n274), .B0(n19), .Y(n300) );
  CLKINVX1 U418 ( .A(n300), .Y(n15) );
  CLKINVX1 U419 ( .A(n42), .Y(n40) );
  CLKINVX1 U420 ( .A(n29), .Y(n80) );
  CLKINVX1 U421 ( .A(n21), .Y(n78) );
  NAND2X1 U422 ( .A(n119), .B(n120), .Y(n56) );
  NAND2X1 U423 ( .A(n114), .B(n118), .Y(n53) );
  NAND2X1 U424 ( .A(n125), .B(n126), .Y(n65) );
  NAND2X1 U425 ( .A(n121), .B(n124), .Y(n60) );
  NAND2X1 U426 ( .A(n109), .B(n113), .Y(n47) );
  NAND2X1 U427 ( .A(n104), .B(n108), .Y(n42) );
  NAND2X1 U428 ( .A(n101), .B(n103), .Y(n35) );
  NAND2X1 U429 ( .A(n100), .B(n96), .Y(n30) );
  CLKINVX1 U430 ( .A(n105), .Y(n106) );
  NAND2X1 U431 ( .A(n95), .B(n94), .Y(n27) );
  CLKINVX1 U432 ( .A(n91), .Y(n92) );
  NAND2X1 U433 ( .A(n93), .B(n92), .Y(n22) );
  NAND2X1 U434 ( .A(n132), .B(n91), .Y(n19) );
  NAND2BX1 U435 ( .AN(n207), .B(a[1]), .Y(n199) );
  NOR2BX1 U436 ( .AN(n207), .B(n216), .Y(n137) );
  OAI22XL U437 ( .A0(n214), .A1(n186), .B0(n185), .B1(n218), .Y(n151) );
  NOR2BX1 U438 ( .AN(n207), .B(n218), .Y(n155) );
  CLKINVX1 U439 ( .A(a[7]), .Y(n220) );
  NAND2BX1 U440 ( .AN(n207), .B(a[7]), .Y(n172) );
  CMPR42X1 U441 ( .A(n148), .B(n141), .C(n106), .D(n110), .ICI(n107), .S(n104), 
        .ICO(n102), .CO(n103) );
  CMPR42X1 U442 ( .A(n105), .B(n134), .C(n140), .D(n147), .ICI(n102), .S(n101), 
        .ICO(n99), .CO(n100) );
  OAI22XL U443 ( .A0(n213), .A1(n175), .B0(n174), .B1(n217), .Y(n140) );
  OAI22XL U444 ( .A0(n212), .A1(n168), .B0(n167), .B1(n216), .Y(n134) );
  CMPR42X1 U445 ( .A(n142), .B(n156), .C(n115), .D(n112), .ICI(n111), .S(n109), 
        .ICO(n107), .CO(n108) );
  OAI22XL U446 ( .A0(n213), .A1(n177), .B0(n176), .B1(n217), .Y(n142) );
  OAI22XL U447 ( .A0(n213), .A1(n174), .B0(n173), .B1(n217), .Y(n139) );
  CLKINVX1 U448 ( .A(n97), .Y(n98) );
  OAI22XL U449 ( .A0(n212), .A1(n166), .B0(n165), .B1(n216), .Y(n133) );
  XNOR2X1 U450 ( .A(b[2]), .B(n227), .Y(n196) );
  XNOR2X1 U451 ( .A(b[2]), .B(n226), .Y(n187) );
  XNOR2X1 U452 ( .A(b[1]), .B(n226), .Y(n188) );
  XNOR2X1 U453 ( .A(b[3]), .B(n227), .Y(n195) );
  XNOR2X1 U454 ( .A(b[3]), .B(n225), .Y(n177) );
  XNOR2X1 U455 ( .A(a[3]), .B(a[4]), .Y(n233) );
  XNOR2X1 U456 ( .A(a[1]), .B(a[2]), .Y(n234) );
  NAND2X1 U457 ( .A(n211), .B(n235), .Y(n231) );
  XOR2X1 U458 ( .A(a[0]), .B(a[1]), .Y(n211) );
  XNOR2X1 U459 ( .A(b[2]), .B(a[7]), .Y(n169) );
  XNOR2X1 U460 ( .A(b[3]), .B(a[7]), .Y(n168) );
  XNOR2X1 U461 ( .A(b[4]), .B(a[7]), .Y(n167) );
  XNOR2X1 U462 ( .A(n265), .B(a[7]), .Y(n166) );
  XNOR2X1 U463 ( .A(n267), .B(a[7]), .Y(n165) );
  XNOR2X1 U464 ( .A(b[7]), .B(a[7]), .Y(n164) );
endmodule


module CONV_DW_mult_tc_19 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n20, n22, n23, n24, n25, n26, n28, n30, n31, n32, n35, n37, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n55, n56, n57, n58, n59, n60, n61, n63, n65, n66, n67, n68, n69, n71,
         n73, n74, n75, n76, n77, n79, n82, n84, n85, n86, n88, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289;

  INVX3 U230 ( .A(n149), .Y(n265) );
  INVX3 U231 ( .A(n265), .Y(n266) );
  XNOR2X1 U232 ( .A(b[6]), .B(n226), .Y(n183) );
  BUFX16 U233 ( .A(a[3]), .Y(n226) );
  XOR2X1 U234 ( .A(a[7]), .B(a[6]), .Y(n208) );
  XNOR2X2 U235 ( .A(n48), .B(n7), .Y(product[8]) );
  CLKBUFX3 U236 ( .A(b[4]), .Y(n267) );
  CLKBUFX6 U237 ( .A(n188), .Y(n268) );
  NAND2X4 U238 ( .A(n163), .B(n131), .Y(n76) );
  OAI22X2 U239 ( .A0(n215), .A1(n285), .B0(n199), .B1(n219), .Y(n131) );
  CLKBUFX3 U240 ( .A(b[3]), .Y(n269) );
  BUFX12 U241 ( .A(b[0]), .Y(n207) );
  OAI22X1 U242 ( .A0(n213), .A1(n178), .B0(n177), .B1(n217), .Y(n143) );
  OAI22X1 U243 ( .A0(n213), .A1(n180), .B0(n179), .B1(n217), .Y(n145) );
  OAI22X1 U244 ( .A0(n213), .A1(n179), .B0(n178), .B1(n217), .Y(n144) );
  XNOR2X1 U245 ( .A(b[1]), .B(n225), .Y(n179) );
  OAI21X1 U246 ( .A0(n47), .A1(n41), .B0(n42), .Y(n40) );
  NOR2X4 U247 ( .A(n104), .B(n108), .Y(n41) );
  OAI22X2 U248 ( .A0(n215), .A1(n198), .B0(n197), .B1(n219), .Y(n163) );
  BUFX8 U249 ( .A(n235), .Y(n219) );
  XNOR2X1 U250 ( .A(b[7]), .B(n226), .Y(n182) );
  OAI22X1 U251 ( .A0(n213), .A1(n176), .B0(n175), .B1(n217), .Y(n141) );
  OAI22X1 U252 ( .A0(n213), .A1(n177), .B0(n176), .B1(n217), .Y(n142) );
  INVX3 U253 ( .A(b[2]), .Y(n270) );
  CLKINVX8 U254 ( .A(n270), .Y(n271) );
  AO21XL U255 ( .A0(n215), .A1(n219), .B0(n191), .Y(n156) );
  XNOR2X2 U256 ( .A(b[7]), .B(n227), .Y(n191) );
  OAI22X1 U257 ( .A0(n214), .A1(n185), .B0(n184), .B1(n218), .Y(n150) );
  XNOR2X1 U258 ( .A(n267), .B(n226), .Y(n185) );
  OAI22X1 U259 ( .A0(n214), .A1(n186), .B0(n185), .B1(n218), .Y(n151) );
  XNOR2X1 U260 ( .A(n269), .B(n226), .Y(n186) );
  OAI22X1 U261 ( .A0(n212), .A1(n170), .B0(n169), .B1(n216), .Y(n135) );
  BUFX8 U262 ( .A(n228), .Y(n212) );
  NOR2X2 U263 ( .A(n127), .B(n161), .Y(n67) );
  NAND2X2 U264 ( .A(n127), .B(n161), .Y(n68) );
  OAI22X1 U265 ( .A0(n215), .A1(n196), .B0(n195), .B1(n219), .Y(n161) );
  ADDHX2 U266 ( .A(n129), .B(n159), .CO(n122), .S(n123) );
  OAI22X1 U267 ( .A0(n213), .A1(n221), .B0(n217), .B1(n181), .Y(n129) );
  NAND2X1 U268 ( .A(n286), .B(n287), .Y(n193) );
  NAND2X1 U269 ( .A(n284), .B(n285), .Y(n287) );
  XNOR2X1 U270 ( .A(n269), .B(n227), .Y(n195) );
  NAND2X1 U271 ( .A(n39), .B(n274), .Y(n32) );
  BUFX4 U272 ( .A(n231), .Y(n215) );
  ADDHX1 U273 ( .A(n130), .B(n154), .CO(n126), .S(n127) );
  OAI22X1 U274 ( .A0(n214), .A1(n222), .B0(n218), .B1(n190), .Y(n130) );
  ADDFXL U275 ( .A(n139), .B(n98), .CI(n99), .CO(n95), .S(n96) );
  NOR2X1 U276 ( .A(n121), .B(n124), .Y(n59) );
  XOR2X1 U277 ( .A(n288), .B(n8), .Y(product[7]) );
  AOI21X1 U278 ( .A0(n31), .A1(n272), .B0(n28), .Y(n26) );
  OAI21X1 U279 ( .A0(n26), .A1(n24), .B0(n25), .Y(n23) );
  OR2X1 U280 ( .A(n100), .B(n96), .Y(n272) );
  OR2X1 U281 ( .A(n125), .B(n126), .Y(n273) );
  OR2X1 U282 ( .A(n101), .B(n103), .Y(n274) );
  OR2X1 U283 ( .A(n162), .B(n155), .Y(n275) );
  OR2X1 U284 ( .A(n93), .B(n92), .Y(n276) );
  OA21X2 U285 ( .A0(n18), .A1(n16), .B0(n17), .Y(product[15]) );
  CLKINVX1 U286 ( .A(n227), .Y(n285) );
  NOR2X1 U287 ( .A(n109), .B(n113), .Y(n46) );
  AO21X1 U288 ( .A0(n40), .A1(n274), .B0(n35), .Y(n278) );
  NOR2XL U289 ( .A(n32), .B(n49), .Y(n279) );
  OR2X4 U290 ( .A(n279), .B(n278), .Y(n31) );
  AOI21X4 U291 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  XNOR2X2 U292 ( .A(n31), .B(n4), .Y(product[11]) );
  NOR2X1 U293 ( .A(n214), .B(n268), .Y(n280) );
  NOR2X1 U294 ( .A(n187), .B(n218), .Y(n281) );
  OR2X8 U295 ( .A(n280), .B(n281), .Y(n153) );
  XNOR2XL U296 ( .A(b[1]), .B(n226), .Y(n188) );
  XNOR2XL U297 ( .A(n271), .B(n226), .Y(n187) );
  BUFX8 U298 ( .A(n234), .Y(n218) );
  ADDFHX4 U299 ( .A(n146), .B(n153), .CI(n160), .CO(n124), .S(n125) );
  OR2XL U300 ( .A(n215), .B(n195), .Y(n282) );
  OR2XL U301 ( .A(n194), .B(n219), .Y(n283) );
  NAND2X1 U302 ( .A(n282), .B(n283), .Y(n160) );
  XNOR2X1 U303 ( .A(n267), .B(n227), .Y(n194) );
  NAND2XL U304 ( .A(b[5]), .B(n227), .Y(n286) );
  INVXL U305 ( .A(b[5]), .Y(n284) );
  OAI22X1 U306 ( .A0(n215), .A1(n194), .B0(n193), .B1(n219), .Y(n159) );
  OAI22X1 U307 ( .A0(n215), .A1(n193), .B0(n192), .B1(n219), .Y(n158) );
  OAI22X2 U308 ( .A0(n215), .A1(n197), .B0(n196), .B1(n219), .Y(n162) );
  OAI22X1 U309 ( .A0(n214), .A1(n189), .B0(n268), .B1(n218), .Y(n154) );
  CLKBUFX4 U310 ( .A(a[1]), .Y(n227) );
  NAND2X2 U311 ( .A(n162), .B(n155), .Y(n73) );
  BUFX3 U312 ( .A(n233), .Y(n217) );
  XNOR2X1 U313 ( .A(a[1]), .B(a[2]), .Y(n234) );
  NAND2XL U314 ( .A(n273), .B(n65), .Y(n11) );
  NOR2BX1 U315 ( .AN(n207), .B(n218), .Y(n155) );
  NAND2XL U316 ( .A(n272), .B(n30), .Y(n4) );
  OAI21X1 U317 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  AOI21X1 U318 ( .A0(n23), .A1(n276), .B0(n20), .Y(n18) );
  CLKBUFX4 U319 ( .A(a[5]), .Y(n225) );
  INVX1 U320 ( .A(n24), .Y(n79) );
  INVXL U321 ( .A(n30), .Y(n28) );
  XNOR2X1 U322 ( .A(a[5]), .B(a[6]), .Y(n232) );
  BUFX8 U323 ( .A(n230), .Y(n214) );
  XOR2X1 U324 ( .A(a[3]), .B(a[2]), .Y(n210) );
  NAND2XL U325 ( .A(n208), .B(n232), .Y(n228) );
  XNOR2XL U326 ( .A(b[6]), .B(n227), .Y(n192) );
  NOR2X1 U327 ( .A(n52), .B(n55), .Y(n50) );
  NAND2X1 U328 ( .A(n79), .B(n25), .Y(n3) );
  OA21XL U329 ( .A0(n57), .A1(n55), .B0(n56), .Y(n288) );
  OAI21X2 U330 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  OAI21X1 U331 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  XNOR2XL U332 ( .A(n13), .B(n74), .Y(product[2]) );
  XNOR2X1 U333 ( .A(n289), .B(n5), .Y(product[10]) );
  AO21XL U334 ( .A0(n48), .A1(n39), .B0(n40), .Y(n289) );
  INVXL U335 ( .A(n47), .Y(n45) );
  INVXL U336 ( .A(n46), .Y(n44) );
  NAND2BXL U337 ( .AN(n75), .B(n76), .Y(n14) );
  NOR2XL U338 ( .A(n163), .B(n131), .Y(n75) );
  NOR2X1 U339 ( .A(n95), .B(n94), .Y(n24) );
  NOR2X1 U340 ( .A(n132), .B(n91), .Y(n16) );
  ADDHX1 U341 ( .A(n128), .B(n143), .CO(n115), .S(n116) );
  OAI22X1 U342 ( .A0(n212), .A1(n220), .B0(n216), .B1(n172), .Y(n128) );
  INVXL U343 ( .A(n226), .Y(n222) );
  XNOR2XL U344 ( .A(n226), .B(n207), .Y(n189) );
  NAND2BXL U345 ( .AN(n207), .B(n226), .Y(n190) );
  NOR2BXL U346 ( .AN(n207), .B(n219), .Y(product[0]) );
  AO21XL U347 ( .A0(n214), .A1(n218), .B0(n182), .Y(n147) );
  OAI22XL U348 ( .A0(n214), .A1(n184), .B0(n183), .B1(n218), .Y(n149) );
  OAI22X1 U349 ( .A0(n212), .A1(n169), .B0(n168), .B1(n216), .Y(n105) );
  OAI22X1 U350 ( .A0(n212), .A1(n165), .B0(n164), .B1(n216), .Y(n91) );
  ADDFXL U351 ( .A(n97), .B(n133), .CI(n138), .CO(n93), .S(n94) );
  AO21XL U352 ( .A0(n213), .A1(n217), .B0(n173), .Y(n138) );
  AO21XL U353 ( .A0(n212), .A1(n216), .B0(n164), .Y(n132) );
  NAND2XL U354 ( .A(n210), .B(n234), .Y(n230) );
  INVX1 U355 ( .A(a[0]), .Y(n235) );
  BUFX8 U356 ( .A(n229), .Y(n213) );
  NAND2XL U357 ( .A(n209), .B(n233), .Y(n229) );
  XOR2XL U358 ( .A(a[5]), .B(a[4]), .Y(n209) );
  XNOR2XL U359 ( .A(b[5]), .B(n226), .Y(n184) );
  XNOR2XL U360 ( .A(b[1]), .B(a[7]), .Y(n170) );
  XNOR2XL U361 ( .A(n267), .B(n225), .Y(n176) );
  XNOR2XL U362 ( .A(b[5]), .B(n225), .Y(n175) );
  XNOR2XL U363 ( .A(n267), .B(a[7]), .Y(n167) );
  XNOR2XL U364 ( .A(b[6]), .B(n225), .Y(n174) );
  XNOR2XL U365 ( .A(b[5]), .B(a[7]), .Y(n166) );
  XNOR2XL U366 ( .A(b[7]), .B(n225), .Y(n173) );
  CLKINVX1 U367 ( .A(n49), .Y(n48) );
  CLKINVX1 U368 ( .A(n58), .Y(n57) );
  NAND2X1 U369 ( .A(n275), .B(n73), .Y(n13) );
  NAND2X1 U370 ( .A(n84), .B(n53), .Y(n8) );
  CLKINVX1 U371 ( .A(n52), .Y(n84) );
  NAND2X1 U372 ( .A(n44), .B(n47), .Y(n7) );
  XNOR2X1 U373 ( .A(n66), .B(n11), .Y(product[4]) );
  AOI21X1 U374 ( .A0(n66), .A1(n273), .B0(n63), .Y(n61) );
  CLKINVX1 U375 ( .A(n65), .Y(n63) );
  AOI21X1 U376 ( .A0(n275), .A1(n74), .B0(n71), .Y(n69) );
  CLKINVX1 U377 ( .A(n73), .Y(n71) );
  XOR2X1 U378 ( .A(n12), .B(n69), .Y(product[3]) );
  NAND2X1 U379 ( .A(n88), .B(n68), .Y(n12) );
  CLKINVX1 U380 ( .A(n67), .Y(n88) );
  XOR2X1 U381 ( .A(n57), .B(n9), .Y(product[6]) );
  NAND2X1 U382 ( .A(n85), .B(n56), .Y(n9) );
  CLKINVX1 U383 ( .A(n55), .Y(n85) );
  XOR2X1 U384 ( .A(n43), .B(n6), .Y(product[9]) );
  NAND2X1 U385 ( .A(n82), .B(n42), .Y(n6) );
  AOI21X1 U386 ( .A0(n48), .A1(n44), .B0(n45), .Y(n43) );
  CLKINVX1 U387 ( .A(n41), .Y(n82) );
  NAND2X1 U388 ( .A(n274), .B(n37), .Y(n5) );
  XOR2X1 U389 ( .A(n61), .B(n10), .Y(product[5]) );
  NAND2X1 U390 ( .A(n86), .B(n60), .Y(n10) );
  CLKINVX1 U391 ( .A(n59), .Y(n86) );
  CLKINVX1 U392 ( .A(n76), .Y(n74) );
  XNOR2X1 U393 ( .A(n23), .B(n2), .Y(product[13]) );
  NAND2X1 U394 ( .A(n276), .B(n22), .Y(n2) );
  CLKINVX1 U395 ( .A(n22), .Y(n20) );
  NOR2X1 U396 ( .A(n46), .B(n41), .Y(n39) );
  XOR2X1 U397 ( .A(n26), .B(n3), .Y(product[12]) );
  XOR2X1 U398 ( .A(n18), .B(n1), .Y(product[14]) );
  NAND2X1 U399 ( .A(n77), .B(n17), .Y(n1) );
  CLKINVX1 U400 ( .A(n16), .Y(n77) );
  CLKINVX1 U401 ( .A(n37), .Y(n35) );
  NOR2X2 U402 ( .A(n114), .B(n118), .Y(n52) );
  NOR2X2 U403 ( .A(n119), .B(n120), .Y(n55) );
  NAND2X1 U404 ( .A(n109), .B(n113), .Y(n47) );
  NAND2X1 U405 ( .A(n119), .B(n120), .Y(n56) );
  NAND2X1 U406 ( .A(n114), .B(n118), .Y(n53) );
  NAND2X1 U407 ( .A(n125), .B(n126), .Y(n65) );
  CLKINVX1 U408 ( .A(n14), .Y(product[1]) );
  NAND2X1 U409 ( .A(n121), .B(n124), .Y(n60) );
  NAND2X1 U410 ( .A(n101), .B(n103), .Y(n37) );
  NAND2X1 U411 ( .A(n100), .B(n96), .Y(n30) );
  NAND2X1 U412 ( .A(n104), .B(n108), .Y(n42) );
  CLKINVX1 U413 ( .A(n105), .Y(n106) );
  NAND2X1 U414 ( .A(n132), .B(n91), .Y(n17) );
  NAND2X1 U415 ( .A(n93), .B(n92), .Y(n22) );
  CLKINVX1 U416 ( .A(n91), .Y(n92) );
  NAND2X1 U417 ( .A(n95), .B(n94), .Y(n25) );
  XNOR2X1 U418 ( .A(n227), .B(n207), .Y(n198) );
  NAND2BX1 U419 ( .AN(n207), .B(n227), .Y(n199) );
  CMPR42X1 U420 ( .A(n137), .B(n144), .C(n151), .D(n158), .ICI(n122), .S(n119), 
        .ICO(n117), .CO(n118) );
  NOR2BX1 U421 ( .AN(n207), .B(n216), .Y(n137) );
  CMPR42X1 U422 ( .A(n136), .B(n150), .C(n157), .D(n116), .ICI(n117), .S(n114), 
        .ICO(n112), .CO(n113) );
  OAI22XL U423 ( .A0(n215), .A1(n192), .B0(n191), .B1(n219), .Y(n157) );
  OAI22XL U424 ( .A0(n212), .A1(n171), .B0(n170), .B1(n216), .Y(n136) );
  CMPR42X1 U425 ( .A(n142), .B(n156), .C(n115), .D(n112), .ICI(n111), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X1 U426 ( .A(n266), .B(n135), .Y(n111) );
  CLKBUFX3 U427 ( .A(n232), .Y(n216) );
  XNOR2X1 U428 ( .A(a[7]), .B(n207), .Y(n171) );
  ADDFX2 U429 ( .A(n152), .B(n145), .CI(n123), .CO(n120), .S(n121) );
  OAI22XL U430 ( .A0(n214), .A1(n187), .B0(n186), .B1(n218), .Y(n152) );
  XNOR2X1 U431 ( .A(n225), .B(n207), .Y(n180) );
  NOR2BX1 U432 ( .AN(n207), .B(n217), .Y(n146) );
  CLKINVX1 U433 ( .A(n225), .Y(n221) );
  CLKINVX1 U434 ( .A(a[7]), .Y(n220) );
  NAND2BX1 U435 ( .AN(n207), .B(n225), .Y(n181) );
  NAND2BX1 U436 ( .AN(n207), .B(a[7]), .Y(n172) );
  OAI22XL U437 ( .A0(n212), .A1(n167), .B0(n166), .B1(n216), .Y(n97) );
  CMPR42X1 U438 ( .A(n105), .B(n134), .C(n140), .D(n147), .ICI(n102), .S(n101), 
        .ICO(n99), .CO(n100) );
  OAI22XL U439 ( .A0(n213), .A1(n175), .B0(n174), .B1(n217), .Y(n140) );
  OAI22XL U440 ( .A0(n212), .A1(n168), .B0(n167), .B1(n216), .Y(n134) );
  CMPR42X1 U441 ( .A(n148), .B(n141), .C(n106), .D(n110), .ICI(n107), .S(n104), 
        .ICO(n102), .CO(n103) );
  OR2X1 U442 ( .A(n266), .B(n135), .Y(n110) );
  OAI22XL U443 ( .A0(n214), .A1(n183), .B0(n182), .B1(n218), .Y(n148) );
  OAI22XL U444 ( .A0(n213), .A1(n174), .B0(n173), .B1(n217), .Y(n139) );
  CLKINVX1 U445 ( .A(n97), .Y(n98) );
  OAI22XL U446 ( .A0(n212), .A1(n166), .B0(n165), .B1(n216), .Y(n133) );
  XNOR2X1 U447 ( .A(n271), .B(n227), .Y(n196) );
  XNOR2X1 U448 ( .A(b[1]), .B(n227), .Y(n197) );
  XNOR2X1 U449 ( .A(n271), .B(n225), .Y(n178) );
  XNOR2X1 U450 ( .A(n269), .B(n225), .Y(n177) );
  XNOR2X1 U451 ( .A(a[3]), .B(a[4]), .Y(n233) );
  NAND2X1 U452 ( .A(n211), .B(n235), .Y(n231) );
  XOR2X1 U453 ( .A(a[0]), .B(a[1]), .Y(n211) );
  XNOR2X1 U454 ( .A(n271), .B(a[7]), .Y(n169) );
  XNOR2X1 U455 ( .A(n269), .B(a[7]), .Y(n168) );
  XNOR2X1 U456 ( .A(b[6]), .B(a[7]), .Y(n165) );
  XNOR2X1 U457 ( .A(b[7]), .B(a[7]), .Y(n164) );
endmodule


module CONV_DW_mult_tc_20 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n19, n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n32, n33, n34,
         n36, n37, n38, n39, n40, n41, n42, n45, n46, n47, n48, n49, n50, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67,
         n68, n69, n71, n73, n74, n75, n76, n77, n79, n81, n83, n84, n86, n88,
         n90, n92, n93, n94, n96, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313;
  assign product[15] = n15;

  NAND2X2 U238 ( .A(n302), .B(n303), .Y(n138) );
  OR2X1 U239 ( .A(n226), .B(n198), .Y(n303) );
  AOI21X1 U240 ( .A0(n56), .A1(n47), .B0(n48), .Y(n42) );
  INVX1 U241 ( .A(n47), .Y(n45) );
  OAI22X1 U242 ( .A0(n220), .A1(n175), .B0(n174), .B1(n224), .Y(n105) );
  NOR2X1 U243 ( .A(n54), .B(n49), .Y(n47) );
  CLKINVX1 U244 ( .A(n54), .Y(n52) );
  NOR2X2 U245 ( .A(n117), .B(n121), .Y(n54) );
  XNOR2X4 U246 ( .A(a[1]), .B(a[2]), .Y(n242) );
  OR2X2 U247 ( .A(n133), .B(n134), .Y(n280) );
  ADDFHX2 U248 ( .A(n154), .B(n161), .CI(n168), .CO(n132), .S(n133) );
  BUFX3 U249 ( .A(n160), .Y(n273) );
  NAND2X2 U250 ( .A(n170), .B(n163), .Y(n81) );
  NAND2X1 U251 ( .A(n171), .B(n139), .Y(n84) );
  AND2X8 U252 ( .A(n171), .B(n139), .Y(n311) );
  OAI22X4 U253 ( .A0(n223), .A1(n206), .B0(n205), .B1(n227), .Y(n171) );
  OAI22X4 U254 ( .A0(n223), .A1(n205), .B0(n204), .B1(n227), .Y(n170) );
  XNOR2X2 U255 ( .A(b[2]), .B(n235), .Y(n204) );
  CMPR22X2 U256 ( .A(n137), .B(n167), .CO(n130), .S(n131) );
  OAI22X2 U257 ( .A0(n223), .A1(n202), .B0(n201), .B1(n227), .Y(n167) );
  INVX4 U258 ( .A(n63), .Y(n93) );
  NOR2X2 U259 ( .A(n276), .B(n63), .Y(n58) );
  NOR2X8 U260 ( .A(n127), .B(n128), .Y(n63) );
  INVX4 U261 ( .A(n279), .Y(n274) );
  INVX8 U262 ( .A(n274), .Y(n275) );
  OR2X2 U263 ( .A(n170), .B(n163), .Y(n279) );
  AO21X2 U264 ( .A0(n36), .A1(n56), .B0(n37), .Y(n313) );
  OAI21X1 U265 ( .A0(n46), .A1(n38), .B0(n41), .Y(n37) );
  BUFX6 U266 ( .A(n60), .Y(n276) );
  ADDHX2 U267 ( .A(n138), .B(n162), .CO(n134), .S(n135) );
  XNOR2X4 U268 ( .A(n313), .B(n4), .Y(product[11]) );
  BUFX3 U269 ( .A(n157), .Y(n304) );
  BUFX16 U270 ( .A(n240), .Y(n224) );
  XNOR2X2 U271 ( .A(a[5]), .B(a[6]), .Y(n240) );
  OAI21X2 U272 ( .A0(n276), .A1(n64), .B0(n61), .Y(n59) );
  NAND2X4 U273 ( .A(n127), .B(n128), .Y(n64) );
  BUFX3 U274 ( .A(n156), .Y(n277) );
  INVX3 U275 ( .A(n233), .Y(n299) );
  CLKBUFX4 U276 ( .A(a[5]), .Y(n233) );
  NOR2X4 U277 ( .A(n112), .B(n116), .Y(n49) );
  BUFX8 U278 ( .A(n57), .Y(n278) );
  XOR2X4 U279 ( .A(n69), .B(n10), .Y(product[5]) );
  NOR2X2 U280 ( .A(n171), .B(n139), .Y(n83) );
  OAI22X2 U281 ( .A0(n223), .A1(n231), .B0(n207), .B1(n227), .Y(n139) );
  AOI21X1 U282 ( .A0(n58), .A1(n66), .B0(n59), .Y(n57) );
  INVX4 U283 ( .A(n278), .Y(n56) );
  OAI22X1 U284 ( .A0(n223), .A1(n204), .B0(n203), .B1(n227), .Y(n169) );
  XNOR2X1 U285 ( .A(b[4]), .B(n234), .Y(n193) );
  XNOR2X1 U286 ( .A(b[3]), .B(n233), .Y(n185) );
  NAND2X1 U287 ( .A(n306), .B(n307), .Y(n201) );
  XNOR2X1 U288 ( .A(b[6]), .B(n235), .Y(n200) );
  XNOR2X1 U289 ( .A(b[7]), .B(n235), .Y(n199) );
  XNOR2X1 U290 ( .A(b[3]), .B(n234), .Y(n194) );
  XNOR2X1 U291 ( .A(b[1]), .B(n233), .Y(n187) );
  XNOR2X1 U292 ( .A(b[4]), .B(n232), .Y(n175) );
  NAND2X1 U293 ( .A(n298), .B(n299), .Y(n301) );
  OR2X1 U294 ( .A(n222), .B(n230), .Y(n302) );
  XOR2X1 U295 ( .A(a[5]), .B(a[4]), .Y(n217) );
  NAND2X1 U296 ( .A(n286), .B(n287), .Y(n206) );
  OR2X2 U297 ( .A(n288), .B(n289), .Y(n74) );
  CLKXOR2X2 U298 ( .A(n65), .B(n9), .Y(product[6]) );
  XNOR2X2 U299 ( .A(n56), .B(n7), .Y(product[8]) );
  XOR2X1 U300 ( .A(a[7]), .B(a[6]), .Y(n216) );
  XOR2X1 U301 ( .A(n12), .B(n77), .Y(product[3]) );
  CLKINVX1 U302 ( .A(n75), .Y(n96) );
  BUFX4 U303 ( .A(n243), .Y(n227) );
  OR2X2 U304 ( .A(n222), .B(n197), .Y(n294) );
  XNOR2X1 U305 ( .A(n234), .B(b[0]), .Y(n197) );
  OAI22X1 U306 ( .A0(n221), .A1(n183), .B0(n182), .B1(n225), .Y(n148) );
  NAND2X1 U307 ( .A(n300), .B(n301), .Y(n182) );
  XNOR2X1 U308 ( .A(n13), .B(n311), .Y(product[2]) );
  AOI21X2 U309 ( .A0(n275), .A1(n311), .B0(n79), .Y(n77) );
  OAI22X1 U310 ( .A0(n223), .A1(n200), .B0(n199), .B1(n227), .Y(n165) );
  BUFX12 U311 ( .A(n239), .Y(n223) );
  BUFX4 U312 ( .A(n241), .Y(n225) );
  XNOR2X2 U313 ( .A(a[3]), .B(a[4]), .Y(n241) );
  AOI21XL U314 ( .A0(n20), .A1(n282), .B0(n17), .Y(n15) );
  OR2X1 U315 ( .A(n103), .B(n102), .Y(n281) );
  OR2X1 U316 ( .A(n140), .B(n99), .Y(n282) );
  NOR2X1 U317 ( .A(n109), .B(n111), .Y(n40) );
  AND2X2 U318 ( .A(n90), .B(n50), .Y(n283) );
  NAND2X1 U319 ( .A(n296), .B(n297), .Y(n158) );
  NAND2X1 U320 ( .A(n294), .B(n295), .Y(n162) );
  OAI22X2 U321 ( .A0(n220), .A1(n177), .B0(n176), .B1(n224), .Y(n113) );
  CLKBUFX8 U322 ( .A(n236), .Y(n220) );
  CMPR42X2 U323 ( .A(n144), .B(n158), .C(n165), .D(n124), .ICI(n125), .S(n122), 
        .ICO(n120), .CO(n121) );
  NAND2X2 U324 ( .A(n117), .B(n121), .Y(n55) );
  XOR2X4 U325 ( .A(n312), .B(n8), .Y(product[7]) );
  INVX4 U326 ( .A(n14), .Y(product[1]) );
  NAND2XL U327 ( .A(n235), .B(b[0]), .Y(n286) );
  NAND2X1 U328 ( .A(n284), .B(n285), .Y(n287) );
  INVX1 U329 ( .A(n235), .Y(n284) );
  INVXL U330 ( .A(b[0]), .Y(n285) );
  BUFX8 U331 ( .A(a[1]), .Y(n235) );
  NOR2X2 U332 ( .A(n77), .B(n75), .Y(n288) );
  CLKINVX1 U333 ( .A(n76), .Y(n289) );
  NOR2X4 U334 ( .A(n135), .B(n169), .Y(n75) );
  NAND2X2 U335 ( .A(n135), .B(n169), .Y(n76) );
  XNOR2X2 U336 ( .A(n74), .B(n11), .Y(product[4]) );
  NOR2XL U337 ( .A(n221), .B(n185), .Y(n290) );
  NOR2XL U338 ( .A(n184), .B(n225), .Y(n291) );
  OR2X2 U339 ( .A(n290), .B(n291), .Y(n150) );
  BUFX12 U340 ( .A(n237), .Y(n221) );
  XNOR2X1 U341 ( .A(b[4]), .B(n233), .Y(n184) );
  CMPR42X2 U342 ( .A(n150), .B(n164), .C(n123), .D(n120), .ICI(n119), .S(n117), 
        .ICO(n115), .CO(n116) );
  OR2XL U343 ( .A(n220), .B(n176), .Y(n292) );
  OR2XL U344 ( .A(n175), .B(n224), .Y(n293) );
  NAND2X1 U345 ( .A(n292), .B(n293), .Y(n142) );
  OR2XL U346 ( .A(n196), .B(n226), .Y(n295) );
  XNOR2X2 U347 ( .A(b[1]), .B(n234), .Y(n196) );
  OR2XL U348 ( .A(n222), .B(n193), .Y(n296) );
  OR2XL U349 ( .A(n192), .B(n226), .Y(n297) );
  NAND2XL U350 ( .A(b[6]), .B(n233), .Y(n300) );
  INVXL U351 ( .A(b[6]), .Y(n298) );
  BUFX20 U352 ( .A(n238), .Y(n222) );
  BUFX20 U353 ( .A(n242), .Y(n226) );
  CMPR42X2 U354 ( .A(n277), .B(n149), .C(n114), .D(n118), .ICI(n115), .S(n112), 
        .ICO(n110), .CO(n111) );
  OAI22X1 U355 ( .A0(n221), .A1(n184), .B0(n183), .B1(n225), .Y(n149) );
  OAI22X1 U356 ( .A0(n223), .A1(n203), .B0(n202), .B1(n227), .Y(n168) );
  NAND2X1 U357 ( .A(n96), .B(n76), .Y(n12) );
  ADDFHX2 U358 ( .A(n273), .B(n153), .CI(n131), .CO(n128), .S(n129) );
  OAI22X1 U359 ( .A0(n221), .A1(n188), .B0(n187), .B1(n225), .Y(n153) );
  CMPR42X2 U360 ( .A(n113), .B(n142), .C(n148), .D(n155), .ICI(n110), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X1 U361 ( .A(b[7]), .B(n234), .Y(n190) );
  AO21X4 U362 ( .A0(n56), .A1(n52), .B0(n53), .Y(n308) );
  OAI22X1 U363 ( .A0(n223), .A1(n201), .B0(n200), .B1(n227), .Y(n166) );
  NAND2X2 U364 ( .A(n217), .B(n241), .Y(n237) );
  NAND2X2 U365 ( .A(n216), .B(n240), .Y(n236) );
  XNOR2X1 U366 ( .A(b[5]), .B(n233), .Y(n183) );
  BUFX8 U367 ( .A(a[3]), .Y(n234) );
  NAND2X4 U368 ( .A(n218), .B(n226), .Y(n238) );
  XOR2X1 U369 ( .A(a[3]), .B(a[2]), .Y(n218) );
  OAI22X1 U370 ( .A0(n221), .A1(n299), .B0(n225), .B1(n189), .Y(n137) );
  OAI22X1 U371 ( .A0(n221), .A1(n187), .B0(n186), .B1(n225), .Y(n152) );
  OAI22X1 U372 ( .A0(n220), .A1(n179), .B0(n178), .B1(n224), .Y(n144) );
  OAI22X1 U373 ( .A0(n220), .A1(n178), .B0(n177), .B1(n224), .Y(n143) );
  XNOR2X1 U374 ( .A(b[1]), .B(n232), .Y(n178) );
  OAI22X1 U375 ( .A0(n221), .A1(n186), .B0(n185), .B1(n225), .Y(n151) );
  AOI21X4 U376 ( .A0(n74), .A1(n280), .B0(n71), .Y(n69) );
  XOR2X4 U377 ( .A(n42), .B(n5), .Y(product[10]) );
  XOR2X4 U378 ( .A(n308), .B(n283), .Y(product[9]) );
  OAI22X1 U379 ( .A0(n220), .A1(n228), .B0(n224), .B1(n180), .Y(n136) );
  XNOR2X1 U380 ( .A(b[4]), .B(n235), .Y(n202) );
  CMPR42X2 U381 ( .A(n145), .B(n152), .C(n159), .D(n166), .ICI(n130), .S(n127), 
        .ICO(n125), .CO(n126) );
  XNOR2X2 U382 ( .A(b[5]), .B(n234), .Y(n192) );
  XNOR2X2 U383 ( .A(b[1]), .B(n235), .Y(n205) );
  XNOR2X2 U384 ( .A(b[6]), .B(n234), .Y(n191) );
  NAND2XL U385 ( .A(b[5]), .B(n235), .Y(n306) );
  NAND2X1 U386 ( .A(n305), .B(n284), .Y(n307) );
  INVXL U387 ( .A(b[5]), .Y(n305) );
  OR2XL U388 ( .A(n195), .B(n226), .Y(n310) );
  OR2X1 U389 ( .A(n222), .B(n196), .Y(n309) );
  NAND2X2 U390 ( .A(n309), .B(n310), .Y(n161) );
  CLKBUFX6 U391 ( .A(a[7]), .Y(n232) );
  OA21X2 U392 ( .A0(n65), .A1(n63), .B0(n64), .Y(n312) );
  OAI21X1 U393 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  NAND2BX2 U394 ( .AN(n83), .B(n84), .Y(n14) );
  OAI21X2 U395 ( .A0(n69), .A1(n67), .B0(n68), .Y(n66) );
  NAND2X1 U396 ( .A(n281), .B(n27), .Y(n3) );
  OAI21XL U397 ( .A0(n33), .A1(n41), .B0(n34), .Y(n32) );
  XNOR2X1 U398 ( .A(b[2]), .B(n234), .Y(n195) );
  NOR2XL U399 ( .A(n45), .B(n38), .Y(n36) );
  OAI21X2 U400 ( .A0(n55), .A1(n49), .B0(n50), .Y(n48) );
  INVXL U401 ( .A(n55), .Y(n53) );
  NOR2X1 U402 ( .A(n101), .B(n100), .Y(n21) );
  INVXL U403 ( .A(n234), .Y(n230) );
  ADDHX1 U404 ( .A(n136), .B(n151), .CO(n123), .S(n124) );
  NAND2BXL U405 ( .AN(b[0]), .B(n234), .Y(n198) );
  OAI22XL U406 ( .A0(n222), .A1(n192), .B0(n191), .B1(n226), .Y(n157) );
  NOR2BXL U407 ( .AN(b[0]), .B(n227), .Y(product[0]) );
  AO21XL U408 ( .A0(n222), .A1(n226), .B0(n190), .Y(n155) );
  ADDFXL U409 ( .A(n105), .B(n141), .CI(n146), .CO(n101), .S(n102) );
  AO21XL U410 ( .A0(n221), .A1(n225), .B0(n181), .Y(n146) );
  OAI22X1 U411 ( .A0(n220), .A1(n173), .B0(n172), .B1(n224), .Y(n99) );
  AO21XL U412 ( .A0(n220), .A1(n224), .B0(n172), .Y(n140) );
  INVX1 U413 ( .A(a[0]), .Y(n243) );
  XNOR2XL U414 ( .A(b[7]), .B(n233), .Y(n181) );
  CLKINVX1 U415 ( .A(n48), .Y(n46) );
  CLKINVX1 U416 ( .A(n66), .Y(n65) );
  NAND2X1 U417 ( .A(n275), .B(n81), .Y(n13) );
  NAND2X1 U418 ( .A(n280), .B(n73), .Y(n11) );
  NAND2X1 U419 ( .A(n92), .B(n61), .Y(n8) );
  CLKINVX1 U420 ( .A(n276), .Y(n92) );
  NAND2X1 U421 ( .A(n52), .B(n55), .Y(n7) );
  XNOR2X1 U422 ( .A(n28), .B(n3), .Y(product[12]) );
  XNOR2X1 U423 ( .A(n20), .B(n1), .Y(product[14]) );
  NAND2X1 U424 ( .A(n282), .B(n19), .Y(n1) );
  CLKINVX1 U425 ( .A(n73), .Y(n71) );
  AOI21X1 U426 ( .A0(n28), .A1(n281), .B0(n25), .Y(n23) );
  CLKINVX1 U427 ( .A(n27), .Y(n25) );
  CLKINVX1 U428 ( .A(n81), .Y(n79) );
  OAI21X1 U429 ( .A0(n29), .A1(n278), .B0(n30), .Y(n28) );
  NAND2X1 U430 ( .A(n47), .B(n31), .Y(n29) );
  AOI21X1 U431 ( .A0(n48), .A1(n31), .B0(n32), .Y(n30) );
  NOR2X1 U432 ( .A(n40), .B(n33), .Y(n31) );
  CLKINVX1 U433 ( .A(n49), .Y(n90) );
  NAND2X1 U434 ( .A(n39), .B(n41), .Y(n5) );
  NAND2X1 U435 ( .A(n88), .B(n34), .Y(n4) );
  CLKINVX1 U436 ( .A(n33), .Y(n88) );
  NAND2X1 U437 ( .A(n94), .B(n68), .Y(n10) );
  CLKINVX1 U438 ( .A(n67), .Y(n94) );
  XOR2X1 U439 ( .A(n23), .B(n2), .Y(product[13]) );
  NAND2X1 U440 ( .A(n86), .B(n22), .Y(n2) );
  CLKINVX1 U441 ( .A(n21), .Y(n86) );
  CLKINVX1 U442 ( .A(n39), .Y(n38) );
  CLKINVX1 U443 ( .A(n40), .Y(n39) );
  NAND2X1 U444 ( .A(n93), .B(n64), .Y(n9) );
  CLKINVX1 U445 ( .A(n19), .Y(n17) );
  NOR2X2 U446 ( .A(n122), .B(n126), .Y(n60) );
  NOR2X2 U447 ( .A(n108), .B(n104), .Y(n33) );
  NOR2X2 U448 ( .A(n129), .B(n132), .Y(n67) );
  NAND2X1 U449 ( .A(n109), .B(n111), .Y(n41) );
  NAND2X1 U450 ( .A(n122), .B(n126), .Y(n61) );
  NAND2X1 U451 ( .A(n112), .B(n116), .Y(n50) );
  NAND2X1 U452 ( .A(n108), .B(n104), .Y(n34) );
  NAND2X1 U453 ( .A(n133), .B(n134), .Y(n73) );
  NAND2X1 U454 ( .A(n129), .B(n132), .Y(n68) );
  CLKINVX1 U455 ( .A(n113), .Y(n114) );
  NAND2X1 U456 ( .A(n103), .B(n102), .Y(n27) );
  NAND2X1 U457 ( .A(n101), .B(n100), .Y(n22) );
  NAND2X1 U458 ( .A(n140), .B(n99), .Y(n19) );
  CLKINVX1 U459 ( .A(n99), .Y(n100) );
  CLKINVX1 U460 ( .A(n235), .Y(n231) );
  NAND2BX1 U461 ( .AN(b[0]), .B(n235), .Y(n207) );
  NOR2BX1 U462 ( .AN(b[0]), .B(n224), .Y(n145) );
  OAI22XL U463 ( .A0(n222), .A1(n194), .B0(n193), .B1(n226), .Y(n159) );
  OR2X1 U464 ( .A(n304), .B(n143), .Y(n118) );
  OAI22XL U465 ( .A0(n222), .A1(n191), .B0(n190), .B1(n226), .Y(n156) );
  XNOR2X1 U466 ( .A(n304), .B(n143), .Y(n119) );
  AO21X1 U467 ( .A0(n223), .A1(n227), .B0(n199), .Y(n164) );
  NOR2BX1 U468 ( .AN(b[0]), .B(n226), .Y(n163) );
  XNOR2X1 U469 ( .A(n232), .B(b[0]), .Y(n179) );
  OAI22XL U470 ( .A0(n222), .A1(n195), .B0(n194), .B1(n226), .Y(n160) );
  XNOR2X1 U471 ( .A(n233), .B(b[0]), .Y(n188) );
  NOR2BX1 U472 ( .AN(b[0]), .B(n225), .Y(n154) );
  ADDFX2 U473 ( .A(n147), .B(n106), .CI(n107), .CO(n103), .S(n104) );
  OAI22XL U474 ( .A0(n221), .A1(n182), .B0(n181), .B1(n225), .Y(n147) );
  CLKINVX1 U475 ( .A(n105), .Y(n106) );
  CLKINVX1 U476 ( .A(n232), .Y(n228) );
  NAND2BX1 U477 ( .AN(b[0]), .B(n233), .Y(n189) );
  NAND2BX1 U478 ( .AN(b[0]), .B(n232), .Y(n180) );
  OAI22XL U479 ( .A0(n220), .A1(n174), .B0(n173), .B1(n224), .Y(n141) );
  NAND2X1 U480 ( .A(n219), .B(n243), .Y(n239) );
  XOR2X1 U481 ( .A(a[0]), .B(a[1]), .Y(n219) );
  XNOR2X1 U482 ( .A(b[3]), .B(n235), .Y(n203) );
  XNOR2X1 U483 ( .A(b[2]), .B(n233), .Y(n186) );
  XNOR2X1 U484 ( .A(b[2]), .B(n232), .Y(n177) );
  XNOR2X1 U485 ( .A(b[3]), .B(n232), .Y(n176) );
  XNOR2X1 U486 ( .A(b[5]), .B(n232), .Y(n174) );
  XNOR2X1 U487 ( .A(b[6]), .B(n232), .Y(n173) );
  XNOR2X1 U488 ( .A(b[7]), .B(n232), .Y(n172) );
endmodule


module CONV_DW_mult_tc_21 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n19, n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n32, n33, n34,
         n36, n37, n39, n40, n41, n42, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n71, n72, n73, n74, n75, n76, n77, n79, n81, n82, n83,
         n84, n86, n88, n90, n92, n93, n94, n95, n96, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299;
  assign product[15] = n15;

  INVX3 U238 ( .A(n73), .Y(n71) );
  XNOR2X2 U239 ( .A(n74), .B(n11), .Y(product[4]) );
  OAI22X1 U240 ( .A0(n223), .A1(n200), .B0(n199), .B1(n227), .Y(n165) );
  OAI22X2 U241 ( .A0(n223), .A1(n201), .B0(n200), .B1(n227), .Y(n166) );
  OAI22X2 U242 ( .A0(n221), .A1(n187), .B0(n186), .B1(n225), .Y(n152) );
  BUFX12 U243 ( .A(n237), .Y(n221) );
  XOR2X4 U244 ( .A(n289), .B(n10), .Y(product[5]) );
  OAI22X2 U245 ( .A0(n222), .A1(n194), .B0(n193), .B1(n226), .Y(n159) );
  ADDFX2 U246 ( .A(n147), .B(n106), .CI(n107), .CO(n103), .S(n104) );
  XOR2X2 U247 ( .A(n12), .B(n77), .Y(product[3]) );
  NAND2X2 U248 ( .A(n96), .B(n76), .Y(n12) );
  AOI21X4 U249 ( .A0(n74), .A1(n95), .B0(n71), .Y(n69) );
  INVX3 U250 ( .A(n72), .Y(n95) );
  NOR2X2 U251 ( .A(n54), .B(n49), .Y(n47) );
  NOR2X2 U252 ( .A(n117), .B(n121), .Y(n54) );
  CMPR42X2 U253 ( .A(n145), .B(n152), .C(n159), .D(n166), .ICI(n130), .S(n127), 
        .ICO(n125), .CO(n126) );
  XNOR2X1 U254 ( .A(b[7]), .B(n233), .Y(n181) );
  AOI21X2 U255 ( .A0(n56), .A1(n52), .B0(n53), .Y(n51) );
  OAI21X2 U256 ( .A0(n46), .A1(n40), .B0(n41), .Y(n37) );
  NOR2X4 U257 ( .A(n45), .B(n40), .Y(n36) );
  NOR2X4 U258 ( .A(n109), .B(n111), .Y(n40) );
  CLKINVX8 U259 ( .A(n47), .Y(n45) );
  AOI21X4 U260 ( .A0(n56), .A1(n47), .B0(n48), .Y(n42) );
  INVX8 U261 ( .A(n57), .Y(n56) );
  ADDFHX4 U262 ( .A(n160), .B(n153), .CI(n131), .CO(n128), .S(n129) );
  OAI22X1 U263 ( .A0(n222), .A1(n195), .B0(n194), .B1(n226), .Y(n160) );
  BUFX6 U264 ( .A(n204), .Y(n273) );
  BUFX8 U265 ( .A(n205), .Y(n274) );
  OAI22X1 U266 ( .A0(n221), .A1(n188), .B0(n187), .B1(n225), .Y(n153) );
  OAI22X2 U267 ( .A0(n223), .A1(n231), .B0(n207), .B1(n227), .Y(n139) );
  BUFX12 U268 ( .A(n243), .Y(n227) );
  XOR2X1 U269 ( .A(a[0]), .B(a[1]), .Y(n219) );
  ADDFHX2 U270 ( .A(n154), .B(n161), .CI(n168), .CO(n132), .S(n133) );
  OR2X4 U271 ( .A(n280), .B(n281), .Y(n105) );
  NOR2X1 U272 ( .A(n174), .B(n224), .Y(n281) );
  OR2X4 U273 ( .A(n170), .B(n163), .Y(n275) );
  XNOR2X1 U274 ( .A(b[2]), .B(n232), .Y(n177) );
  XNOR2X1 U275 ( .A(b[1]), .B(n232), .Y(n178) );
  XNOR2X1 U276 ( .A(b[2]), .B(n235), .Y(n204) );
  CLKINVX1 U277 ( .A(b[1]), .Y(n292) );
  OR2X1 U278 ( .A(n195), .B(n226), .Y(n297) );
  XNOR2X1 U279 ( .A(b[4]), .B(n232), .Y(n175) );
  OR2X1 U280 ( .A(n157), .B(n143), .Y(n118) );
  XNOR2X1 U281 ( .A(b[1]), .B(n235), .Y(n205) );
  CLKBUFX6 U282 ( .A(a[7]), .Y(n232) );
  CLKINVX1 U283 ( .A(n105), .Y(n106) );
  NOR2X1 U284 ( .A(n108), .B(n104), .Y(n33) );
  NAND2X2 U285 ( .A(n285), .B(n286), .Y(product[6]) );
  NAND2X1 U286 ( .A(n65), .B(n284), .Y(n285) );
  XOR2X1 U287 ( .A(a[7]), .B(a[6]), .Y(n216) );
  BUFX4 U288 ( .A(n240), .Y(n224) );
  XNOR2X1 U289 ( .A(n13), .B(n82), .Y(product[2]) );
  CLKINVX1 U290 ( .A(a[0]), .Y(n243) );
  OR2X1 U291 ( .A(n222), .B(n196), .Y(n296) );
  NAND2X1 U292 ( .A(n217), .B(n241), .Y(n237) );
  XNOR2X2 U293 ( .A(a[3]), .B(a[4]), .Y(n241) );
  XNOR2X2 U294 ( .A(a[5]), .B(a[6]), .Y(n240) );
  CLKAND2X3 U295 ( .A(n58), .B(n66), .Y(n298) );
  INVX6 U296 ( .A(n66), .Y(n65) );
  NAND2X1 U297 ( .A(n66), .B(n9), .Y(n286) );
  OAI21X4 U298 ( .A0(n289), .A1(n67), .B0(n68), .Y(n66) );
  OR2X1 U299 ( .A(n103), .B(n102), .Y(n276) );
  OR2X1 U300 ( .A(n140), .B(n99), .Y(n277) );
  BUFX12 U301 ( .A(a[3]), .Y(n234) );
  CLKINVX1 U302 ( .A(n234), .Y(n293) );
  OAI21X1 U303 ( .A0(n29), .A1(n57), .B0(n30), .Y(n28) );
  NOR2X1 U304 ( .A(n133), .B(n134), .Y(n72) );
  OAI21X2 U305 ( .A0(n65), .A1(n63), .B0(n64), .Y(n62) );
  BUFX8 U306 ( .A(a[1]), .Y(n235) );
  NAND2X1 U307 ( .A(n95), .B(n73), .Y(n11) );
  NAND2X1 U308 ( .A(b[1]), .B(n234), .Y(n294) );
  INVX3 U309 ( .A(n14), .Y(product[1]) );
  NOR2X1 U310 ( .A(n222), .B(n191), .Y(n278) );
  NOR2XL U311 ( .A(n190), .B(n226), .Y(n279) );
  OR2X1 U312 ( .A(n278), .B(n279), .Y(n156) );
  XNOR2X1 U313 ( .A(b[6]), .B(n234), .Y(n191) );
  CMPR42X2 U314 ( .A(n156), .B(n149), .C(n114), .D(n118), .ICI(n115), .S(n112), 
        .ICO(n110), .CO(n111) );
  NOR2X1 U315 ( .A(n220), .B(n175), .Y(n280) );
  NOR2X1 U316 ( .A(n220), .B(n178), .Y(n282) );
  NOR2X1 U317 ( .A(n177), .B(n224), .Y(n283) );
  OR2X4 U318 ( .A(n282), .B(n283), .Y(n143) );
  CLKINVX1 U319 ( .A(n9), .Y(n284) );
  NAND2X2 U320 ( .A(n93), .B(n64), .Y(n9) );
  NOR2X1 U321 ( .A(n220), .B(n177), .Y(n287) );
  NOR2X1 U322 ( .A(n176), .B(n224), .Y(n288) );
  OR2X4 U323 ( .A(n287), .B(n288), .Y(n113) );
  BUFX12 U324 ( .A(n236), .Y(n220) );
  CMPR42X2 U325 ( .A(n113), .B(n142), .C(n148), .D(n155), .ICI(n110), .S(n109), 
        .ICO(n107), .CO(n108) );
  XNOR2X4 U326 ( .A(n56), .B(n7), .Y(product[8]) );
  AO21X2 U327 ( .A0(n36), .A1(n56), .B0(n37), .Y(n299) );
  CMPR42X2 U328 ( .A(n150), .B(n164), .C(n123), .D(n120), .ICI(n119), .S(n117), 
        .ICO(n115), .CO(n116) );
  OAI22X1 U329 ( .A0(n220), .A1(n176), .B0(n175), .B1(n224), .Y(n142) );
  XNOR2X1 U330 ( .A(b[7]), .B(n234), .Y(n190) );
  XNOR2X1 U331 ( .A(b[6]), .B(n235), .Y(n200) );
  BUFX4 U332 ( .A(n241), .Y(n225) );
  XNOR2X2 U333 ( .A(b[6]), .B(n233), .Y(n182) );
  BUFX8 U334 ( .A(a[5]), .Y(n233) );
  CMPR42X2 U335 ( .A(n144), .B(n158), .C(n165), .D(n124), .ICI(n125), .S(n122), 
        .ICO(n120), .CO(n121) );
  OAI22X1 U336 ( .A0(n222), .A1(n193), .B0(n192), .B1(n226), .Y(n158) );
  NAND2X2 U337 ( .A(n216), .B(n240), .Y(n236) );
  XNOR2X1 U338 ( .A(b[3]), .B(n234), .Y(n194) );
  OAI22X1 U339 ( .A0(n222), .A1(n192), .B0(n191), .B1(n226), .Y(n157) );
  BUFX12 U340 ( .A(n238), .Y(n222) );
  XOR2X1 U341 ( .A(a[5]), .B(a[4]), .Y(n217) );
  OAI22X2 U342 ( .A0(n223), .A1(n273), .B0(n203), .B1(n227), .Y(n169) );
  XNOR2X2 U343 ( .A(b[4]), .B(n233), .Y(n184) );
  XNOR2X4 U344 ( .A(b[2]), .B(n234), .Y(n195) );
  OAI22X1 U345 ( .A0(n223), .A1(n202), .B0(n201), .B1(n227), .Y(n167) );
  XNOR2X1 U346 ( .A(b[7]), .B(n235), .Y(n199) );
  NAND2X2 U347 ( .A(n218), .B(n242), .Y(n238) );
  BUFX16 U348 ( .A(n242), .Y(n226) );
  XNOR2X2 U349 ( .A(a[1]), .B(a[2]), .Y(n242) );
  NOR2X2 U350 ( .A(n273), .B(n227), .Y(n291) );
  XNOR2X1 U351 ( .A(b[1]), .B(n233), .Y(n187) );
  XNOR2X1 U352 ( .A(b[4]), .B(n234), .Y(n193) );
  OAI22X1 U353 ( .A0(n221), .A1(n185), .B0(n184), .B1(n225), .Y(n150) );
  OAI22X1 U354 ( .A0(n221), .A1(n184), .B0(n183), .B1(n225), .Y(n149) );
  OAI22X1 U355 ( .A0(n220), .A1(n179), .B0(n178), .B1(n224), .Y(n144) );
  BUFX8 U356 ( .A(n69), .Y(n289) );
  XNOR2X4 U357 ( .A(n62), .B(n8), .Y(product[7]) );
  OAI22X1 U358 ( .A0(n222), .A1(n197), .B0(n196), .B1(n226), .Y(n162) );
  NAND2X2 U359 ( .A(n294), .B(n295), .Y(n196) );
  XOR2X4 U360 ( .A(n42), .B(n5), .Y(product[10]) );
  XOR2X4 U361 ( .A(n51), .B(n6), .Y(product[9]) );
  XOR2X1 U362 ( .A(a[3]), .B(a[2]), .Y(n218) );
  BUFX12 U363 ( .A(n239), .Y(n223) );
  OAI22X1 U364 ( .A0(n221), .A1(n186), .B0(n185), .B1(n225), .Y(n151) );
  XNOR2X4 U365 ( .A(b[5]), .B(n234), .Y(n192) );
  XNOR2X2 U366 ( .A(n157), .B(n143), .Y(n119) );
  XNOR2X2 U367 ( .A(b[5]), .B(n233), .Y(n183) );
  OAI22X2 U368 ( .A0(n223), .A1(n206), .B0(n274), .B1(n227), .Y(n171) );
  OAI22X1 U369 ( .A0(n223), .A1(n203), .B0(n202), .B1(n227), .Y(n168) );
  NAND2X2 U370 ( .A(n135), .B(n169), .Y(n76) );
  NOR2X4 U371 ( .A(n135), .B(n169), .Y(n75) );
  ADDHX2 U372 ( .A(n138), .B(n162), .CO(n134), .S(n135) );
  OAI22X1 U373 ( .A0(n222), .A1(n293), .B0(n226), .B1(n198), .Y(n138) );
  ADDHX1 U374 ( .A(n137), .B(n167), .CO(n130), .S(n131) );
  OAI22X1 U375 ( .A0(n221), .A1(n229), .B0(n225), .B1(n189), .Y(n137) );
  NOR2X1 U376 ( .A(n223), .B(n274), .Y(n290) );
  OR2X6 U377 ( .A(n290), .B(n291), .Y(n170) );
  NAND2X2 U378 ( .A(n170), .B(n163), .Y(n81) );
  XNOR2X1 U379 ( .A(n299), .B(n4), .Y(product[11]) );
  NOR2X1 U380 ( .A(n40), .B(n33), .Y(n31) );
  NAND2X1 U381 ( .A(n292), .B(n293), .Y(n295) );
  NOR2X1 U382 ( .A(n60), .B(n63), .Y(n58) );
  OAI21X1 U383 ( .A0(n60), .A1(n64), .B0(n61), .Y(n59) );
  NOR2X4 U384 ( .A(n298), .B(n59), .Y(n57) );
  INVXL U385 ( .A(n75), .Y(n96) );
  INVXL U386 ( .A(n63), .Y(n93) );
  OAI21X1 U387 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  NAND2X1 U388 ( .A(n276), .B(n27), .Y(n3) );
  NAND2BX1 U389 ( .AN(n83), .B(n84), .Y(n14) );
  NOR2X1 U390 ( .A(n171), .B(n139), .Y(n83) );
  NOR2BX1 U391 ( .AN(b[0]), .B(n226), .Y(n163) );
  NAND2X2 U392 ( .A(n296), .B(n297), .Y(n161) );
  OAI22X1 U393 ( .A0(n220), .A1(n228), .B0(n224), .B1(n180), .Y(n136) );
  OAI21XL U394 ( .A0(n33), .A1(n41), .B0(n34), .Y(n32) );
  NOR2X2 U395 ( .A(n127), .B(n128), .Y(n63) );
  XNOR2X1 U396 ( .A(b[4]), .B(n235), .Y(n202) );
  XNOR2X1 U397 ( .A(b[5]), .B(n235), .Y(n201) );
  OAI21X2 U398 ( .A0(n77), .A1(n75), .B0(n76), .Y(n74) );
  AOI21X2 U399 ( .A0(n275), .A1(n82), .B0(n79), .Y(n77) );
  OAI21X2 U400 ( .A0(n55), .A1(n49), .B0(n50), .Y(n48) );
  INVXL U401 ( .A(n55), .Y(n53) );
  NAND2X2 U402 ( .A(n171), .B(n139), .Y(n84) );
  NOR2X1 U403 ( .A(n101), .B(n100), .Y(n21) );
  ADDHX1 U404 ( .A(n136), .B(n151), .CO(n123), .S(n124) );
  XNOR2XL U405 ( .A(n234), .B(b[0]), .Y(n197) );
  NAND2BXL U406 ( .AN(b[0]), .B(n234), .Y(n198) );
  NOR2BXL U407 ( .AN(b[0]), .B(n227), .Y(product[0]) );
  AO21XL U408 ( .A0(n222), .A1(n226), .B0(n190), .Y(n155) );
  ADDFXL U409 ( .A(n105), .B(n141), .CI(n146), .CO(n101), .S(n102) );
  AO21XL U410 ( .A0(n221), .A1(n225), .B0(n181), .Y(n146) );
  OAI22X1 U411 ( .A0(n220), .A1(n173), .B0(n172), .B1(n224), .Y(n99) );
  AO21XL U412 ( .A0(n220), .A1(n224), .B0(n172), .Y(n140) );
  NAND2X2 U413 ( .A(n219), .B(n243), .Y(n239) );
  CLKINVX1 U414 ( .A(n48), .Y(n46) );
  NAND2X1 U415 ( .A(n275), .B(n81), .Y(n13) );
  NAND2X1 U416 ( .A(n94), .B(n68), .Y(n10) );
  CLKINVX1 U417 ( .A(n67), .Y(n94) );
  CLKINVX1 U418 ( .A(n84), .Y(n82) );
  XNOR2X1 U419 ( .A(n20), .B(n1), .Y(product[14]) );
  NAND2X1 U420 ( .A(n277), .B(n19), .Y(n1) );
  NAND2X1 U421 ( .A(n92), .B(n61), .Y(n8) );
  CLKINVX1 U422 ( .A(n60), .Y(n92) );
  NAND2X1 U423 ( .A(n52), .B(n55), .Y(n7) );
  XNOR2X1 U424 ( .A(n28), .B(n3), .Y(product[12]) );
  AOI21X1 U425 ( .A0(n28), .A1(n276), .B0(n25), .Y(n23) );
  CLKINVX1 U426 ( .A(n27), .Y(n25) );
  CLKINVX1 U427 ( .A(n81), .Y(n79) );
  NAND2X1 U428 ( .A(n47), .B(n31), .Y(n29) );
  AOI21X1 U429 ( .A0(n48), .A1(n31), .B0(n32), .Y(n30) );
  AOI21X1 U430 ( .A0(n20), .A1(n277), .B0(n17), .Y(n15) );
  CLKINVX1 U431 ( .A(n19), .Y(n17) );
  NAND2X1 U432 ( .A(n90), .B(n50), .Y(n6) );
  CLKINVX1 U433 ( .A(n49), .Y(n90) );
  NAND2X1 U434 ( .A(n39), .B(n41), .Y(n5) );
  NAND2X1 U435 ( .A(n88), .B(n34), .Y(n4) );
  CLKINVX1 U436 ( .A(n33), .Y(n88) );
  XOR2X1 U437 ( .A(n23), .B(n2), .Y(product[13]) );
  NAND2X1 U438 ( .A(n86), .B(n22), .Y(n2) );
  CLKINVX1 U439 ( .A(n21), .Y(n86) );
  CLKINVX1 U440 ( .A(n40), .Y(n39) );
  CLKINVX1 U441 ( .A(n54), .Y(n52) );
  NOR2X2 U442 ( .A(n122), .B(n126), .Y(n60) );
  NOR2X2 U443 ( .A(n112), .B(n116), .Y(n49) );
  NOR2X2 U444 ( .A(n129), .B(n132), .Y(n67) );
  NAND2X1 U445 ( .A(n117), .B(n121), .Y(n55) );
  NAND2X1 U446 ( .A(n127), .B(n128), .Y(n64) );
  NAND2X1 U447 ( .A(n109), .B(n111), .Y(n41) );
  NAND2X1 U448 ( .A(n122), .B(n126), .Y(n61) );
  NAND2X1 U449 ( .A(n112), .B(n116), .Y(n50) );
  NAND2X1 U450 ( .A(n108), .B(n104), .Y(n34) );
  NAND2X1 U451 ( .A(n133), .B(n134), .Y(n73) );
  NAND2X1 U452 ( .A(n129), .B(n132), .Y(n68) );
  CLKINVX1 U453 ( .A(n113), .Y(n114) );
  NAND2X1 U454 ( .A(n103), .B(n102), .Y(n27) );
  CLKINVX1 U455 ( .A(n99), .Y(n100) );
  NAND2X1 U456 ( .A(n101), .B(n100), .Y(n22) );
  NAND2X1 U457 ( .A(n140), .B(n99), .Y(n19) );
  XNOR2X1 U458 ( .A(n235), .B(b[0]), .Y(n206) );
  CLKINVX1 U459 ( .A(n235), .Y(n231) );
  NAND2BX1 U460 ( .AN(b[0]), .B(n235), .Y(n207) );
  NOR2BX1 U461 ( .AN(b[0]), .B(n225), .Y(n154) );
  NOR2BX1 U462 ( .AN(b[0]), .B(n224), .Y(n145) );
  OAI22XL U463 ( .A0(n221), .A1(n183), .B0(n182), .B1(n225), .Y(n148) );
  AO21X1 U464 ( .A0(n223), .A1(n227), .B0(n199), .Y(n164) );
  CLKINVX1 U465 ( .A(n233), .Y(n229) );
  XNOR2X1 U466 ( .A(n232), .B(b[0]), .Y(n179) );
  XNOR2X1 U467 ( .A(n233), .B(b[0]), .Y(n188) );
  OAI22XL U468 ( .A0(n221), .A1(n182), .B0(n181), .B1(n225), .Y(n147) );
  CLKINVX1 U469 ( .A(n232), .Y(n228) );
  NAND2BX1 U470 ( .AN(b[0]), .B(n233), .Y(n189) );
  NAND2BX1 U471 ( .AN(b[0]), .B(n232), .Y(n180) );
  OAI22XL U472 ( .A0(n220), .A1(n174), .B0(n173), .B1(n224), .Y(n141) );
  XNOR2X1 U473 ( .A(b[3]), .B(n235), .Y(n203) );
  XNOR2X1 U474 ( .A(b[2]), .B(n233), .Y(n186) );
  XNOR2X1 U475 ( .A(b[3]), .B(n233), .Y(n185) );
  XNOR2X1 U476 ( .A(b[3]), .B(n232), .Y(n176) );
  XNOR2X1 U477 ( .A(b[5]), .B(n232), .Y(n174) );
  XNOR2X1 U478 ( .A(b[6]), .B(n232), .Y(n173) );
  XNOR2X1 U479 ( .A(b[7]), .B(n232), .Y(n172) );
endmodule


module CONV_DW01_add_20 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n78, n80,
         n81, n82, n83, n84, n86, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n99, n101, n103, n105, n108, n109, n165, n166, n167, n168, n169, n170
;

  BUFX6 U130 ( .A(n84), .Y(n165) );
  NAND2X6 U131 ( .A(A[5]), .B(B[5]), .Y(n72) );
  INVX3 U132 ( .A(n82), .Y(n105) );
  OAI21X4 U133 ( .A0(n165), .A1(n82), .B0(n83), .Y(n81) );
  NOR2X2 U134 ( .A(A[2]), .B(B[2]), .Y(n82) );
  XNOR2X4 U135 ( .A(n10), .B(n67), .Y(SUM[6]) );
  XOR2X4 U136 ( .A(n44), .B(n6), .Y(SUM[10]) );
  NAND2X2 U137 ( .A(n69), .B(n72), .Y(n11) );
  INVX3 U138 ( .A(n71), .Y(n69) );
  NAND2X2 U139 ( .A(A[4]), .B(B[4]), .Y(n75) );
  NOR2X4 U140 ( .A(A[4]), .B(B[4]), .Y(n74) );
  AOI21X4 U141 ( .A0(n40), .A1(n46), .B0(n41), .Y(n39) );
  NAND2X6 U142 ( .A(n166), .B(n40), .Y(n38) );
  INVX4 U143 ( .A(n42), .Y(n40) );
  AOI21X2 U144 ( .A0(n167), .A1(n89), .B0(n86), .Y(n84) );
  XOR2X2 U145 ( .A(n76), .B(n12), .Y(SUM[4]) );
  XOR2X4 U146 ( .A(n14), .B(n165), .Y(SUM[2]) );
  INVX1 U147 ( .A(n18), .Y(n92) );
  NAND2X1 U148 ( .A(A[8]), .B(B[8]), .Y(n54) );
  NAND2X1 U149 ( .A(A[11]), .B(B[11]), .Y(n35) );
  XOR2X2 U150 ( .A(n62), .B(n9), .Y(SUM[7]) );
  AOI21X1 U151 ( .A0(n49), .A1(n166), .B0(n46), .Y(n44) );
  XOR2X1 U152 ( .A(n28), .B(n3), .Y(SUM[13]) );
  CLKINVX1 U153 ( .A(n26), .Y(n94) );
  NAND2X1 U154 ( .A(n103), .B(n75), .Y(n12) );
  AOI21X2 U155 ( .A0(n58), .A1(n64), .B0(n59), .Y(n57) );
  CLKINVX1 U156 ( .A(n61), .Y(n59) );
  INVX3 U157 ( .A(n60), .Y(n58) );
  OR2X8 U158 ( .A(A[9]), .B(B[9]), .Y(n166) );
  OR2X1 U159 ( .A(A[1]), .B(B[1]), .Y(n167) );
  OR2X2 U160 ( .A(A[3]), .B(B[3]), .Y(n168) );
  NOR2X1 U161 ( .A(A[10]), .B(B[10]), .Y(n42) );
  NOR2X1 U162 ( .A(A[8]), .B(B[8]), .Y(n53) );
  CLKINVX1 U163 ( .A(n53), .Y(n99) );
  OA21X2 U164 ( .A0(n36), .A1(n34), .B0(n35), .Y(n170) );
  CLKXOR2X2 U165 ( .A(n20), .B(n1), .Y(SUM[15]) );
  XNOR2X4 U166 ( .A(n8), .B(n55), .Y(SUM[8]) );
  AOI21X4 U167 ( .A0(n81), .A1(n168), .B0(n78), .Y(n76) );
  AND2X6 U168 ( .A(n37), .B(n29), .Y(n169) );
  NOR2X6 U169 ( .A(n169), .B(n30), .Y(n28) );
  OAI21X4 U170 ( .A0(n38), .A1(n50), .B0(n39), .Y(n37) );
  NOR2X2 U171 ( .A(n34), .B(n31), .Y(n29) );
  OAI21X2 U172 ( .A0(n35), .A1(n31), .B0(n32), .Y(n30) );
  NOR2X4 U173 ( .A(A[6]), .B(B[6]), .Y(n65) );
  NAND2X4 U174 ( .A(A[6]), .B(B[6]), .Y(n66) );
  XNOR2X4 U175 ( .A(n15), .B(n89), .Y(SUM[1]) );
  OAI21X4 U176 ( .A0(n56), .A1(n68), .B0(n57), .Y(n55) );
  XOR2X2 U177 ( .A(n36), .B(n5), .Y(SUM[11]) );
  XNOR2X2 U178 ( .A(n11), .B(n73), .Y(SUM[5]) );
  AOI21X4 U179 ( .A0(n73), .A1(n69), .B0(n70), .Y(n68) );
  OAI21X2 U180 ( .A0(n76), .A1(n74), .B0(n75), .Y(n73) );
  NAND2X2 U181 ( .A(A[9]), .B(B[9]), .Y(n48) );
  XNOR2X4 U182 ( .A(n13), .B(n81), .Y(SUM[3]) );
  XOR2X2 U183 ( .A(n170), .B(n4), .Y(SUM[12]) );
  NAND2X2 U184 ( .A(A[3]), .B(B[3]), .Y(n80) );
  XNOR2X4 U185 ( .A(n7), .B(n49), .Y(SUM[9]) );
  INVX6 U186 ( .A(n50), .Y(n49) );
  NAND2X1 U187 ( .A(A[1]), .B(B[1]), .Y(n88) );
  NAND2X2 U188 ( .A(n92), .B(n19), .Y(n1) );
  AOI21X4 U189 ( .A0(n55), .A1(n99), .B0(n52), .Y(n50) );
  INVX1 U190 ( .A(n74), .Y(n103) );
  NOR2X2 U191 ( .A(A[11]), .B(B[11]), .Y(n34) );
  NOR2X1 U192 ( .A(n109), .B(n108), .Y(n18) );
  NAND2X2 U193 ( .A(n94), .B(n27), .Y(n3) );
  AOI21X1 U194 ( .A0(n25), .A1(n93), .B0(n22), .Y(n20) );
  NAND2BXL U195 ( .AN(n90), .B(n91), .Y(n16) );
  NOR2XL U196 ( .A(A[0]), .B(B[0]), .Y(n90) );
  NAND2XL U197 ( .A(n95), .B(n32), .Y(n4) );
  INVXL U198 ( .A(n31), .Y(n95) );
  NAND2X2 U199 ( .A(n99), .B(n54), .Y(n8) );
  NAND2XL U200 ( .A(n40), .B(n43), .Y(n6) );
  NAND2XL U201 ( .A(n166), .B(n48), .Y(n7) );
  INVX1 U202 ( .A(n65), .Y(n63) );
  INVXL U203 ( .A(n24), .Y(n22) );
  CLKINVX3 U204 ( .A(n91), .Y(n89) );
  CLKINVX1 U205 ( .A(n68), .Y(n67) );
  CLKINVX1 U206 ( .A(n37), .Y(n36) );
  NAND2X1 U207 ( .A(n101), .B(n66), .Y(n10) );
  CLKINVX1 U208 ( .A(n65), .Y(n101) );
  CLKINVX1 U209 ( .A(n72), .Y(n70) );
  NAND2X1 U210 ( .A(n105), .B(n83), .Y(n14) );
  NAND2X1 U211 ( .A(n168), .B(n80), .Y(n13) );
  XNOR2X1 U212 ( .A(n25), .B(n2), .Y(SUM[14]) );
  NAND2X1 U213 ( .A(n93), .B(n24), .Y(n2) );
  CLKINVX1 U214 ( .A(n23), .Y(n93) );
  CLKINVX1 U215 ( .A(n54), .Y(n52) );
  CLKINVX1 U216 ( .A(n80), .Y(n78) );
  OAI21X1 U217 ( .A0(n28), .A1(n26), .B0(n27), .Y(n25) );
  NAND2X1 U218 ( .A(n58), .B(n63), .Y(n56) );
  NAND2X1 U219 ( .A(n58), .B(n61), .Y(n9) );
  AOI21X1 U220 ( .A0(n67), .A1(n63), .B0(n64), .Y(n62) );
  NAND2X1 U221 ( .A(n96), .B(n35), .Y(n5) );
  CLKINVX1 U222 ( .A(n34), .Y(n96) );
  OA21XL U223 ( .A0(n20), .A1(n18), .B0(n19), .Y(SUM[16]) );
  CLKINVX1 U224 ( .A(n66), .Y(n64) );
  CLKINVX1 U225 ( .A(n48), .Y(n46) );
  CLKINVX1 U226 ( .A(n43), .Y(n41) );
  CLKINVX1 U227 ( .A(n88), .Y(n86) );
  NOR2X2 U228 ( .A(A[5]), .B(B[5]), .Y(n71) );
  NAND2X1 U229 ( .A(A[2]), .B(B[2]), .Y(n83) );
  NAND2X1 U230 ( .A(n167), .B(n88), .Y(n15) );
  NOR2X2 U231 ( .A(A[12]), .B(B[12]), .Y(n31) );
  NOR2X2 U232 ( .A(A[14]), .B(B[14]), .Y(n23) );
  NOR2X2 U233 ( .A(A[7]), .B(B[7]), .Y(n60) );
  NOR2X2 U234 ( .A(A[13]), .B(B[13]), .Y(n26) );
  NAND2X1 U235 ( .A(A[7]), .B(B[7]), .Y(n61) );
  NAND2X1 U236 ( .A(A[14]), .B(B[14]), .Y(n24) );
  NAND2X1 U237 ( .A(A[12]), .B(B[12]), .Y(n32) );
  NAND2X1 U238 ( .A(A[10]), .B(B[10]), .Y(n43) );
  NAND2X1 U239 ( .A(A[13]), .B(B[13]), .Y(n27) );
  NAND2X1 U240 ( .A(n109), .B(n108), .Y(n19) );
  CLKINVX1 U241 ( .A(B[15]), .Y(n108) );
  CLKINVX1 U242 ( .A(A[15]), .Y(n109) );
  NAND2X1 U243 ( .A(A[0]), .B(B[0]), .Y(n91) );
  CLKINVX1 U244 ( .A(n16), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_21 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n32, n34,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66,
         n67, n68, n69, n71, n73, n74, n75, n76, n77, n79, n81, n82, n83, n84,
         n85, n86, n88, n89, n91, n92, n93, n95, n96, n97, n98, n100, n102,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176;

  XNOR2X4 U124 ( .A(n58), .B(n9), .Y(SUM[8]) );
  XOR2X2 U125 ( .A(n16), .B(n86), .Y(SUM[1]) );
  OR2X2 U126 ( .A(B[4]), .B(A[4]), .Y(n160) );
  INVX3 U127 ( .A(n73), .Y(n71) );
  NOR2X6 U128 ( .A(B[11]), .B(A[11]), .Y(n44) );
  NOR2X4 U129 ( .A(B[8]), .B(A[8]), .Y(n56) );
  NAND2X2 U130 ( .A(B[8]), .B(A[8]), .Y(n57) );
  XNOR2X4 U131 ( .A(n13), .B(n74), .Y(SUM[4]) );
  AOI21X4 U132 ( .A0(n66), .A1(n97), .B0(n63), .Y(n61) );
  OR2X8 U133 ( .A(n168), .B(n169), .Y(n66) );
  INVX4 U134 ( .A(n67), .Y(n98) );
  NOR2X4 U135 ( .A(n69), .B(n67), .Y(n168) );
  NOR2X4 U136 ( .A(B[5]), .B(A[5]), .Y(n67) );
  NAND2X6 U137 ( .A(n173), .B(n52), .Y(n50) );
  NAND2X6 U138 ( .A(n172), .B(n163), .Y(n173) );
  NAND2X1 U139 ( .A(n46), .B(n6), .Y(n166) );
  NAND2X4 U140 ( .A(n175), .B(n48), .Y(n46) );
  XOR2X2 U141 ( .A(n69), .B(n12), .Y(SUM[5]) );
  NAND2X4 U142 ( .A(B[5]), .B(A[5]), .Y(n68) );
  OAI21X2 U143 ( .A0(n61), .A1(n59), .B0(n60), .Y(n58) );
  OAI21X1 U144 ( .A0(n44), .A1(n48), .B0(n45), .Y(n43) );
  NAND2X1 U145 ( .A(n92), .B(n45), .Y(n6) );
  OR2X4 U146 ( .A(n49), .B(n47), .Y(n175) );
  CLKINVX1 U147 ( .A(n6), .Y(n165) );
  CLKBUFX3 U148 ( .A(A[2]), .Y(n170) );
  NAND2X1 U149 ( .A(B[7]), .B(A[7]), .Y(n60) );
  NOR2X2 U150 ( .A(B[10]), .B(A[10]), .Y(n47) );
  XNOR2X2 U151 ( .A(n40), .B(n5), .Y(SUM[12]) );
  NAND2X1 U152 ( .A(B[13]), .B(A[13]), .Y(n34) );
  CLKINVX1 U153 ( .A(n39), .Y(n37) );
  INVX3 U154 ( .A(n171), .Y(n40) );
  NAND2X1 U155 ( .A(B[2]), .B(n170), .Y(n81) );
  NAND2X1 U156 ( .A(B[4]), .B(A[4]), .Y(n73) );
  XOR2X1 U157 ( .A(n8), .B(n53), .Y(SUM[9]) );
  XOR2X1 U158 ( .A(n14), .B(n77), .Y(SUM[3]) );
  CLKINVX1 U159 ( .A(n75), .Y(n100) );
  NAND2X1 U160 ( .A(n160), .B(n73), .Y(n13) );
  NAND2X1 U161 ( .A(B[0]), .B(A[0]), .Y(n86) );
  XNOR2X2 U162 ( .A(n20), .B(n1), .Y(SUM[16]) );
  OR2X1 U163 ( .A(B[16]), .B(A[15]), .Y(n176) );
  OR2X1 U164 ( .A(B[2]), .B(n170), .Y(n161) );
  OR2X1 U165 ( .A(B[13]), .B(A[13]), .Y(n162) );
  OR2X8 U166 ( .A(B[9]), .B(A[9]), .Y(n163) );
  NAND2X1 U167 ( .A(n100), .B(n76), .Y(n14) );
  OAI21X2 U168 ( .A0(n77), .A1(n75), .B0(n76), .Y(n74) );
  XOR2X2 U169 ( .A(n7), .B(n49), .Y(SUM[10]) );
  INVX3 U170 ( .A(n50), .Y(n49) );
  AO21X1 U171 ( .A0(n40), .A1(n36), .B0(n37), .Y(n174) );
  INVXL U172 ( .A(n57), .Y(n55) );
  OAI21X2 U173 ( .A0(n171), .A1(n29), .B0(n30), .Y(n28) );
  AOI21X2 U174 ( .A0(n28), .A1(n89), .B0(n25), .Y(n23) );
  NAND2X6 U175 ( .A(n164), .B(n165), .Y(n167) );
  NAND2X6 U176 ( .A(n166), .B(n167), .Y(SUM[11]) );
  INVX4 U177 ( .A(n46), .Y(n164) );
  INVXL U178 ( .A(n68), .Y(n169) );
  AOI21X4 U179 ( .A0(n74), .A1(n160), .B0(n71), .Y(n69) );
  OAI21X1 U180 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  XNOR2X4 U181 ( .A(n11), .B(n66), .Y(SUM[6]) );
  XOR2X4 U182 ( .A(n10), .B(n61), .Y(SUM[7]) );
  XOR2X4 U183 ( .A(n23), .B(n2), .Y(SUM[15]) );
  AOI21X4 U184 ( .A0(n161), .A1(n82), .B0(n79), .Y(n77) );
  BUFX6 U185 ( .A(n41), .Y(n171) );
  XNOR2X4 U186 ( .A(n15), .B(n82), .Y(SUM[2]) );
  NAND2X2 U187 ( .A(B[6]), .B(A[6]), .Y(n65) );
  NAND2X1 U188 ( .A(n91), .B(n39), .Y(n5) );
  AOI21X2 U189 ( .A0(n58), .A1(n95), .B0(n55), .Y(n53) );
  NOR2X1 U190 ( .A(n44), .B(n47), .Y(n42) );
  INVX3 U191 ( .A(n53), .Y(n172) );
  XNOR2X2 U192 ( .A(n174), .B(n4), .Y(SUM[13]) );
  INVXL U193 ( .A(n44), .Y(n92) );
  NOR2X2 U194 ( .A(B[6]), .B(A[6]), .Y(n64) );
  NAND2X2 U195 ( .A(B[9]), .B(A[9]), .Y(n52) );
  NAND2X2 U196 ( .A(n88), .B(n22), .Y(n2) );
  INVX3 U197 ( .A(n21), .Y(n88) );
  INVXL U198 ( .A(n38), .Y(n91) );
  INVXL U199 ( .A(n27), .Y(n25) );
  OAI21X2 U200 ( .A0(n83), .A1(n86), .B0(n84), .Y(n82) );
  INVXL U201 ( .A(n83), .Y(n102) );
  NAND2BXL U202 ( .AN(n85), .B(n86), .Y(n17) );
  NOR2XL U203 ( .A(B[0]), .B(A[0]), .Y(n85) );
  NAND2X2 U204 ( .A(B[10]), .B(A[10]), .Y(n48) );
  NAND2X1 U205 ( .A(n97), .B(n65), .Y(n11) );
  CLKINVX1 U206 ( .A(n64), .Y(n97) );
  NAND2X1 U207 ( .A(n95), .B(n57), .Y(n9) );
  CLKINVX1 U208 ( .A(n56), .Y(n95) );
  XNOR2X1 U209 ( .A(n28), .B(n3), .Y(SUM[14]) );
  NAND2X1 U210 ( .A(n89), .B(n27), .Y(n3) );
  CLKINVX1 U211 ( .A(n26), .Y(n89) );
  AOI21X1 U212 ( .A0(n42), .A1(n50), .B0(n43), .Y(n41) );
  CLKINVX1 U213 ( .A(n65), .Y(n63) );
  NAND2X1 U214 ( .A(n162), .B(n36), .Y(n29) );
  AOI21X1 U215 ( .A0(n162), .A1(n37), .B0(n32), .Y(n30) );
  NAND2X1 U216 ( .A(n96), .B(n60), .Y(n10) );
  CLKINVX1 U217 ( .A(n59), .Y(n96) );
  NAND2X1 U218 ( .A(n163), .B(n52), .Y(n8) );
  NAND2X1 U219 ( .A(n93), .B(n48), .Y(n7) );
  CLKINVX1 U220 ( .A(n47), .Y(n93) );
  NAND2X1 U221 ( .A(n162), .B(n34), .Y(n4) );
  NAND2X1 U222 ( .A(n98), .B(n68), .Y(n12) );
  CLKINVX1 U223 ( .A(n38), .Y(n36) );
  CLKINVX1 U224 ( .A(n34), .Y(n32) );
  CLKINVX1 U225 ( .A(n81), .Y(n79) );
  NAND2X1 U226 ( .A(n161), .B(n81), .Y(n15) );
  NAND2X1 U227 ( .A(n176), .B(n19), .Y(n1) );
  NAND2X1 U228 ( .A(B[16]), .B(A[15]), .Y(n19) );
  NOR2X2 U229 ( .A(B[14]), .B(A[14]), .Y(n26) );
  NOR2X2 U230 ( .A(B[12]), .B(A[12]), .Y(n38) );
  NOR2X2 U231 ( .A(B[3]), .B(A[3]), .Y(n75) );
  NOR2X2 U232 ( .A(B[7]), .B(A[7]), .Y(n59) );
  NOR2X2 U233 ( .A(B[15]), .B(A[15]), .Y(n21) );
  NAND2X1 U234 ( .A(B[12]), .B(A[12]), .Y(n39) );
  NAND2X1 U235 ( .A(B[14]), .B(A[14]), .Y(n27) );
  NAND2X1 U236 ( .A(B[3]), .B(A[3]), .Y(n76) );
  NAND2X1 U237 ( .A(B[11]), .B(A[11]), .Y(n45) );
  NAND2X1 U238 ( .A(B[15]), .B(A[15]), .Y(n22) );
  NOR2X1 U239 ( .A(B[1]), .B(A[1]), .Y(n83) );
  NAND2X1 U240 ( .A(B[1]), .B(A[1]), .Y(n84) );
  NAND2X1 U241 ( .A(n102), .B(n84), .Y(n16) );
  CLKINVX1 U242 ( .A(n17), .Y(SUM[0]) );
endmodule


module CONV_DW01_add_22 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n37, n39, n40, n41, n42, n43, n47, n48, n49, n50,
         n51, n52, n53, n54, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66,
         n67, n68, n69, n71, n73, n74, n75, n76, n77, n79, n81, n82, n83, n84,
         n85, n86, n88, n89, n90, n91, n93, n97, n98, n100, n102, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177;

  XOR2X2 U124 ( .A(n7), .B(n43), .Y(SUM[10]) );
  OR2X2 U125 ( .A(B[9]), .B(A[9]), .Y(n162) );
  NOR2X4 U126 ( .A(B[8]), .B(A[8]), .Y(n53) );
  NAND2X4 U127 ( .A(B[8]), .B(A[8]), .Y(n54) );
  NAND2X4 U128 ( .A(n164), .B(n39), .Y(n6) );
  XOR2X4 U129 ( .A(n16), .B(n86), .Y(SUM[1]) );
  NOR2X2 U130 ( .A(B[3]), .B(A[3]), .Y(n75) );
  XOR2X4 U131 ( .A(n14), .B(n77), .Y(SUM[3]) );
  AOI21X4 U132 ( .A0(n163), .A1(n82), .B0(n79), .Y(n77) );
  XOR2X2 U133 ( .A(n12), .B(n69), .Y(SUM[5]) );
  BUFX6 U134 ( .A(B[14]), .Y(n170) );
  CLKINVX1 U135 ( .A(n39), .Y(n37) );
  NAND2X1 U136 ( .A(B[4]), .B(A[4]), .Y(n73) );
  OAI21X2 U137 ( .A0(n75), .A1(n77), .B0(n76), .Y(n74) );
  XNOR2X1 U138 ( .A(n11), .B(n66), .Y(SUM[6]) );
  XNOR2X1 U139 ( .A(n10), .B(n60), .Y(SUM[7]) );
  NAND2X1 U140 ( .A(n168), .B(n169), .Y(SUM[11]) );
  NAND2X1 U141 ( .A(n166), .B(n167), .Y(n169) );
  CLKINVX1 U142 ( .A(n6), .Y(n167) );
  XOR2X1 U143 ( .A(n4), .B(n31), .Y(SUM[13]) );
  CLKINVX1 U144 ( .A(n29), .Y(n90) );
  NAND2X1 U145 ( .A(B[0]), .B(A[0]), .Y(n86) );
  INVX3 U146 ( .A(n61), .Y(n60) );
  OR2X1 U147 ( .A(B[4]), .B(A[4]), .Y(n161) );
  OR2X1 U148 ( .A(B[2]), .B(A[2]), .Y(n163) );
  OR2X4 U149 ( .A(B[11]), .B(A[11]), .Y(n164) );
  NAND2X1 U150 ( .A(B[9]), .B(A[9]), .Y(n47) );
  CLKINVX1 U151 ( .A(n5), .Y(n172) );
  NAND2X2 U152 ( .A(n173), .B(n174), .Y(SUM[12]) );
  NAND2X2 U153 ( .A(n35), .B(n172), .Y(n173) );
  OR2X4 U154 ( .A(n31), .B(n29), .Y(n176) );
  INVX3 U155 ( .A(n32), .Y(n31) );
  INVX3 U156 ( .A(n33), .Y(n91) );
  OAI21X2 U157 ( .A0(n23), .A1(n21), .B0(n22), .Y(n20) );
  AOI21X2 U158 ( .A0(n24), .A1(n32), .B0(n25), .Y(n23) );
  AOI21X4 U159 ( .A0(n74), .A1(n161), .B0(n71), .Y(n69) );
  XNOR2X4 U160 ( .A(n20), .B(n1), .Y(SUM[16]) );
  NAND2X1 U161 ( .A(n48), .B(n162), .Y(n165) );
  CLKAND2X3 U162 ( .A(n165), .B(n47), .Y(n43) );
  NAND2X2 U163 ( .A(B[11]), .B(A[11]), .Y(n39) );
  NAND2X1 U164 ( .A(n40), .B(n6), .Y(n168) );
  INVX1 U165 ( .A(n40), .Y(n166) );
  OAI21X4 U166 ( .A0(n43), .A1(n41), .B0(n42), .Y(n40) );
  XNOR2X4 U167 ( .A(n175), .B(n9), .Y(SUM[8]) );
  XNOR2X4 U168 ( .A(n28), .B(n3), .Y(SUM[14]) );
  OAI21X2 U169 ( .A0(n67), .A1(n69), .B0(n68), .Y(n66) );
  NAND2X4 U170 ( .A(B[7]), .B(A[7]), .Y(n59) );
  OAI21X1 U171 ( .A0(n30), .A1(n26), .B0(n27), .Y(n25) );
  NOR2X6 U172 ( .A(n170), .B(A[14]), .Y(n26) );
  NAND2X2 U173 ( .A(n170), .B(A[14]), .Y(n27) );
  XOR2X2 U174 ( .A(n23), .B(n2), .Y(SUM[15]) );
  OAI21X2 U175 ( .A0(n35), .A1(n33), .B0(n34), .Y(n32) );
  NAND2X2 U176 ( .A(n51), .B(n56), .Y(n49) );
  NAND2X1 U177 ( .A(n171), .B(n5), .Y(n174) );
  INVXL U178 ( .A(n35), .Y(n171) );
  AOI21X4 U179 ( .A0(n40), .A1(n164), .B0(n37), .Y(n35) );
  NAND2X2 U180 ( .A(n176), .B(n30), .Y(n28) );
  NAND2X1 U181 ( .A(n89), .B(n27), .Y(n3) );
  NAND2XL U182 ( .A(n98), .B(n68), .Y(n12) );
  INVXL U183 ( .A(n67), .Y(n98) );
  INVX1 U184 ( .A(n75), .Y(n100) );
  NAND2X1 U185 ( .A(n100), .B(n76), .Y(n14) );
  AO21XL U186 ( .A0(n56), .A1(n60), .B0(n57), .Y(n175) );
  CLKINVX3 U187 ( .A(n58), .Y(n56) );
  NAND2BXL U188 ( .AN(n85), .B(n86), .Y(n17) );
  INVX3 U189 ( .A(n53), .Y(n51) );
  OAI21X2 U190 ( .A0(n49), .A1(n61), .B0(n50), .Y(n48) );
  INVXL U191 ( .A(n26), .Y(n89) );
  AOI21X2 U192 ( .A0(n66), .A1(n97), .B0(n63), .Y(n61) );
  INVX3 U193 ( .A(n59), .Y(n57) );
  NAND2X2 U194 ( .A(B[13]), .B(A[13]), .Y(n30) );
  INVX1 U195 ( .A(n83), .Y(n102) );
  NAND2X1 U196 ( .A(B[5]), .B(A[5]), .Y(n68) );
  NAND2X1 U197 ( .A(B[6]), .B(A[6]), .Y(n65) );
  NAND2X2 U198 ( .A(n177), .B(n19), .Y(n1) );
  OR2X2 U199 ( .A(B[16]), .B(A[16]), .Y(n177) );
  OAI21X2 U200 ( .A0(n83), .A1(n86), .B0(n84), .Y(n82) );
  NOR2X2 U201 ( .A(B[1]), .B(A[1]), .Y(n83) );
  NAND2X2 U202 ( .A(B[2]), .B(A[2]), .Y(n81) );
  NAND2XL U203 ( .A(n102), .B(n84), .Y(n16) );
  NOR2XL U204 ( .A(B[0]), .B(A[0]), .Y(n85) );
  NOR2X4 U205 ( .A(B[13]), .B(A[13]), .Y(n29) );
  NAND2X1 U206 ( .A(n88), .B(n22), .Y(n2) );
  CLKINVX1 U207 ( .A(n21), .Y(n88) );
  CLKINVX1 U208 ( .A(n65), .Y(n63) );
  CLKINVX1 U209 ( .A(n81), .Y(n79) );
  NAND2X1 U210 ( .A(n51), .B(n54), .Y(n9) );
  XNOR2X1 U211 ( .A(n15), .B(n82), .Y(SUM[2]) );
  NAND2X1 U212 ( .A(n163), .B(n81), .Y(n15) );
  NAND2X1 U213 ( .A(n97), .B(n65), .Y(n11) );
  CLKINVX1 U214 ( .A(n64), .Y(n97) );
  XNOR2X1 U215 ( .A(n8), .B(n48), .Y(SUM[9]) );
  NAND2X1 U216 ( .A(n162), .B(n47), .Y(n8) );
  XNOR2X1 U217 ( .A(n13), .B(n74), .Y(SUM[4]) );
  NAND2X1 U218 ( .A(n161), .B(n73), .Y(n13) );
  NAND2X1 U219 ( .A(n56), .B(n59), .Y(n10) );
  NAND2X1 U220 ( .A(B[16]), .B(A[16]), .Y(n19) );
  NOR2X1 U221 ( .A(n29), .B(n26), .Y(n24) );
  CLKINVX1 U222 ( .A(n73), .Y(n71) );
  AOI21X1 U223 ( .A0(n51), .A1(n57), .B0(n52), .Y(n50) );
  NOR2X2 U224 ( .A(B[15]), .B(A[15]), .Y(n21) );
  NAND2X1 U225 ( .A(n93), .B(n42), .Y(n7) );
  CLKINVX1 U226 ( .A(n41), .Y(n93) );
  NAND2X1 U227 ( .A(n91), .B(n34), .Y(n5) );
  NAND2X1 U228 ( .A(B[15]), .B(A[15]), .Y(n22) );
  NAND2X1 U229 ( .A(n90), .B(n30), .Y(n4) );
  CLKINVX1 U230 ( .A(n54), .Y(n52) );
  NOR2X2 U231 ( .A(B[6]), .B(A[6]), .Y(n64) );
  NOR2X2 U232 ( .A(B[7]), .B(A[7]), .Y(n58) );
  NOR2X2 U233 ( .A(B[12]), .B(A[12]), .Y(n33) );
  NOR2X2 U234 ( .A(B[5]), .B(A[5]), .Y(n67) );
  NOR2X2 U235 ( .A(B[10]), .B(A[10]), .Y(n41) );
  NAND2X1 U236 ( .A(B[12]), .B(A[12]), .Y(n34) );
  NAND2X1 U237 ( .A(B[10]), .B(A[10]), .Y(n42) );
  NAND2X1 U238 ( .A(B[1]), .B(A[1]), .Y(n84) );
  NAND2X1 U239 ( .A(B[3]), .B(A[3]), .Y(n76) );
  CLKINVX1 U240 ( .A(n17), .Y(SUM[0]) );
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
         \if_in[0][1] , \if_in[0][0] , N266, N267, N268, N269, N270, N271,
         N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N99,
         N98, N97, N96, N95, N94, N93, N92, N91, N90, N9, N89, N88, N87, N86,
         N85, N84, N83, N82, N81, N80, N8, N79, N78, N77, N76, N75, N74, N73,
         N72, N71, N70, N7, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60,
         N6, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N5, N49, N48,
         N47, N46, N45, N44, N43, N42, N41, N40, N4, N39, N38, N37, N36, N35,
         N34, N33, N32, N31, N30, N3, N29, N28, N27, N265, N264, N263, N262,
         N261, N260, N26, N259, N258, N257, N256, N255, N254, N253, N252, N251,
         N250, N25, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240,
         N24, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N23,
         N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N22, N219,
         N218, N217, N216, N215, N214, N213, N212, N211, N210, N21, N209, N208,
         N207, N206, N205, N204, N203, N202, N201, N200, N20, N199, N198, N197,
         N196, N195, N194, N193, N192, N191, N190, N19, N189, N188, N187, N186,
         N185, N184, N183, N182, N181, N180, N18, N179, N178, N177, N176, N175,
         N174, N173, N172, N171, N170, N17, N169, N168, N167, N166, N165, N164,
         N163, N162, N161, N160, N16, N159, N158, N157, N156, N155, N154, N153,
         N152, N151, N150, N15, N149, N148, N147, N146, N145, N144, N143, N142,
         N141, N140, N14, N139, N138, N137, N136, N135, N134, N133, N132, N131,
         N130, N13, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120,
         N12, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N11,
         N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N10, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  EDFFX4 \w_in_reg[2][1]  ( .D(w_in2[1]), .E(n7), .CK(clk), .Q(\w_in[2][1] )
         );
  CONV_DW_mult_tc_6 mult_67_3 ( .a({\w_in[2][7] , \w_in[2][6] , \w_in[2][5] , 
        \w_in[2][4] , \w_in[2][3] , \w_in[2][2] , \w_in[2][1] , \w_in[2][0] }), 
        .b({\if_in[2][7] , \if_in[2][6] , \if_in[2][5] , \if_in[2][4] , 
        \if_in[2][3] , \if_in[2][2] , \if_in[2][1] , \if_in[2][0] }), 
        .product({N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52}) );
  CONV_DW_mult_tc_4 mult_67_5 ( .a({\w_in[4][7] , \w_in[4][6] , \w_in[4][5] , 
        \w_in[4][4] , \w_in[4][3] , \w_in[4][2] , \w_in[4][1] , \w_in[4][0] }), 
        .b({\if_in[4][7] , \if_in[4][6] , \if_in[4][5] , \if_in[4][4] , 
        \if_in[4][3] , \if_in[4][2] , \if_in[4][1] , \if_in[4][0] }), 
        .product({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120, N119, N118}) );
  CONV_DW_mult_tc_2 mult_67_7 ( .a({\w_in[6][7] , \w_in[6][6] , \w_in[6][5] , 
        \w_in[6][4] , \w_in[6][3] , \w_in[6][2] , \w_in[6][1] , \w_in[6][0] }), 
        .b({\if_in[6][7] , \if_in[6][6] , \if_in[6][5] , \if_in[6][4] , 
        \if_in[6][3] , \if_in[6][2] , \if_in[6][1] , \if_in[6][0] }), 
        .product({N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, 
        N189, N188, N187, N186, N185, N184}) );
  CONV_DW_mult_tc_0 mult_67_9 ( .a({\w_in[8][7] , \w_in[8][6] , \w_in[8][5] , 
        \w_in[8][4] , \w_in[8][3] , \w_in[8][2] , \w_in[8][1] , \w_in[8][0] }), 
        .b({\if_in[8][7] , \if_in[8][6] , \if_in[8][5] , \if_in[8][4] , 
        \if_in[8][3] , \if_in[8][2] , \if_in[8][1] , \if_in[8][0] }), 
        .product({N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, 
        N255, N254, N253, N252, N251, N250}) );
  CONV_DW01_add_7 add_7_root_add_0_root_add_67_8 ( .A({N67, N67, N66, N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52}), .B({N199, 
        N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184}), .CI(1'b0), .SUM({N51, N50, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}) );
  CONV_DW01_add_2 add_5_root_add_0_root_add_67_8 ( .A({N18, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3}), .B({N34, N34, 
        N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, 
        N19}), .CI(1'b0), .SUM({N150, N149, N148, N147, N146, N145, N144, N143, 
        N142, N141, N140, N139, N138, N137, N136, N135, N134}) );
  CONV_DW01_add_15 add_2_root_add_0_root_add_67_8 ( .A({N183, N182, N181, N180, 
        N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168, 
        N167}), .B({N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35}), .CI(1'b0), .SUM({N84, N83, N82, N81, N80, 
        N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68}) );
  CONV_DW01_add_14 add_0_root_add_0_root_add_67_8 ( .A({N84, N83, N82, N81, 
        N80, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68}), .B(
        {N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, 
        N205, N204, N203, N202, N201, N200}), .CI(1'b0), .SUM({N282, N281, 
        N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, 
        N268, N267, N266}) );
  CONV_DW01_add_16 add_6_root_add_0_root_add_67_8 ( .A({N265, N265, N264, N263, 
        N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250}), .B({N133, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118}), .CI(1'b0), .SUM({N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  CONV_DW_mult_tc_17 mult_67 ( .a({\w_in[0][7] , \w_in[0][6] , \w_in[0][5] , 
        \w_in[0][4] , \w_in[0][3] , \w_in[0][2] , \w_in[0][1] , \w_in[0][0] }), 
        .b({\if_in[0][7] , \if_in[0][6] , \if_in[0][5] , \if_in[0][4] , 
        \if_in[0][3] , \if_in[0][2] , \if_in[0][1] , \if_in[0][0] }), 
        .product({N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4, N3}) );
  CONV_DW_mult_tc_18 mult_67_2 ( .a({\w_in[1][7] , \w_in[1][6] , \w_in[1][5] , 
        \w_in[1][4] , \w_in[1][3] , \w_in[1][2] , \w_in[1][1] , \w_in[1][0] }), 
        .b({\if_in[1][7] , \if_in[1][6] , \if_in[1][5] , \if_in[1][4] , 
        \if_in[1][3] , \if_in[1][2] , \if_in[1][1] , \if_in[1][0] }), 
        .product({N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, 
        N22, N21, N20, N19}) );
  CONV_DW_mult_tc_19 mult_67_6 ( .a({\w_in[5][7] , \w_in[5][6] , \w_in[5][5] , 
        \w_in[5][4] , \w_in[5][3] , \w_in[5][2] , \w_in[5][1] , \w_in[5][0] }), 
        .b({\if_in[5][7] , \if_in[5][6] , \if_in[5][5] , \if_in[5][4] , 
        \if_in[5][3] , \if_in[5][2] , \if_in[5][1] , \if_in[5][0] }), 
        .product({N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, 
        N156, N155, N154, N153, N152, N151}) );
  CONV_DW_mult_tc_20 mult_67_4 ( .a({\w_in[3][7] , \w_in[3][6] , \w_in[3][5] , 
        \w_in[3][4] , \w_in[3][3] , \w_in[3][2] , \w_in[3][1] , \w_in[3][0] }), 
        .b({\if_in[3][7] , \if_in[3][6] , \if_in[3][5] , \if_in[3][4] , 
        \if_in[3][3] , \if_in[3][2] , \if_in[3][1] , \if_in[3][0] }), 
        .product({N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85}) );
  CONV_DW_mult_tc_21 mult_67_8 ( .a({\w_in[7][7] , \w_in[7][6] , \w_in[7][5] , 
        \w_in[7][4] , \w_in[7][3] , \w_in[7][2] , \w_in[7][1] , \w_in[7][0] }), 
        .b({\if_in[7][7] , \if_in[7][6] , \if_in[7][5] , \if_in[7][4] , 
        \if_in[7][3] , \if_in[7][2] , \if_in[7][1] , \if_in[7][0] }), 
        .product({N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, 
        N222, N221, N220, N219, N218, N217}) );
  CONV_DW01_add_20 add_4_root_add_0_root_add_67_8 ( .A({N100, N100, N99, N98, 
        N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85}), .B(
        {N232, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, 
        N222, N221, N220, N219, N218, N217}), .CI(1'b0), .SUM({N249, N248, 
        N247, N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233}) );
  CONV_DW01_add_21 add_3_root_add_0_root_add_67_8 ( .A({N166, N166, N165, N164, 
        N163, N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, 
        N151}), .B({N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, 
        N239, N238, N237, N236, N235, N234, N233}), .CI(1'b0), .SUM({N117, 
        N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103, N102, N101}) );
  CONV_DW01_add_22 add_1_root_add_0_root_add_67_8 ( .A({N150, N149, N148, N147, 
        N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        N134}), .B({N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107, N106, N105, N104, N103, N102, N101}), .CI(1'b0), .SUM({N216, 
        N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200}) );
  EDFFX1 \if_in_reg[2][7]  ( .D(if_in2[7]), .E(n2), .CK(clk), .Q(\if_in[2][7] ) );
  EDFFX2 \if_in_reg[8][7]  ( .D(if_in8[7]), .E(if_w), .CK(clk), .Q(
        \if_in[8][7] ) );
  EDFFX2 \if_in_reg[2][0]  ( .D(if_in2[0]), .E(n2), .CK(clk), .Q(\if_in[2][0] ) );
  EDFFX2 \if_in_reg[6][0]  ( .D(if_in6[0]), .E(n5), .CK(clk), .Q(\if_in[6][0] ) );
  EDFFX2 \if_in_reg[4][0]  ( .D(if_in4[0]), .E(n3), .CK(clk), .Q(\if_in[4][0] ) );
  EDFFX4 \w_in_reg[5][7]  ( .D(w_in5[7]), .E(n9), .CK(clk), .Q(\w_in[5][7] )
         );
  EDFFX2 \w_in_reg[0][2]  ( .D(w_in0[2]), .E(n6), .CK(clk), .Q(\w_in[0][2] )
         );
  EDFFX2 \w_in_reg[1][2]  ( .D(w_in1[2]), .E(n6), .CK(clk), .Q(\w_in[1][2] )
         );
  EDFFX2 \w_in_reg[2][0]  ( .D(w_in2[0]), .E(n7), .CK(clk), .Q(\w_in[2][0] )
         );
  EDFFX4 \w_in_reg[6][0]  ( .D(w_in6[0]), .E(w_w), .CK(clk), .Q(\w_in[6][0] )
         );
  EDFFX4 \w_in_reg[1][1]  ( .D(w_in1[1]), .E(n6), .CK(clk), .Q(\w_in[1][1] )
         );
  EDFFX4 \w_in_reg[0][5]  ( .D(w_in0[5]), .E(n6), .CK(clk), .Q(\w_in[0][5] )
         );
  EDFFX4 \w_in_reg[1][5]  ( .D(w_in1[5]), .E(n7), .CK(clk), .Q(\w_in[1][5] )
         );
  EDFFX4 \w_in_reg[0][3]  ( .D(w_in0[3]), .E(n6), .CK(clk), .Q(\w_in[0][3] )
         );
  EDFFX4 \w_in_reg[6][5]  ( .D(w_in6[5]), .E(w_w), .CK(clk), .Q(\w_in[6][5] )
         );
  EDFFX2 \if_in_reg[5][6]  ( .D(if_in5[6]), .E(n4), .CK(clk), .Q(\if_in[5][6] ) );
  EDFFX2 \if_in_reg[0][2]  ( .D(if_in0[2]), .E(n1), .CK(clk), .Q(\if_in[0][2] ) );
  EDFFX2 \if_in_reg[0][1]  ( .D(if_in0[1]), .E(n1), .CK(clk), .Q(\if_in[0][1] ) );
  EDFFX2 \if_in_reg[1][1]  ( .D(if_in1[1]), .E(n1), .CK(clk), .Q(\if_in[1][1] ) );
  EDFFX2 \if_in_reg[2][3]  ( .D(if_in2[3]), .E(n2), .CK(clk), .Q(\if_in[2][3] ) );
  EDFFX2 \if_in_reg[8][0]  ( .D(if_in8[0]), .E(if_w), .CK(clk), .Q(
        \if_in[8][0] ) );
  EDFFX4 \w_in_reg[5][4]  ( .D(w_in5[4]), .E(n9), .CK(clk), .Q(\w_in[5][4] )
         );
  EDFFX4 \w_in_reg[6][4]  ( .D(w_in6[4]), .E(w_w), .CK(clk), .Q(\w_in[6][4] )
         );
  EDFFX4 \w_in_reg[5][1]  ( .D(w_in5[1]), .E(n9), .CK(clk), .Q(\w_in[5][1] )
         );
  EDFFX4 \w_in_reg[5][5]  ( .D(w_in5[5]), .E(n9), .CK(clk), .Q(\w_in[5][5] )
         );
  EDFFX4 \w_in_reg[6][3]  ( .D(w_in6[3]), .E(n9), .CK(clk), .Q(\w_in[6][3] )
         );
  EDFFX2 \if_in_reg[8][1]  ( .D(if_in8[1]), .E(if_w), .CK(clk), .Q(
        \if_in[8][1] ) );
  EDFFX2 \if_in_reg[8][2]  ( .D(if_in8[2]), .E(n1), .CK(clk), .Q(\if_in[8][2] ) );
  EDFFX2 \if_in_reg[5][1]  ( .D(if_in5[1]), .E(n4), .CK(clk), .Q(\if_in[5][1] ) );
  EDFFX2 \if_in_reg[7][6]  ( .D(if_in7[6]), .E(n4), .CK(clk), .Q(\if_in[7][6] ) );
  EDFFX2 \if_in_reg[3][3]  ( .D(if_in3[3]), .E(n3), .CK(clk), .Q(\if_in[3][3] ) );
  EDFFX2 \if_in_reg[7][3]  ( .D(if_in7[3]), .E(n5), .CK(clk), .Q(\if_in[7][3] ) );
  EDFFX2 \if_in_reg[8][3]  ( .D(if_in8[3]), .E(n1), .CK(clk), .Q(\if_in[8][3] ) );
  EDFFX4 \if_in_reg[3][0]  ( .D(if_in3[0]), .E(n3), .CK(clk), .Q(\if_in[3][0] ) );
  EDFFX4 \if_in_reg[7][0]  ( .D(if_in7[0]), .E(n5), .CK(clk), .Q(\if_in[7][0] ) );
  EDFFX4 \w_in_reg[3][2]  ( .D(w_in3[2]), .E(n8), .CK(clk), .Q(\w_in[3][2] )
         );
  EDFFX4 \w_in_reg[3][6]  ( .D(w_in3[6]), .E(n8), .CK(clk), .Q(\w_in[3][6] )
         );
  EDFFX4 \w_in_reg[7][6]  ( .D(w_in7[6]), .E(n10), .CK(clk), .Q(\w_in[7][6] )
         );
  EDFFX4 \w_in_reg[7][4]  ( .D(w_in7[4]), .E(n10), .CK(clk), .Q(\w_in[7][4] )
         );
  EDFFX4 \w_in_reg[3][1]  ( .D(w_in3[1]), .E(n8), .CK(clk), .Q(\w_in[3][1] )
         );
  EDFFX4 \w_in_reg[3][5]  ( .D(w_in3[5]), .E(n8), .CK(clk), .Q(\w_in[3][5] )
         );
  EDFFX4 \w_in_reg[7][5]  ( .D(w_in7[5]), .E(n10), .CK(clk), .Q(\w_in[7][5] )
         );
  EDFFX4 \w_in_reg[3][3]  ( .D(w_in3[3]), .E(n8), .CK(clk), .Q(\w_in[3][3] )
         );
  EDFFX4 \w_in_reg[7][3]  ( .D(w_in7[3]), .E(n10), .CK(clk), .Q(\w_in[7][3] )
         );
  EDFFX2 \if_in_reg[3][4]  ( .D(if_in3[4]), .E(n3), .CK(clk), .Q(\if_in[3][4] ) );
  EDFFX2 \if_in_reg[7][4]  ( .D(if_in7[4]), .E(n3), .CK(clk), .Q(\if_in[7][4] ) );
  EDFFX2 \if_in_reg[7][5]  ( .D(if_in7[5]), .E(n4), .CK(clk), .Q(\if_in[7][5] ) );
  EDFFX4 \w_in_reg[1][7]  ( .D(w_in1[7]), .E(n7), .CK(clk), .Q(\w_in[1][7] )
         );
  EDFFX4 \w_in_reg[0][6]  ( .D(w_in0[6]), .E(n6), .CK(clk), .Q(\w_in[0][6] )
         );
  EDFFX2 \if_in_reg[3][1]  ( .D(if_in3[1]), .E(n3), .CK(clk), .Q(\if_in[3][1] ) );
  EDFFX4 \if_in_reg[7][7]  ( .D(if_in7[7]), .E(if_w), .CK(clk), .Q(
        \if_in[7][7] ) );
  EDFFX2 \if_in_reg[3][2]  ( .D(if_in3[2]), .E(n3), .CK(clk), .Q(\if_in[3][2] ) );
  EDFFX2 \if_in_reg[7][2]  ( .D(if_in7[2]), .E(n5), .CK(clk), .Q(\if_in[7][2] ) );
  EDFFX1 \if_in_reg[6][7]  ( .D(if_in6[7]), .E(n5), .CK(clk), .Q(\if_in[6][7] ) );
  EDFFX1 \w_in_reg[6][1]  ( .D(w_in6[1]), .E(w_w), .CK(clk), .Q(\w_in[6][1] )
         );
  EDFFX1 \w_in_reg[4][1]  ( .D(w_in4[1]), .E(n8), .CK(clk), .Q(\w_in[4][1] )
         );
  EDFFX2 \w_in_reg[0][1]  ( .D(w_in0[1]), .E(n6), .CK(clk), .Q(\w_in[0][1] )
         );
  EDFFX2 \w_in_reg[8][1]  ( .D(w_in8[1]), .E(n10), .CK(clk), .Q(\w_in[8][1] )
         );
  EDFFX1 \w_in_reg[2][6]  ( .D(w_in2[6]), .E(n7), .CK(clk), .Q(\w_in[2][6] )
         );
  EDFFX1 \w_in_reg[2][7]  ( .D(w_in2[7]), .E(n7), .CK(clk), .Q(\w_in[2][7] )
         );
  EDFFX1 \w_in_reg[6][7]  ( .D(w_in6[7]), .E(n6), .CK(clk), .Q(\w_in[6][7] )
         );
  EDFFX1 \w_in_reg[8][7]  ( .D(w_in8[7]), .E(n10), .CK(clk), .Q(\w_in[8][7] )
         );
  EDFFX1 \w_in_reg[4][7]  ( .D(w_in4[7]), .E(n9), .CK(clk), .Q(\w_in[4][7] )
         );
  EDFFX1 \if_in_reg[4][7]  ( .D(if_in4[7]), .E(n4), .CK(clk), .Q(\if_in[4][7] ) );
  EDFFX1 \if_in_reg[2][6]  ( .D(if_in2[6]), .E(n2), .CK(clk), .Q(\if_in[2][6] ) );
  EDFFX1 \if_in_reg[6][6]  ( .D(if_in6[6]), .E(n5), .CK(clk), .Q(\if_in[6][6] ) );
  EDFFX1 \if_in_reg[0][0]  ( .D(if_in0[0]), .E(n1), .CK(clk), .Q(\if_in[0][0] ) );
  EDFFX1 \if_in_reg[1][0]  ( .D(if_in1[0]), .E(n1), .CK(clk), .Q(\if_in[1][0] ) );
  EDFFX1 \if_in_reg[5][0]  ( .D(if_in5[0]), .E(n4), .CK(clk), .Q(\if_in[5][0] ) );
  EDFFX2 \w_in_reg[0][0]  ( .D(w_in0[0]), .E(n6), .CK(clk), .Q(\w_in[0][0] )
         );
  EDFFX2 \w_in_reg[1][0]  ( .D(w_in1[0]), .E(n6), .CK(clk), .Q(\w_in[1][0] )
         );
  EDFFX2 \w_in_reg[5][6]  ( .D(w_in5[6]), .E(n9), .CK(clk), .Q(\w_in[5][6] )
         );
  EDFFX1 \w_in_reg[6][6]  ( .D(w_in6[6]), .E(n7), .CK(clk), .Q(\w_in[6][6] )
         );
  EDFFX1 \w_in_reg[8][6]  ( .D(w_in8[6]), .E(n10), .CK(clk), .Q(\w_in[8][6] )
         );
  EDFFX1 \w_in_reg[4][6]  ( .D(w_in4[6]), .E(n9), .CK(clk), .Q(\w_in[4][6] )
         );
  EDFFX1 \w_in_reg[4][0]  ( .D(w_in4[0]), .E(n8), .CK(clk), .Q(\w_in[4][0] )
         );
  EDFFX2 \w_in_reg[1][3]  ( .D(w_in1[3]), .E(n6), .CK(clk), .Q(\w_in[1][3] )
         );
  EDFFX2 \w_in_reg[2][5]  ( .D(w_in2[5]), .E(n7), .CK(clk), .Q(\w_in[2][5] )
         );
  EDFFX1 \if_in_reg[2][5]  ( .D(if_in2[5]), .E(n2), .CK(clk), .Q(\if_in[2][5] ) );
  EDFFX1 \if_in_reg[2][4]  ( .D(if_in2[4]), .E(n2), .CK(clk), .Q(\if_in[2][4] ) );
  EDFFX1 \if_in_reg[6][5]  ( .D(if_in6[5]), .E(n5), .CK(clk), .Q(\if_in[6][5] ) );
  EDFFX1 \if_in_reg[4][6]  ( .D(if_in4[6]), .E(n4), .CK(clk), .Q(\if_in[4][6] ) );
  EDFFX1 \if_in_reg[6][2]  ( .D(if_in6[2]), .E(n5), .CK(clk), .Q(\if_in[6][2] ) );
  EDFFX1 \if_in_reg[4][5]  ( .D(if_in4[5]), .E(n4), .CK(clk), .Q(\if_in[4][5] ) );
  EDFFX1 \if_in_reg[6][3]  ( .D(if_in6[3]), .E(n5), .CK(clk), .Q(\if_in[6][3] ) );
  EDFFX1 \if_in_reg[6][1]  ( .D(if_in6[1]), .E(n5), .CK(clk), .Q(\if_in[6][1] ) );
  EDFFX1 \if_in_reg[4][4]  ( .D(if_in4[4]), .E(n4), .CK(clk), .Q(\if_in[4][4] ) );
  EDFFX1 \if_in_reg[5][3]  ( .D(if_in5[3]), .E(n4), .CK(clk), .Q(\if_in[5][3] ) );
  EDFFX1 \if_in_reg[5][4]  ( .D(if_in5[4]), .E(n4), .CK(clk), .Q(\if_in[5][4] ) );
  EDFFX1 \if_in_reg[5][2]  ( .D(if_in5[2]), .E(n4), .CK(clk), .Q(\if_in[5][2] ) );
  EDFFX2 \w_in_reg[5][0]  ( .D(w_in5[0]), .E(n9), .CK(clk), .Q(\w_in[5][0] )
         );
  EDFFX1 \w_in_reg[6][2]  ( .D(w_in6[2]), .E(n10), .CK(clk), .Q(\w_in[6][2] )
         );
  EDFFX1 \w_in_reg[8][2]  ( .D(w_in8[2]), .E(n10), .CK(clk), .Q(\w_in[8][2] )
         );
  EDFFX1 \w_in_reg[4][4]  ( .D(w_in4[4]), .E(n9), .CK(clk), .Q(\w_in[4][4] )
         );
  EDFFX1 \w_in_reg[4][2]  ( .D(w_in4[2]), .E(n8), .CK(clk), .Q(\w_in[4][2] )
         );
  EDFFX1 \w_in_reg[8][4]  ( .D(w_in8[4]), .E(n10), .CK(clk), .Q(\w_in[8][4] )
         );
  EDFFX2 \w_in_reg[5][3]  ( .D(w_in5[3]), .E(n9), .CK(clk), .Q(\w_in[5][3] )
         );
  EDFFX2 \w_in_reg[2][3]  ( .D(w_in2[3]), .E(n7), .CK(clk), .Q(\w_in[2][3] )
         );
  EDFFX2 \w_in_reg[4][5]  ( .D(w_in4[5]), .E(n9), .CK(clk), .Q(\w_in[4][5] )
         );
  EDFFX2 \w_in_reg[8][5]  ( .D(w_in8[5]), .E(n10), .CK(clk), .Q(\w_in[8][5] )
         );
  EDFFX2 \w_in_reg[4][3]  ( .D(w_in4[3]), .E(n8), .CK(clk), .Q(\w_in[4][3] )
         );
  EDFFX1 \if_in_reg[4][3]  ( .D(if_in4[3]), .E(n3), .CK(clk), .Q(\if_in[4][3] ) );
  EDFFX1 \if_in_reg[4][1]  ( .D(if_in4[1]), .E(n3), .CK(clk), .Q(\if_in[4][1] ) );
  EDFFX1 \if_in_reg[8][4]  ( .D(if_in8[4]), .E(n3), .CK(clk), .Q(\if_in[8][4] ) );
  EDFFX2 \w_in_reg[3][7]  ( .D(w_in3[7]), .E(n8), .CK(clk), .Q(\w_in[3][7] )
         );
  EDFFX2 \w_in_reg[7][7]  ( .D(w_in7[7]), .E(n10), .CK(clk), .Q(\w_in[7][7] )
         );
  EDFFX2 \w_in_reg[3][0]  ( .D(w_in3[0]), .E(n8), .CK(clk), .Q(\w_in[3][0] )
         );
  EDFFX2 \w_in_reg[7][0]  ( .D(w_in7[0]), .E(n6), .CK(clk), .Q(\w_in[7][0] )
         );
  EDFFX2 \w_in_reg[7][2]  ( .D(w_in7[2]), .E(n7), .CK(clk), .Q(\w_in[7][2] )
         );
  EDFFX2 \w_in_reg[3][4]  ( .D(w_in3[4]), .E(n8), .CK(clk), .Q(\w_in[3][4] )
         );
  EDFFX2 \w_in_reg[8][3]  ( .D(w_in8[3]), .E(n10), .CK(clk), .Q(\w_in[8][3] )
         );
  EDFFX2 \w_in_reg[0][7]  ( .D(w_in0[7]), .E(n6), .CK(clk), .Q(\w_in[0][7] )
         );
  EDFFX1 \w_in_reg[1][6]  ( .D(w_in1[6]), .E(n7), .CK(clk), .Q(\w_in[1][6] )
         );
  EDFFX2 \if_in_reg[0][4]  ( .D(if_in0[4]), .E(n1), .CK(clk), .Q(\if_in[0][4] ) );
  EDFFX2 \if_in_reg[1][4]  ( .D(if_in1[4]), .E(n2), .CK(clk), .Q(\if_in[1][4] ) );
  EDFFX2 \if_in_reg[0][5]  ( .D(if_in0[5]), .E(n1), .CK(clk), .Q(\if_in[0][5] ) );
  EDFFX1 \if_in_reg[1][5]  ( .D(if_in1[5]), .E(n2), .CK(clk), .Q(\if_in[1][5] ) );
  EDFFX1 \if_in_reg[0][7]  ( .D(if_in0[7]), .E(n1), .CK(clk), .Q(\if_in[0][7] ) );
  EDFFX1 \if_in_reg[1][7]  ( .D(if_in1[7]), .E(n2), .CK(clk), .Q(\if_in[1][7] ) );
  EDFFX1 \if_in_reg[1][6]  ( .D(if_in1[6]), .E(n2), .CK(clk), .Q(\if_in[1][6] ) );
  EDFFX2 \if_in_reg[0][6]  ( .D(if_in0[6]), .E(n1), .CK(clk), .Q(\if_in[0][6] ) );
  EDFFX2 \w_in_reg[0][4]  ( .D(w_in0[4]), .E(n6), .CK(clk), .Q(\w_in[0][4] )
         );
  EDFFX2 \w_in_reg[1][4]  ( .D(w_in1[4]), .E(n7), .CK(clk), .Q(\w_in[1][4] )
         );
  EDFFX2 \w_in_reg[8][0]  ( .D(w_in8[0]), .E(n10), .CK(clk), .Q(\w_in[8][0] )
         );
  EDFFX1 \if_in_reg[5][7]  ( .D(if_in5[7]), .E(n4), .CK(clk), .Q(\if_in[5][7] ) );
  EDFFX2 \if_in_reg[3][7]  ( .D(if_in3[7]), .E(n3), .CK(clk), .Q(\if_in[3][7] ) );
  EDFFX2 \w_in_reg[7][1]  ( .D(w_in7[1]), .E(n9), .CK(clk), .Q(\w_in[7][1] )
         );
  EDFFX2 \w_in_reg[5][2]  ( .D(w_in5[2]), .E(n9), .CK(clk), .Q(\w_in[5][2] )
         );
  EDFFX2 \if_in_reg[7][1]  ( .D(if_in7[1]), .E(n5), .CK(clk), .Q(\if_in[7][1] ) );
  EDFFX2 \w_in_reg[2][4]  ( .D(w_in2[4]), .E(n7), .CK(clk), .Q(\w_in[2][4] )
         );
  EDFFX2 \if_in_reg[3][5]  ( .D(if_in3[5]), .E(n3), .CK(clk), .Q(\if_in[3][5] ) );
  EDFFX2 \if_in_reg[5][5]  ( .D(if_in5[5]), .E(n4), .CK(clk), .Q(\if_in[5][5] ) );
  EDFFX2 \if_in_reg[4][2]  ( .D(if_in4[2]), .E(n3), .CK(clk), .Q(\if_in[4][2] ) );
  EDFFX2 \if_in_reg[3][6]  ( .D(if_in3[6]), .E(n3), .CK(clk), .Q(\if_in[3][6] ) );
  EDFFX2 \if_in_reg[2][1]  ( .D(if_in2[1]), .E(n2), .CK(clk), .Q(\if_in[2][1] ) );
  EDFFX2 \if_in_reg[1][2]  ( .D(if_in1[2]), .E(n1), .CK(clk), .Q(\if_in[1][2] ) );
  EDFFX2 \if_in_reg[0][3]  ( .D(if_in0[3]), .E(n1), .CK(clk), .Q(\if_in[0][3] ) );
  EDFFX2 \w_in_reg[2][2]  ( .D(w_in2[2]), .E(n7), .CK(clk), .Q(\w_in[2][2] )
         );
  EDFFX2 \if_in_reg[6][4]  ( .D(if_in6[4]), .E(n5), .CK(clk), .Q(\if_in[6][4] ) );
  EDFFX2 \if_in_reg[2][2]  ( .D(if_in2[2]), .E(n2), .CK(clk), .Q(\if_in[2][2] ) );
  EDFFX2 \if_in_reg[1][3]  ( .D(if_in1[3]), .E(n1), .CK(clk), .Q(\if_in[1][3] ) );
  EDFFX1 \if_in_reg[8][5]  ( .D(if_in8[5]), .E(if_w), .CK(clk), .Q(
        \if_in[8][5] ) );
  EDFFX1 \if_in_reg[8][6]  ( .D(if_in8[6]), .E(if_w), .CK(clk), .Q(
        \if_in[8][6] ) );
  AND2X4 U2 ( .A(N281), .B(n11), .Y(out[15]) );
  CLKBUFX3 U3 ( .A(w_w), .Y(n6) );
  CLKBUFX3 U4 ( .A(w_w), .Y(n7) );
  CLKBUFX3 U5 ( .A(w_w), .Y(n8) );
  CLKBUFX3 U6 ( .A(w_w), .Y(n9) );
  CLKBUFX3 U7 ( .A(w_w), .Y(n10) );
  CLKBUFX3 U8 ( .A(if_w), .Y(n1) );
  CLKBUFX3 U9 ( .A(if_w), .Y(n2) );
  CLKBUFX3 U10 ( .A(if_w), .Y(n3) );
  CLKBUFX3 U11 ( .A(if_w), .Y(n4) );
  CLKBUFX3 U12 ( .A(if_w), .Y(n5) );
  AND2X2 U13 ( .A(N266), .B(n11), .Y(out[0]) );
  AND2X2 U14 ( .A(N267), .B(n11), .Y(out[1]) );
  AND2X2 U15 ( .A(N268), .B(n11), .Y(out[2]) );
  AND2X2 U16 ( .A(N269), .B(n11), .Y(out[3]) );
  AND2X2 U17 ( .A(N270), .B(n11), .Y(out[4]) );
  AND2X2 U18 ( .A(N271), .B(n11), .Y(out[5]) );
  AND2X2 U19 ( .A(N279), .B(n11), .Y(out[13]) );
  AND2X2 U20 ( .A(N278), .B(n11), .Y(out[12]) );
  AND2X2 U21 ( .A(N280), .B(n11), .Y(out[14]) );
  AND2X2 U22 ( .A(N277), .B(n11), .Y(out[11]) );
  AND2X2 U23 ( .A(N275), .B(n11), .Y(out[9]) );
  AND2X2 U24 ( .A(N276), .B(n11), .Y(out[10]) );
  AND2X2 U25 ( .A(N273), .B(n11), .Y(out[7]) );
  AND2X2 U26 ( .A(N272), .B(n11), .Y(out[6]) );
  AND2X2 U27 ( .A(N274), .B(n11), .Y(out[8]) );
  INVX3 U28 ( .A(rst), .Y(n11) );
  AND2X8 U29 ( .A(N282), .B(n11), .Y(out[16]) );
endmodule


module PRelu ( in, out );
  input [16:0] in;
  output [16:0] out;
  wire   n2, n3, n4, n5, n6, n7, n8;

  CLKMX2X8 U2 ( .A(in[0]), .B(in[6]), .S0(out[16]), .Y(out[0]) );
  CLKMX2X8 U3 ( .A(in[1]), .B(in[7]), .S0(out[16]), .Y(out[1]) );
  CLKMX2X8 U4 ( .A(in[2]), .B(in[8]), .S0(out[16]), .Y(out[2]) );
  CLKMX2X8 U5 ( .A(in[3]), .B(in[9]), .S0(out[16]), .Y(out[3]) );
  CLKMX2X8 U6 ( .A(in[4]), .B(in[10]), .S0(out[16]), .Y(out[4]) );
  CLKMX2X8 U7 ( .A(in[5]), .B(in[11]), .S0(out[16]), .Y(out[5]) );
  CLKMX2X8 U8 ( .A(in[6]), .B(in[12]), .S0(out[16]), .Y(out[6]) );
  CLKMX2X8 U9 ( .A(in[7]), .B(in[13]), .S0(out[16]), .Y(out[7]) );
  CLKMX2X8 U10 ( .A(in[8]), .B(in[14]), .S0(out[16]), .Y(out[8]) );
  CLKMX2X8 U11 ( .A(in[9]), .B(in[15]), .S0(out[16]), .Y(out[9]) );
  CLKINVX1 U12 ( .A(in[10]), .Y(n2) );
  CLKINVX1 U13 ( .A(in[11]), .Y(n3) );
  CLKINVX1 U14 ( .A(in[12]), .Y(n4) );
  CLKINVX1 U15 ( .A(in[13]), .Y(n5) );
  CLKINVX1 U16 ( .A(in[14]), .Y(n6) );
  INVX20 U17 ( .A(out[16]), .Y(n8) );
  NAND2X1 U18 ( .A(n8), .B(n2), .Y(out[10]) );
  NAND2X1 U19 ( .A(n8), .B(n3), .Y(out[11]) );
  NAND2X1 U20 ( .A(n8), .B(n4), .Y(out[12]) );
  NAND2X1 U21 ( .A(n8), .B(n5), .Y(out[13]) );
  NAND2X1 U22 ( .A(n8), .B(n6), .Y(out[14]) );
  NAND2X1 U23 ( .A(n8), .B(n7), .Y(out[15]) );
  CLKINVX1 U24 ( .A(in[15]), .Y(n7) );
  CLKBUFX20 U25 ( .A(in[16]), .Y(out[16]) );
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
  wire   n7, n8, n9, n10, n11, n12;
  wire   [16:0] out_temp;

  CONV C1 ( .clk(clk), .rst(rst), .w_w(w_w), .if_w(if_w), .w_in0(w_in0), 
        .w_in1(w_in1), .w_in2(w_in2), .w_in3(w_in3), .w_in4(w_in4), .w_in5(
        w_in5), .w_in6(w_in6), .w_in7(w_in7), .w_in8(w_in8), .if_in0(if_in0), 
        .if_in1(if_in1), .if_in2(if_in2), .if_in3(if_in3), .if_in4(if_in4), 
        .if_in5(if_in5), .if_in6(if_in6), .if_in7(if_in7), .if_in8(if_in8), 
        .out(out_temp) );
  PRelu Pl ( .in(out_temp), .out({out[16], n7, n8, n9, n10, n11, n12, out[9:0]}) );
  BUFX8 U1 ( .A(n12), .Y(out[10]) );
  BUFX8 U2 ( .A(n11), .Y(out[11]) );
  BUFX8 U3 ( .A(n10), .Y(out[12]) );
  BUFX8 U4 ( .A(n9), .Y(out[13]) );
  BUFX8 U5 ( .A(n8), .Y(out[14]) );
  BUFX8 U6 ( .A(n7), .Y(out[15]) );
endmodule

