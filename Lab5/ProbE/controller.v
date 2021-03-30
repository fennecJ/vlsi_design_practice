/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.26 ---------------------- //
// ---------------------- Simple Controller ---------------------- //
/////////////////////////////////////////////////////////////////////
`define S_reset 		3'd0
`define S_in_mem 		3'd1
`define S_write_back 	3'd2
`define S_branch1 		3'd3
`define S_done 		    3'd4
`define size 480000
`define width 800
`define height 600

module controller(clk,
                  rst,
                  en_in_mem,
                  in_mem_addr,
                  en_out_mem,
				  out_mem_read,
				  out_mem_write,
                  out_mem_addr,
				  done
                 );
				  
// ---------------------- input  ---------------------- //
  input 		clk;
  input 		rst;
  
// ---------------------- output ---------------------- //
  output  		en_in_mem;
  output [31:0]	in_mem_addr;
  output 		en_out_mem;
  output        out_mem_read;
  output        out_mem_write;
  output [31:0]	out_mem_addr;
  output 		done; 

// --------------- below is your design --------------- //
  
endmodule
// ------------------ the end of code ------------------ //
  
  
  
  
