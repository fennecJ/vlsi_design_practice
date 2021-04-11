//*************************************************
//** 2021 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************

`timescale 1ns/10ps
`include "RAM.v"
module RAM_tb;

/*Please rewrite this example code according to the assignment*/
  reg        clk, read_enable, write_enable;
  reg [23:0] data_in;
  reg [15:0]  address;
  wire[23:0] data_out;
  RAM ram1 (clk, address, write_enable, read_enable, data_in, data_out);
  initial clk=1'b0;
  always #10 clk=~clk;
  initial begin
        read_enable=0;   write_enable=0;
    // Please add some test pattern to verify your module
    #20 data_in=24'h00_0afc;  address=16'd0;
    #20 write_enable=1;   read_enable=0;
    #20 data_in=24'h00_b031;  address=16'd1887;
    #20 data_in=24'hf0_0005;  address=16'd22453;
    #20 data_in=24'h00_0246;  address=16'd308;
    #20 data_in=24'h00_00a9;  address=16'd74;
    #20 data_in=24'h00_006e;  address=16'd299;
    #20 data_in=24'hff_ffff;  address=16'd51;
    #20 data_in=24'h00_046a;  address=16'd16388;
    #20 data_in=24'hc1_0dd3;  address=16'd65535;
    #20 write_enable=0; address=16'd70;
    #20 read_enable=1; 
    #20 address=16'd299;
    #20 address=16'd0;
    #20 address=16'd1888;
    #20 address=16'd308;
    #20 address=16'd51;
    #20 address=16'd22453;
    #20 address=16'd97;
    $display($time, "ns RAM[%d]=%h, ", 70, ram1.memory[70]);
    $display($time, "ns RAM[%d]=%h, ", 299, ram1.memory[299]);
    $display($time, "ns RAM[%d]=%h, ", 0, ram1.memory[0]);
    $display($time, "ns RAM[%d]=%h, ", 1888, ram1.memory[1888]);
    $display($time, "ns RAM[%d]=%h, ", 308, ram1.memory[308]);
    $display($time, "ns RAM[%d]=%h, ", 51, ram1.memory[51]);
    $display($time, "ns RAM[%d]=%h, ", 22453, ram1.memory[22453]);
    $display($time, "ns RAM[%d]=%h, ", 97, ram1.memory[97]);
    #20 read_enable=0; data_in=24'h00_1fc3;  address=16'd74;
    #20 write_enable=1;
    #20 data_in=24'hed_2a24;  address=16'd1888;
    #20 write_enable=0; address=16'd16388;
	  #20 read_enable=1;
	$display($time, "ns RAM[%d]=%h, ", 16388, ram1.memory[16388]);
    #20 read_enable=0; data_in=24'h00_0123;  address=16'd65535;
    #20 write_enable=1; 
    #20 write_enable=0;address=16'd74;	
    #20 read_enable=1;	
	$display($time, "ns RAM[%d]=%h, ", 74, ram1.memory[74]);
    #20 read_enable=0; data_in=24'h00_00cc;  address=16'd45294;
    #20 write_enable=1;
    #20 write_enable=0; address=16'd65535;
    #20 read_enable=1;	
    #20 address=16'd45294;
    $display($time, "ns RAM[%d]=%h, ", 65535, ram1.memory[65535]);
    $display($time, "ns RAM[%d]=%h, ", 45294, ram1.memory[45294]);
    // Display result
    #20 $finish;
  end
  initial begin
    `ifdef FSDB
      $fsdbDumpfile("RAM.fsdb");
      $fsdbDumpvars;
    `endif
    #10000 $finish;
  end
endmodule

