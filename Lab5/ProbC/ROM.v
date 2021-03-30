/*************************************************
//** 2021 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************
/*Please rewrite this example code according to the assignment*/

`timescale 1ns/10ps

module ROM (CK, A, OE, Q);



  input         CK;
  input  [13:0]  A;
  input         OE;
  output [23:0] Q;

  reg    [23:0] Q;
  reg    [13:0]  latched_A;
  reg    [23:0] memory [0:16383];

  always @(posedge CK) begin
    latched_A <= A;
  end

  always @(*) begin
    if (OE) begin
      Q = memory[latched_A];
    end
    else begin
      Q = 24'hz;  
    end
  end
endmodule
