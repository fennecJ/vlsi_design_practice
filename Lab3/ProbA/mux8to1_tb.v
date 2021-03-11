`timescale 10ns/10ps
module mux8to1_tb;
  reg A,B,C,D,E,F,G,H;
  reg [2:0] sel;
  wire Q;
  mux8to1 m0(.A(A),.B(B),.C(C),.D(D),.E(E),.F(F),.G(G),.H(H),.sel(sel),.Q(Q));
  integer i;
initial
begin
  for (i = 0; i <256; i = i + 23 )
     begin
        #10 {A,B,C,D,E,F,G,H} = i;
			sel = i % 8;
     $monitor ("%-d ns:\nA = %b , B = %b , C = %b , D = %b  |\nE = %b , F = %b , G = %b , H = %b  |  sel = %d[%c] , Q = %d",$time,A,B,C,D,E,F,G,H,sel,sel+65,Q);
       end
    #10 $finish;
   end

initial
begin
`ifdef FSDB
  $fsdbDumpfile("mux8to1.fsdb");
  $fsdbDumpvars;
`endif
end
endmodule
