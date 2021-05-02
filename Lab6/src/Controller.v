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

parameter INIT  = 3'b000,
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
reg [`ADDR_BITS-1:0] RAM_CONV_A;
reg [`ADDR_BITS-1:0] RAM_POOL_A;
reg [`ADDR_BITS-1:0] cnt,tmp,row,col,ptmp,prow,pcol;
reg                  ROM_IF_OE, ROM_W_OE;
reg                  RAM_CONV_WE, RAM_CONV_OE;
reg                  RAM_POOL_WE, RAM_POOL_OE;
reg                  clear; //To clear conv block
reg                  pad_en; //To enable padding
reg                  pool_en;
reg                  done;
reg [2:0]            sel_if, sel_w;
reg [2:0]            cs, ns;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst)begin
  if(rst)begin
    {ROM_W_A,row,col,cnt,tmp,prow,pcol,ptmp,cs} <= {`ADDR_BITS'b0,`ADDR_BITS'b0,`ADDR_BITS'b0,`ADDR_BITS'b0,`ADDR_BITS'b0,`ADDR_BITS'b0,`ADDR_BITS'b0,`ADDR_BITS'b0};
    cs <= READ_W;
  end
  else begin
    cs <= ns;
    case(cs)
      READ_W: ROM_W_A <= (ROM_W_A <= `ADDR_BITS'd8)?ROM_W_A + `ADDR_BITS'd1 : ROM_W_A;
      READ_9:   begin
                  col  <= `ADDR_BITS'd1;
                  cnt  <= cnt + `ADDR_BITS'd1;
                end
      READ_C:     cnt  <= cnt + `ADDR_BITS'd1;
      WRITE_C:  begin
                  cnt  <= `ADDR_BITS'd0;
                  tmp  <= tmp + `ADDR_BITS'd1;
                if(col < `ADDR_BITS'd256)  
                  col  <= col + `ADDR_BITS'd1;
                else  
                  row  <= row+`ADDR_BITS'd1;
                end
      READ_P:
                  cnt  <= cnt+`ADDR_BITS'd1;
      WRITE_P:  begin
                  cnt  <= `ADDR_BITS'd0;
                  ptmp <= ptmp+`ADDR_BITS'd1;
                if(pcol < `ADDR_BITS'd254)
                  pcol <= pcol + `ADDR_BITS'd2;
                else  begin
                 prow <= prow+`ADDR_BITS'd2;
                  pcol <= `ADDR_BITS'd0;
                end
        end
      default:;
    endcase
  end
end


//next state
always @(*) begin
  case(cs)
    READ_W : ns = (ROM_W_A == `ADDR_BITS'd9    ) ? READ_9  : READ_W;
    READ_9 : ns = (cnt     == `ADDR_BITS'd9    ) ? WRITE_C : READ_9;
    READ_C : ns = (cnt     == `ADDR_BITS'd3    ) ? WRITE_C : READ_C;
    WRITE_C: ns = (tmp     == `ADDR_BITS'd65535) ? READ_P  : (col < `ADDR_BITS'd256) ? READ_C : READ_9;
    READ_P : ns = (cnt     == `ADDR_BITS'd4    ) ? WRITE_P : READ_P;
    WRITE_P: ns = (ptmp    == `ADDR_BITS'd16383) ? DONE    : READ_P;
    default: ns = READ_W;
  endcase
end
//next state


//Every cond
always @(*) begin
  case(cs)
    READ_W: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b0100000;
    READ_9: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b1000000;
    READ_C: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b1000000;
    WRITE_C:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b0010000;
    READ_P: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b0001000;
    WRITE_P:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b0000100;
    DONE:   {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b0000001;
    default:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done} = 7'b0000000;
  endcase
end
//Every cond


//sel_w
always@(*)begin
  if(cs == READ_W)
    if      (ROM_W_A <= `ADDR_BITS'd3) sel_w = 3'b100;
    else if (ROM_W_A <= `ADDR_BITS'd6) sel_w = 3'b010;
    else if (ROM_W_A <= `ADDR_BITS'd9) sel_w = 3'b001;
    else                               sel_w = 3'b000;
  else      sel_w = 3'b000;
end
//sel_w


//pad_en
always @(*) begin
  case(cs)
    READ_9:
      begin
        case(cnt)
          `ADDR_BITS'd1, `ADDR_BITS'd4, `ADDR_BITS'd7  : pad_en = 1'b1;
          `ADDR_BITS'd2, `ADDR_BITS'd3                : pad_en = (row == `ADDR_BITS'b0  ) ? 1'b1 : 1'b0;
          `ADDR_BITS'd5, `ADDR_BITS'd6                : pad_en = 1'b0;
          `ADDR_BITS'd8, `ADDR_BITS'd9                : pad_en = (row == `ADDR_BITS'd255) ? 1'b1: 1'b0;
          default                                     : pad_en = 1'b0;
        endcase
      end
    READ_C:
        case(cnt)
          `ADDR_BITS'd1      : pad_en = (row == `ADDR_BITS'd0   || col == `ADDR_BITS'd256) ? 1'b1 : 1'b0;
          `ADDR_BITS'd2      : pad_en = (col == `ADDR_BITS'd256                          ) ? 1'b1 : 1'b0;
          `ADDR_BITS'd3      : pad_en = (row == `ADDR_BITS'd255 || col == `ADDR_BITS'd256) ? 1'b1 : 1'b0;
          default            : pad_en = 1'b0;
        endcase
    default:pad_en = 1'b0;
  endcase
end
//pad_en


//sel_if
always @(*) begin
      case(cs)
        READ_9:
        begin
            case(cnt)
              `ADDR_BITS'd1, `ADDR_BITS'd2, `ADDR_BITS'd3  : sel_if = 3'b100;
              `ADDR_BITS'd4, `ADDR_BITS'd5, `ADDR_BITS'd6  : sel_if = 3'b010;
              `ADDR_BITS'd7, `ADDR_BITS'd8, `ADDR_BITS'd9  : sel_if = 3'b001;
              default: sel_if = 3'b000;
            endcase
        end
      READ_C:
      begin
        case(cnt)
          `ADDR_BITS'd1      : sel_if = 3'b100;
          `ADDR_BITS'd2      : sel_if = 3'b010;
          `ADDR_BITS'd3      : sel_if = 3'b001;
          default            : sel_if = 3'b000;
        endcase
       end
        WRITE_C: sel_if = 3'b000;
        default: sel_if = 3'b000;
    endcase
 end
//sel_if


//Addr
always @(*) begin
  case(cs)
    READ_9:
      case(cnt)
        `ADDR_BITS'd0, `ADDR_BITS'd1    :  ROM_IF_A =   (row-`ADDR_BITS'b1) << 8;
        `ADDR_BITS'd2                  :  ROM_IF_A = ( (row-`ADDR_BITS'b1) << 8) + `ADDR_BITS'b1;
        `ADDR_BITS'd3, `ADDR_BITS'd4    :  ROM_IF_A =    row                << 8;
        `ADDR_BITS'd5                  :  ROM_IF_A =    row                << 8;
        `ADDR_BITS'd6, `ADDR_BITS'd7    :  ROM_IF_A =   (row+`ADDR_BITS'b1) << 8;
        `ADDR_BITS'd8                  :  ROM_IF_A = ( (row+`ADDR_BITS'b1) << 8) + `ADDR_BITS'b1;
        default                        :  ROM_IF_A =    row                << 8;
      endcase
    READ_C:
      case(cnt)
        `ADDR_BITS'd0      :  ROM_IF_A = ( (row-`ADDR_BITS'b1) << 8) + col;
        `ADDR_BITS'd1      :  ROM_IF_A = ( (row)               << 8) + col;
        `ADDR_BITS'd2      :  ROM_IF_A = ( (row+`ADDR_BITS'b1) << 8) + col;
        default            :  ROM_IF_A = ( (row+`ADDR_BITS'b1) << 8) + col;
      endcase
    default:  ROM_IF_A = ( (row + `ADDR_BITS'b1) << 8) + col;
  endcase
end
//Addr


//RAM_CONV_A
always@(*)begin
if(rst)
  RAM_CONV_A = `ADDR_BITS'b0;
else
  case(cs)
    WRITE_C:RAM_CONV_A = tmp;
    READ_P:
    case(cnt)
      `ADDR_BITS'd0      :RAM_CONV_A = ( prow                 << 8) + pcol;
      `ADDR_BITS'd1      :RAM_CONV_A = ( prow                 << 8) + pcol + `ADDR_BITS'b1;
      `ADDR_BITS'd2      :RAM_CONV_A = ( (prow+`ADDR_BITS'b1) << 8) + pcol;
      `ADDR_BITS'd3      :RAM_CONV_A = ( (prow+`ADDR_BITS'b1) << 8) + pcol + `ADDR_BITS'b1;
      default            :RAM_CONV_A = ( (prow+`ADDR_BITS'b1) << 8) + pcol + `ADDR_BITS'b1;
  	endcase
    default:RAM_CONV_A = ( (prow+`ADDR_BITS'b1) << 8 ) + pcol + `ADDR_BITS'b1;
  endcase
end
//RAM_CONV_A


//RAM_POOL_A
always@(*)
  RAM_POOL_A = (rst) ? `ADDR_BITS'b0 : ptmp;


//clear
always@(*)
  clear = (rst) ? 1'b1 : 1'b0;
//clear


//pool_en
always@(*)
  pool_en = (cs == READ_P && cnt > `ADDR_BITS'd0) ? 1'b1 : 1'b0;
//pool_en



endmodule
