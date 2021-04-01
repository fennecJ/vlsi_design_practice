/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.26 ---------------------- //
// ---------------------- Simple Controller ---------------------- //
/////////////////////////////////////////////////////////////////////
`define S_reset 		3'd0
`define S_in_mem 		3'd1
`define S_out_mem 	3'd2
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
  reg [2:0]	cs,ns;
  reg [31:0]	in_mem_addr;
  reg [31:0]	out_mem_addr;
  reg [31:0] 	count;
  reg  		en_in_mem;
  reg 		en_out_mem;
  reg        out_mem_read;
  reg        out_mem_write;
  reg 		done; 


always @(negedge clk)begin
  if(rst) begin
    count<=32'd0;
    en_in_mem<=1'b0;
    en_out_mem<=1'b0;
    out_mem_read<=1'b0;
    out_mem_write<=1'b0;
    cs<=`S_in_mem;
  end

 case(cs)
    `S_in_mem:
	begin
	en_in_mem<=1'b1;
	en_out_mem<=1'b0;
	out_mem_write<=1'b0;
	in_mem_addr <= count;
	cs <= `S_out_mem;
	end
    `S_out_mem:
	begin
	en_in_mem<=1'b0;
	en_out_mem<=1'b1;
	out_mem_write<=1'b1;
	out_mem_addr <= count;
	count <= (count + 32'd1);
	cs <= (count==`size)?(`S_done):(`S_in_mem);
	end
    `S_done:
	begin
	en_in_mem<=1'b0;
	en_out_mem<=1'b0;
	out_mem_read<=1'b1;
	out_mem_write<=1'b0;
	done<=1'b1;
	end
    default:
	begin
	en_in_mem<=1'b0;
	en_out_mem<=1'b0;
	out_mem_read<=1'b0;
	out_mem_write<=1'b0;
	end
    endcase	
end






endmodule
// ------------------ the end of code ------------------ //
  
  
  
  
