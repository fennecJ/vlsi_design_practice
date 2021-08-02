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
reg [`ADDR_BITS-1:0] RAM_CONV_A,RACA;
reg [`ADDR_BITS-1:0] RAM_POOL_A,RAPA;
reg                  ROM_IF_OE, ROM_W_OE;
reg                  RAM_CONV_WE, RAM_CONV_OE;
reg                  RAM_POOL_WE, RAM_POOL_OE;
reg                  clear; //To clear conv block
reg                  pad_en; //To enable padding
reg                  pool_en;
reg                  done;
reg [2:0]            sel_if, sel_w;
reg [3:0] tst [2:0][2:0];
integer cnt,q,ptmp,row,col,prow,pcol,tmp;
reg [2:0] cs,ns;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst)begin
  //$display("%d %d %d %d",row,col,row*256+col,tmp);
if(cs==WRITE_P)
$display("%d %d %d",prow,pcol,ptmp);
    if(rst)begin
    q<=0;
    row<=0;
    col<=0;
    ROM_IF_A<=`ADDR_BITS'b0;
    ROM_W_A<=`ADDR_BITS'b0;
    RAM_CONV_A<=`ADDR_BITS'b0;
    RAM_POOL_A<=`ADDR_BITS'b0;
    {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_OE,RAM_POOL_WE,done,clear,pad_en,pool_en}=10'b0000000;
    sel_if<=3'b000;
    sel_w<=3'b100;
    cnt<=0;
    tmp<=0;
    ns<=READ_W;
    prow<=0;
    pcol<=0;
    ptmp<=0;
    end
    else begin
      cs<=ns;
    case(cs)
      READ_W:
        begin
          if(ROM_W_A<=9)
            ROM_W_A<=ROM_W_A+1;
          end
      READ_9,READ_C: 
        cnt<=cnt+1;
      WRITE_C:
          begin
              tmp<=tmp+1;
              if(col<256) begin
                  col<=col+1;
              end
              else begin
                  row<=row+1;
              end
          end
          READ_P:
          begin
	  cnt<=cnt+1;
          end
          WRITE_P:
          begin
	  ptmp<=ptmp+1;
	  if(pcol<126)
	  pcol<=pcol+2;
	  else  begin
	  	prow<=prow+2;
		pcol<=0;
       	  end
          end
    endcase
    end
end


//next state
always @(*) begin
    case(cs)
    READ_W: ns=(ROM_W_A==10)?READ_9:READ_W;
    READ_9: ns=(cnt==9)?WRITE_C:READ_9;
    READ_C: ns=(cnt==3)?WRITE_C:READ_C;
    WRITE_C:
	if(tmp==65536) ns=READ_P;
	else
	ns=(col<256)?READ_C:READ_9;
        READ_P:ns=(cnt==3)?READ_P:DONE;
        WRITE_P:ns=(ptmp==16383)?DONE:READ_P;
        default:
        begin
        end
  endcase
end
//next state

//Every cond
always @(*) begin
        case(cs)
        READ_W: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0100000;
        READ_9: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b1000000;
        READ_C: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b1000000;
        WRITE_C:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0010000;
        READ_P:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0001000;
        WRITE_P:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0000100;
	DONE:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0000001;
        default:
        begin
        end
    endcase
  end
//Every cond

//pad_en
always @(*) begin
    case(cs)
        READ_W:
        begin
            if(ROM_W_A<=9)begin
                if(ROM_W_A<=3)begin
                sel_w=3'b100; 
                end
                else if (ROM_W_A<=6)begin
                sel_w=3'b010;
                end
                else begin
                sel_w=3'b001;
                end
            end
            else begin
            sel_w=3'b0; 
            end
        end
        READ_9:
        begin
            case(cnt)
            1,4,7: pad_en=1'b1;
            2,3: pad_en=(row==0)?1'b1:1'b0;
            5,6: pad_en=1'b0;
            8,9: pad_en=(row==255)?1'b1:1'b0;
            default:pad_en=1'b0;
            endcase
        end
      READ_C:
        begin
                case(cnt)
                1:
                    if(row==0||col==256)
                    pad_en=1'b1;
                    else
                    pad_en=1'b0;
                2: 
                    if(col==256)
                    pad_en=1'b1;
                    else
                    pad_en=1'b0;
                3: 
                    if(row==255||col==256)
                    pad_en=1'b1;
                    else
                    pad_en=1'b0;
                  default:
                    pad_en=1'b0;
                endcase
        end
        /*
        READ_P:
        begin
        end
        WRITE_P:
        begin
        end
        default:
        begin
        end
        */
    endcase
  end
//pad_en

//sel_if
always @(*) begin
      case(cs)
        READ_9:
        begin
            case(cnt)
            1,2,3: sel_if=3'b100;
            4,5,6: sel_if=3'b010;
            7,8,9: sel_if=3'b001;
            default: sel_if=3'b0;
            endcase
        end
      READ_C:
      begin
        case(cnt)
          1:  sel_if=3'b100;
          2:  sel_if=3'b010;
          3:  sel_if=3'b001;
          default:sel_if=3'b0;
        endcase
       end
        WRITE_C: sel_if=3'b000;
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
//sel_if


//Addr
always @(*) begin
    case(cs)
    READ_9:
    begin
        case(cnt)
        0,1:ROM_IF_A=((row-1)*256);//(row-1)<<8;
        2:  ROM_IF_A=(row-1)*256+1;
        3,4:ROM_IF_A=(row)*256;
        5:  ROM_IF_A=(row)*256;
        6,7:ROM_IF_A=(row+1)*256;
        8:  ROM_IF_A=(row+1)*256+1;
        default:begin
            ROM_IF_A=row*256;
            end
        endcase
    end
    READ_C:
    begin
          case(cnt)
            0:ROM_IF_A=((row-1)*256+col);
            1:ROM_IF_A=((row)*256+col);
            2:ROM_IF_A=((row+1)*256+col);
          endcase
    end
    WRITE_C:
    begin
        RAM_CONV_A=tmp;
    end
    READ_P:
    begin
	case(cnt)
	0:RAM_CONV_A=prow*256+pcol;
	1:RAM_CONV_A=prow*256+pcol+1;
	2:RAM_CONV_A=(prow+1)*256+pcol;
	3:RAM_CONV_A=(prow+1)*256+pcol;
	endcase
    end
    WRITE_P:
	RAM_POOL_A=ptmp;
  endcase
  end

//Addr


always @(*) begin
    case(cs)
        READ_9: col=1;
        WRITE_C:cnt=0;
        WRITE_P:cnt=0;
        default:
        begin
        end
    endcase
    end
/*
always @(*)
if(cs==WRITE_P)
if(pcol==126)
//pcol=0;
*/






endmodule

