//*************************************************
//** 2021 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************

`timescale 1ns/10ps

module RAM (CK, A, WE, OE, D, Q);

/*Please rewrite this example code according to the assignment*/

  input         CK;
  input  [15:0]  A;
  input         WE;
  input         OE;
  input  [23:0] D;
  output [23:0] Q;

  reg    [23:0] Q;
  reg    [15:0] latched_A;
  reg    [23:0] memory [65536:0];

  always @(posedge CK) begin
    if (WE) begin
      memory[A] <= D;
    end
    latched_A <= A;
  end

  always @(*) begin
    if (OE) begin
      Q = memory[latched_A];
    end
    else begin
      Q = 24'h0; 
    end
  end

endmodule

