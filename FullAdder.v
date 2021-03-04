/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor: Tseng Hsin-Yu (Sylvia) --------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02    ---------------------- //
// ---------------------- FullAdder  ----------------------------- // 
/////////////////////////////////////////////////////////////////////
// Module name and I/O port
module FullAdder(A,B,Cin,S,Cout);

// Input and output ports declaration
input A,B,Cin;
output S,Cout;
wire s1,c1,c2;
/********* your code ***********/
and(c1,A,B);
xor(s1,A,B);


/******************************/

endmodule
