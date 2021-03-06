/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : 	KevinLin ----------------------//
// ---------------------- Date : 2019.03    ---------------------- //
// ----------------------      test_tb      ---------------------- // 
/////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps

`ifdef T1
	`include "test1.v"
`endif

`ifdef T2
	`include "test2.v"
`endif

module test_tb;

`ifdef T1
	reg in1 , in2;
	wire out1 , out2;
	test1 t0(.out1(out1), .out2(out2), .in1(in1), .in2(in2));
`endif

`ifdef T2
	reg in1 , in2;
	wire out1 , out2, out3;
	test2 t0(.out1(out1), .out2(out2), .out3(out3), .in1(in1), .in2(in2));
`endif


integer out;

initial begin

`ifdef T1
	$monitor($time,"ns  in1=%d , in2=%d , out1=%d , out2=%d ",in1,in2,out1,out2);
`endif

`ifdef T2
	$monitor($time,"ns  in1=%d , in2=%d , out1=%d , out2=%d, out3=%d",in1,in2,out1,out2,out3);
`endif

end




initial begin

	`ifdef T1
		   in1 = 0; in2 = 1;  
	  #10  in1 = 1; in2 = 1;
	  #10  in1 = 0; in2 = 0;
	  #10  in1 = 1; in2 = 0;

	`endif

	`ifdef T2
		   in1 = 0; in2 = 0;
	  #10  in1 = 1; in2 = 1; 
	  #10  in1 = 0; in2 = 1;
	  #10  in1 = 1; in2 = 0;

	`endif

  #10  $finish;
end

initial begin
`ifdef FSDB
	$fsdbDumpfile("test.fsdb");
	$fsdbDumpvars;
`endif
end		

initial begin
	$display("\n");
    $display("\n");
    $display("        ****************************               ");
    $display("        **                        **       |\__||  ");
    $display("        **  Congratulations !!    **      / O.O  | ");
    $display("        **                        **    /_____   | ");
    $display("        **  No Syntax Error!!     **   /^ ^ ^ \\  |");
    $display("        **                        **  |^ ^ ^ ^ |w| ");
    $display("        ****************************   \\m___m__|_|");
    $display("\n");
end



endmodule
