//*************************************************
//** 2021 spring iVCAD
//** Description: Random-access memory
//** Mar. 2018 Henry authored
//** Mar. 2019 Kevin revised
//** Mar. 2020 Claire revised
//** Mar. 2021 Michael revised
//*************************************************

`timescale 1ns/10ps
`include "ROM.v"
module ROM_tb;

/*Please rewrite this example code according to the assignment*/

  reg         clk;
  reg         rst;
  reg         read_enable;
  reg  [13:0]  address;
  wire [23:0] data_out;
  integer i ,err;
  ROM rom1 (clk, address, read_enable, data_out);

  initial clk=1'b0;
  always #10	clk=~clk;

  initial begin
        err = 0; i = 0;
        clk = 0; rst = 0;
        read_enable = 0; address = 14'd0;
    #20 rst = 1;
    #40 rst = 0; 
    // Please add some test pattern to verify your module
    for(i=16368;i<16384;i=i+1)begin
      address = i;
	#20
	 read_enable = 1;
        $display($time, "ns ROM[%d]=%h, ", i, rom1.memory[i]);
        if(rom1.memory[i]!=i) begin
        $display($time, "ns Error at RAM[%d]=%h, ", i, rom1.memory[i]);
        err = err + 1;
        end
	end
    $finish;
  end
  initial begin
  $readmemh("ROM_data.dat",rom1.memory);
  end


  initial begin
    `ifdef FSDB
    $fsdbDumpfile("ROM.fsdb");
    $fsdbDumpvars();
    #1000 $finish;
    `endif
  end
endmodule


