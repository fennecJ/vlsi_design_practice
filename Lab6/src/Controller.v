/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------mini system controller-------------------- //
// ----------------- Feb. 2021 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include  "define.vh"

module Controller (clk, rst,
                  ROM_IF_A, ROM_W_A, ROM_IF_OE, ROM_W_OE,
                  RAM_CONV_A, RAM_CONV_WE, RAM_CONV_OE,
                  RAM_POOL_A, RAM_POOL_WE, RAM_POOL_OE,
                  sel_if, sel_w, clear, pad_en, pool_en, done);

parameter INIT    = 3'b000,
          READ_W  = 3'b001,
          READ_9  = 3'b010,
          READ_C  = 3'b011,
          WRITE_C = 3'b100,
          READ_P  = 3'b101,
          WRITE_P = 3'b110,
          DONE    = 3'b111;

input                   clk;
input                   rst;
output [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A;
output                  ROM_IF_OE, ROM_W_OE;
output [`ADDR_BITS-1:0] RAM_CONV_A;
output                  RAM_CONV_WE, RAM_CONV_OE;
output [`ADDR_BITS-1:0] RAM_POOL_A;
output                  RAM_POOL_WE, RAM_POOL_OE;
output [2:0]            sel_if, sel_w;
output                  clear;
output                  pad_en;
output                  pool_en;
output                  done;
// --------------------------------- registers  =----------------------------- //
reg [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A;
reg                  ROM_IF_OE, ROM_W_OE;
reg [`ADDR_BITS-1:0] RAM_CONV_A;
reg                  RAM_CONV_WE, RAM_CONV_OE;
reg [`ADDR_BITS-1:0] RAM_POOL_A;
reg                  RAM_POOL_WE, RAM_POOL_OE;
reg [2:0]            sel_if, sel_w;
reg                  clear;
reg                  pad_en;
reg                  pool_en;
reg                  done;

reg [2:0] cs;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst)begin
    if(rst)begin
    

    cs<=READ_W;
    end
    else
    case(cs)
    READ_W:
    begin
    end
    READ_9:
    begin
    end
    READ_C:
    begin
    end
    WRITE_C:
    begin
    end
    READ_P:
    begin
    end
    WRITE_P:
    begin
    end
    default:
    begin
    end
    endcase

end



endmodule
