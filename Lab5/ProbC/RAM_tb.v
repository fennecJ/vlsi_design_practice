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
  integer    i,err;
  RAM ram1 (clk, address, write_enable, read_enable, data_in, data_out);
  initial clk=1'b0;
  always #10 clk=~clk;
  initial begin
        i = 0; err = 0;
        read_enable=0;   write_enable=0;
        address=15'd0;    data_in=24'd0;
    #20 read_enable=0;   write_enable=0;
    // Please add some test pattern to verify your module
      for(i=0; i<65536;i=i+4096)begin
        #20 write_enable=1;
        address = i-1;  
        data_in= i-1;
        end
    #20 read_enable=1;   
    

    // Display result
    #20 for(i=0;i<65536;i=i+1)
        if((i+1)%4096==0)
        $display($time, "ns RAM[%d]=%h, ", i, ram1.memory[i]);
        if(ram1.memory[i]!=i) begin
        $display($time, "ns Error at RAM[%d]=%h, ", i, ram1.memory[i]);
        err = err + 1;
        end
    #20  if(err==0)begin
    $display("****************************************************************");
    $display("*                                                              *");
    $display("*                Congradulations! All correct                  *");
    $display("*                                                              *");
    $display("****************************************************************");
    end
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

