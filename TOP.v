//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: Design a FSK Modem                        //
//------------------------------------------------------//
`timescale 1ns/1ps
`include "ADPLL.v"
`include "TEST_ADPLL.v"

module TOP;

wire [2:0]M;

TEST_ADPLL test_adpll(.RESET(RESET), .REF_CLK(REF_CLK), .M(M), .LOCK(LOCK), .POLARITY(POLARITY), .OUT_CLK(OUT_CLK));
ADPLL adpll(.RESET(RESET), .REF_CLK(REF_CLK), .M(M), .LOCK(LOCK), .POLARITY(POLARITY), .OUT_CLK(OUT_CLK));

endmodule
