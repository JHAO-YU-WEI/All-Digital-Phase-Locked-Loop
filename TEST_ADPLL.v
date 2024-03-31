//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: Design a FSK Modem                        //
//------------------------------------------------------//
`timescale 1ns/1ps
`include "ADPLL.v" 

module TEST_ADPLL(RESET, REF_CLK, M, LOCK, POLARITY, OUT_CLK);

	input LOCK, POLARITY, OUT_CLK;
	output  reg RESET, REF_CLK;
	output  reg [2:0] M;
   
	wire   LOCK, POLARITY, OUT_CLK;
	
	parameter CYCLE = 2;

  always #(CYCLE/2.0) REF_CLK = ~REF_CLK; //10MHz TX_CLK

ADPLL adpll(.RESET(RESET), .REF_CLK(REF_CLK), .M(M), .LOCK(LOCK), .POLARITY(POLARITY), .OUT_CLK(OUT_CLK));
//Generate phase clock                          
initial begin                                                                                            
RESET=1'b1;
REF_CLK=1'b0;
M=3'd1;
#15 RESET=1'b0;
#500
#15 $finish;
end
//WaveDump all signals
initial begin
$fsdbDumpfile("ADPLL.fsdb");
$fsdbDumpvars;
end

endmodule
