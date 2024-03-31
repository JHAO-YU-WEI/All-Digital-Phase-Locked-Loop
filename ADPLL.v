//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: Design a FSK Modem                        //
//------------------------------------------------------//
`timescale 1ns/1ps
`include "DCO_MODEL.v"
`include "PFD_model.v"
`include "CONTROLLER.v"
`include "FREQ_DIV.v"

module ADPLL(RESET, REF_CLK, M, LOCK, POLARITY, OUT_CLK);

	input  RESET, REF_CLK;
	input  [2:0] M;
	output LOCK, POLARITY, OUT_CLK;
	
	wire P_UP,P_DOWN;
	wire [127:0] DCO;
	wire	RESET_B;
	wire	OUT_divM;
	reg	RESET_Delay,Phase_CLK;


	parameter CYCLE = 5;

	assign RESET_B = ~RESET;

always@(RESET) RESET_Delay <=  RESET;

always @(P_UP or P_DOWN) 
begin
Phase_CLK <= #0.1 (P_UP && P_DOWN);
end

PFD 		pfd(.RESET_B(RESET_B), .IN_CLK(REF_CLK), .FB_CLK(OUT_divM), .flagU(P_UP), .flagD(P_DOWN));
CONTROLLER  controller(.reset(RESET), .phase_clk(Phase_CLK), .p_up(P_UP), .p_down(P_DOWN ), .ENABLE(DCO), .freq_lock(LOCK), .polarity(POLARITY));
DCO_MODEL 	dco_model(.reset_(RESET_B), 
.coarse_0(DCO[0]),.coarse_1(DCO[1]),.coarse_2(DCO[2]),.coarse_3(DCO[3]),.coarse_4(DCO[4]),.coarse_5(DCO[5]),.coarse_6(DCO[6]),.coarse_7(DCO[7]),.coarse_8(DCO[8]),.coarse_9(DCO[9]),.coarse_10(DCO[10]),
.coarse_11(DCO[11]),.coarse_12(DCO[12]),.coarse_13(DCO[13]),.coarse_14(DCO[14]),.coarse_15(DCO[15]),.coarse_16(DCO[16]),.coarse_17(DCO[17]),.coarse_18(DCO[18]),.coarse_19(DCO[19]),.coarse_20(DCO[20]),
.coarse_21(DCO[21]),.coarse_22(DCO[22]),.coarse_23(DCO[23]),.coarse_24(DCO[24]),.coarse_25(DCO[25]),.coarse_26(DCO[26]),.coarse_27(DCO[27]),.coarse_28(DCO[28]),.coarse_29(DCO[29]),.coarse_30(DCO[30]),
.coarse_31(DCO[31]),.coarse_32(DCO[32]),.coarse_33(DCO[33]),.coarse_34(DCO[34]),.coarse_35(DCO[35]),.coarse_36(DCO[36]),.coarse_37(DCO[37]),.coarse_38(DCO[38]),.coarse_39(DCO[39]),.coarse_40(DCO[40]),
.coarse_41(DCO[41]),.coarse_42(DCO[42]),.coarse_43(DCO[43]),.coarse_44(DCO[44]),.coarse_45(DCO[45]),.coarse_46(DCO[46]),.coarse_47(DCO[47]),.coarse_48(DCO[48]),.coarse_49(DCO[49]),.coarse_50(DCO[50]),
.coarse_51(DCO[51]),.coarse_52(DCO[52]),.coarse_53(DCO[53]),.coarse_54(DCO[54]),.coarse_55(DCO[55]),.coarse_56(DCO[56]),.coarse_57(DCO[57]),.coarse_58(DCO[58]),.coarse_59(DCO[59]),.coarse_60(DCO[60]),
.coarse_61(DCO[61]),.coarse_62(DCO[62]),.coarse_63(DCO[63]),.coarse_64(DCO[64]),.coarse_65(DCO[65]),.coarse_66(DCO[66]),.coarse_67(DCO[67]),.coarse_68(DCO[68]),.coarse_69(DCO[69]),.coarse_70(DCO[70]),
.coarse_71(DCO[71]),.coarse_72(DCO[72]),.coarse_73(DCO[73]),.coarse_74(DCO[74]),.coarse_75(DCO[75]),.coarse_76(DCO[76]),.coarse_77(DCO[77]),.coarse_78(DCO[78]),.coarse_79(DCO[79]),.coarse_80(DCO[80]),
.coarse_81(DCO[81]),.coarse_82(DCO[82]),.coarse_83(DCO[83]),.coarse_84(DCO[84]),.coarse_85(DCO[85]),.coarse_86(DCO[86]),.coarse_87(DCO[87]),.coarse_88(DCO[88]),.coarse_89(DCO[89]),.coarse_90(DCO[90]),
.coarse_91(DCO[91]),.coarse_92(DCO[92]),.coarse_93(DCO[93]),.coarse_94(DCO[94]),.coarse_95(DCO[95]),.coarse_96(DCO[96]),.coarse_97(DCO[97]),.coarse_98(DCO[98]),.coarse_99(DCO[99]),.coarse_100(DCO[100]),
.coarse_101(DCO[101]),.coarse_102(DCO[102]),.coarse_103(DCO[103]),.coarse_104(DCO[104]),.coarse_105(DCO[105]),.coarse_106(DCO[106]),.coarse_107(DCO[107]),.coarse_108(DCO[108]),.coarse_109(DCO[109]),.coarse_110(DCO[110]),
.coarse_111(DCO[111]),.coarse_112(DCO[112]),.coarse_113(DCO[113]),.coarse_114(DCO[114]),.coarse_115(DCO[115]),.coarse_116(DCO[116]),.coarse_117(DCO[117]),.coarse_118(DCO[118]),.coarse_119(DCO[119]),.coarse_120(DCO[120]),
.coarse_121(DCO[121]),.coarse_122(DCO[122]),.coarse_123(DCO[123]),.coarse_124(DCO[124]),.coarse_125(DCO[125]),.coarse_126(DCO[126]),.coarse_127(DCO[127]), .dco_out(OUT_CLK));
FREQ_DIV 	freq_div(.reset(RESET_Delay), .clk(OUT_CLK), .M(M), .out_clk(OUT_divM));
  

endmodule
