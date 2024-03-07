//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Demo2: DCO Modeling                                 //
//------------------------------------------------------//

`timescale 1ns/1ps
module DCO_MODEL(reset_,coarse_0,coarse_1,coarse_2,coarse_3,coarse_4,coarse_5,coarse_6,coarse_7,coarse_8,coarse_9,coarse_10,
coarse_11,coarse_12,coarse_13,coarse_14,coarse_15,coarse_16,coarse_17,coarse_18,coarse_19,coarse_20,
coarse_21,coarse_22,coarse_23,coarse_24,coarse_25,coarse_26,coarse_27,coarse_28,coarse_29,coarse_30,
coarse_31,coarse_32,coarse_33,coarse_34,coarse_35,coarse_36,coarse_37,coarse_38,coarse_39,coarse_40,
coarse_41,coarse_42,coarse_43,coarse_44,coarse_45,coarse_46,coarse_47,coarse_48,coarse_49,coarse_50,
coarse_51,coarse_52,coarse_53,coarse_54,coarse_55,coarse_56,coarse_57,coarse_58,coarse_59,coarse_60,
coarse_61,coarse_62,coarse_63,coarse_64,coarse_65,coarse_66,coarse_67,coarse_68,coarse_69,coarse_70,
coarse_71,coarse_72,coarse_73,coarse_74,coarse_75,coarse_76,coarse_77,coarse_78,coarse_79,coarse_80,
coarse_81,coarse_82,coarse_83,coarse_84,coarse_85,coarse_86,coarse_87,coarse_88,coarse_89,coarse_90,
coarse_91,coarse_92,coarse_93,coarse_94,coarse_95,coarse_96,coarse_97,coarse_98,coarse_99,coarse_100,
coarse_101,coarse_102,coarse_103,coarse_104,coarse_105,coarse_106,coarse_107,coarse_108,coarse_109,coarse_110,
coarse_111,coarse_112,coarse_113,coarse_114,coarse_115,coarse_116,coarse_117,coarse_118,coarse_119,coarse_120,
coarse_121,coarse_122,coarse_123,coarse_124,coarse_125,coarse_126,coarse_127,dco_out);

  	input	reset_,coarse_0,coarse_1,coarse_2,coarse_3,coarse_4,coarse_5,coarse_6,coarse_7,coarse_8,coarse_9,coarse_10,
			coarse_11,coarse_12,coarse_13,coarse_14,coarse_15,coarse_16,coarse_17,coarse_18,coarse_19,coarse_20,
			coarse_21,coarse_22,coarse_23,coarse_24,coarse_25,coarse_26,coarse_27,coarse_28,coarse_29,coarse_30,
			coarse_31,coarse_32,coarse_33,coarse_34,coarse_35,coarse_36,coarse_37,coarse_38,coarse_39,coarse_40,
			coarse_41,coarse_42,coarse_43,coarse_44,coarse_45,coarse_46,coarse_47,coarse_48,coarse_49,coarse_50,
			coarse_51,coarse_52,coarse_53,coarse_54,coarse_55,coarse_56,coarse_57,coarse_58,coarse_59,coarse_60,
			coarse_61,coarse_62,coarse_63,coarse_64,coarse_65,coarse_66,coarse_67,coarse_68,coarse_69,coarse_70,
			coarse_71,coarse_72,coarse_73,coarse_74,coarse_75,coarse_76,coarse_77,coarse_78,coarse_79,coarse_80,
			coarse_81,coarse_82,coarse_83,coarse_84,coarse_85,coarse_86,coarse_87,coarse_88,coarse_89,coarse_90,
			coarse_91,coarse_92,coarse_93,coarse_94,coarse_95,coarse_96,coarse_97,coarse_98,coarse_99,coarse_100,
			coarse_101,coarse_102,coarse_103,coarse_104,coarse_105,coarse_106,coarse_107,coarse_108,coarse_109,coarse_110,
			coarse_111,coarse_112,coarse_113,coarse_114,coarse_115,coarse_116,coarse_117,coarse_118,coarse_119,coarse_120,
			coarse_121,coarse_122,coarse_123,coarse_124,coarse_125,coarse_126,coarse_127;  
	output	reg	dco_out; //DCO output clock
	wire [127:0] coarse;
    real period;

   initial period=5.968;
   initial dco_out=1'b0;
	assign coarse = {coarse_127,coarse_126,coarse_125,coarse_124,coarse_123,coarse_122,coarse_121,coarse_120,
coarse_119,coarse_118,coarse_117,coarse_116,coarse_115,coarse_114,coarse_113,coarse_112,coarse_111,coarse_110,
coarse_109,coarse_108,coarse_107,coarse_106,coarse_105,coarse_104,coarse_103,coarse_102,coarse_101,coarse_100,
coarse_99,coarse_98,coarse_97,coarse_96,coarse_95,coarse_94,coarse_93,coarse_92,coarse_91,coarse_90,
coarse_89,coarse_88,coarse_87,coarse_86,coarse_85,coarse_84,coarse_83,coarse_82,coarse_81,coarse_80,
coarse_79,coarse_78,coarse_77,coarse_76,coarse_75,coarse_74,coarse_73,coarse_72,coarse_71,coarse_70,
coarse_69,coarse_68,coarse_67,coarse_66,coarse_65,coarse_64,coarse_63,coarse_62,coarse_61,coarse_60,
coarse_59,coarse_58,coarse_57,coarse_56,coarse_55,coarse_54,coarse_53,coarse_52,coarse_51,coarse_50,
coarse_49,coarse_48,coarse_47,coarse_46,coarse_45,coarse_44,coarse_43,coarse_42,coarse_41,coarse_40,
coarse_39,coarse_38,coarse_37,coarse_36,coarse_35,coarse_34,coarse_33,coarse_32,coarse_31,coarse_30,
coarse_29,coarse_28,coarse_27,coarse_26,coarse_25,coarse_24,coarse_23,coarse_22,coarse_21,coarse_20,
coarse_19,coarse_18,coarse_17,coarse_16,coarse_15,coarse_14,coarse_13,coarse_12,coarse_11,coarse_10,
coarse_9,coarse_8,coarse_7,coarse_6,coarse_5,coarse_4,coarse_3,coarse_2,coarse_1,coarse_0};

//Modeling code vs. DCO output period 
always@(coarse) begin
  case(coarse)
   	128'h00000000000000000000000000000000 : period <= 5.968 ;
	128'h00000000000000000000000000000001 : period <= 4.693 ;
	128'h00000000000000000000000000000003 : period <= 4.304 ;
	128'h00000000000000000000000000000007 : period <= 3.627 ;
	128'h0000000000000000000000000000000f : period <= 3.377 ;
	128'h0000000000000000000000000000001f : period <= 2.971 ;
	128'h0000000000000000000000000000003f : period <= 2.742 ;
	128'h0000000000000000000000000000007f : period <= 2.512 ;
	128'h000000000000000000000000000000ff : period <= 2.304 ;
	128'h000000000000000000000000000001ff : period <= 2.151 ;
	128'h000000000000000000000000000003ff : period <= 2.018 ;
	128'h000000000000000000000000000007ff : period <= 1.886 ;
	128'h00000000000000000000000000000fff : period <= 1.785 ;
	128'h00000000000000000000000000001fff : period <= 1.697 ;
	128'h00000000000000000000000000003fff : period <= 1.610 ;
	128'h00000000000000000000000000007fff : period <= 1.543 ;
	128'h0000000000000000000000000000ffff : period <= 1.471 ;
	128'h0000000000000000000000000001ffff : period <= 1.404 ;
	128'h0000000000000000000000000003ffff : period <= 1.352 ;
	128'h0000000000000000000000000007ffff : period <= 1.309 ;
	128'h000000000000000000000000000fffff : period <= 1.256 ;
	128'h000000000000000000000000001fffff : period <= 1.220 ;
	128'h000000000000000000000000003fffff : period <= 1.178 ;
	128'h000000000000000000000000007fffff : period <= 1.132 ;
	128'h00000000000000000000000000ffffff : period <= 1.107 ;
	128'h00000000000000000000000001ffffff : period <= 1.067 ;
	128'h00000000000000000000000003ffffff : period <= 1.043 ;
	128'h00000000000000000000000007ffffff : period <= 1.016 ;
	128'h0000000000000000000000000fffffff : period <= 0.985 ;
	128'h0000000000000000000000001fffffff : period <= 0.965 ;
	128'h0000000000000000000000003fffffff : period <= 0.936 ;
	128'h0000000000000000000000007fffffff : period <= 0.920 ;
	128'h000000000000000000000000ffffffff : period <= 0.896 ;
	128'h000000000000000000000001ffffffff : period <= 0.879 ;
	128'h000000000000000000000003ffffffff : period <= 0.859 ;
	128'h000000000000000000000007ffffffff : period <= 0.841 ;
	128'h00000000000000000000000fffffffff : period <= 0.825 ;
	128'h00000000000000000000001fffffffff : period <= 0.809 ;
	128'h00000000000000000000003fffffffff : period <= 0.793 ;
	128'h00000000000000000000007fffffffff : period <= 0.779 ;
	128'h0000000000000000000000ffffffffff : period <= 0.766 ;
	128'h0000000000000000000001ffffffffff : period <= 0.752 ;
	128'h0000000000000000000003ffffffffff : period <= 0.741 ;
	128'h0000000000000000000007ffffffffff : period <= 0.725 ;
	128'h000000000000000000000fffffffffff : period <= 0.717 ;
	128'h000000000000000000001fffffffffff : period <= 0.704 ;
	128'h000000000000000000003fffffffffff : period <= 0.695 ;
	128'h000000000000000000007fffffffffff : period <= 0.684 ;
	128'h00000000000000000000ffffffffffff : period <= 0.675 ;
	128'h00000000000000000001ffffffffffff : period <= 0.665 ;
	128'h00000000000000000003ffffffffffff : period <= 0.657 ;
	128'h00000000000000000007ffffffffffff : period <= 0.647 ;
	128'h0000000000000000000fffffffffffff : period <= 0.638 ;
	128'h0000000000000000001fffffffffffff : period <= 0.630 ;
	128'h0000000000000000003fffffffffffff : period <= 0.623 ;
	128'h0000000000000000007fffffffffffff : period <= 0.614 ;
	128'h000000000000000000ffffffffffffff : period <= 0.609 ;
	128'h000000000000000001ffffffffffffff : period <= 0.599 ;
	128'h000000000000000003ffffffffffffff : period <= 0.592 ;
	128'h000000000000000007ffffffffffffff : period <= 0.588 ;
	128'h00000000000000000fffffffffffffff : period <= 0.581 ;
	128'h00000000000000001fffffffffffffff : period <= 0.575 ;
	128'h00000000000000003fffffffffffffff : period <= 0.567 ;
	128'h00000000000000007fffffffffffffff : period <= 0.562 ;
	128'h0000000000000000ffffffffffffffff : period <= 0.554 ;
	128'h0000000000000001ffffffffffffffff : period <= 0.550 ;
	128'h0000000000000003ffffffffffffffff : period <= 0.544 ;
	128'h0000000000000007ffffffffffffffff : period <= 0.539 ;
	128'h000000000000000fffffffffffffffff : period <= 0.534 ;
	128'h000000000000001fffffffffffffffff : period <= 0.529 ;
	128'h000000000000003fffffffffffffffff : period <= 0.524 ;
	128'h000000000000007fffffffffffffffff : period <= 0.519 ;
	128'h00000000000000ffffffffffffffffff : period <= 0.515 ;
	128'h00000000000001ffffffffffffffffff : period <= 0.511 ;
	128'h00000000000003ffffffffffffffffff : period <= 0.506 ;
	128'h00000000000007ffffffffffffffffff : period <= 0.503 ;
	128'h0000000000000fffffffffffffffffff : period <= 0.498 ;
	128'h0000000000001fffffffffffffffffff : period <= 0.493 ;
	128'h0000000000003fffffffffffffffffff : period <= 0.490 ;
	128'h0000000000007fffffffffffffffffff : period <= 0.486 ;
	128'h000000000000ffffffffffffffffffff : period <= 0.482 ;
	128'h000000000001ffffffffffffffffffff : period <= 0.476 ;
	128'h000000000003ffffffffffffffffffff : period <= 0.476 ;
	128'h000000000007ffffffffffffffffffff : period <= 0.472 ;
	128'h00000000000fffffffffffffffffffff : period <= 0.468 ;
	128'h00000000001fffffffffffffffffffff : period <= 0.463 ;
	128'h00000000003fffffffffffffffffffff : period <= 0.460 ;
	128'h00000000007fffffffffffffffffffff : period <= 0.458 ;
	128'h0000000000ffffffffffffffffffffff : period <= 0.455 ;
	128'h0000000001ffffffffffffffffffffff : period <= 0.451 ;
	128'h0000000003ffffffffffffffffffffff : period <= 0.449 ;
	128'h0000000007ffffffffffffffffffffff : period <= 0.446 ;
	128'h000000000fffffffffffffffffffffff : period <= 0.442 ;
	128'h000000001fffffffffffffffffffffff : period <= 0.441 ;
	128'h000000003fffffffffffffffffffffff : period <= 0.438 ;
	128'h000000007fffffffffffffffffffffff : period <= 0.433 ;
	128'h00000000ffffffffffffffffffffffff : period <= 0.430 ;
	128'h00000001ffffffffffffffffffffffff : period <= 0.428 ;
	128'h00000003ffffffffffffffffffffffff : period <= 0.426 ;
	128'h00000007ffffffffffffffffffffffff : period <= 0.424 ;
	128'h0000000fffffffffffffffffffffffff : period <= 0.421 ;
	128'h0000001fffffffffffffffffffffffff : period <= 0.418 ;
	128'h0000003fffffffffffffffffffffffff : period <= 0.417 ;
	128'h0000007fffffffffffffffffffffffff : period <= 0.413 ;
	128'h000000ffffffffffffffffffffffffff : period <= 0.412 ;
	128'h000001ffffffffffffffffffffffffff : period <= 0.410 ;
	128'h000003ffffffffffffffffffffffffff : period <= 0.407 ;
	128'h000007ffffffffffffffffffffffffff : period <= 0.406 ;
	128'h00000fffffffffffffffffffffffffff : period <= 0.403 ;
	128'h00001fffffffffffffffffffffffffff : period <= 0.401 ;
	128'h00003fffffffffffffffffffffffffff : period <= 0.398 ;
	128'h00007fffffffffffffffffffffffffff : period <= 0.397 ;
	128'h0000ffffffffffffffffffffffffffff : period <= 0.395 ;
	128'h0001ffffffffffffffffffffffffffff : period <= 0.393 ;
	128'h0003ffffffffffffffffffffffffffff : period <= 0.391 ;
	128'h0007ffffffffffffffffffffffffffff : period <= 0.390 ;
	128'h000fffffffffffffffffffffffffffff : period <= 0.386 ;
	128'h001fffffffffffffffffffffffffffff : period <= 0.385 ;
	128'h003fffffffffffffffffffffffffffff : period <= 0.383 ;
	128'h007fffffffffffffffffffffffffffff : period <= 0.381 ;
	128'h00ffffffffffffffffffffffffffffff : period <= 0.380 ;
	128'h01ffffffffffffffffffffffffffffff : period <= 0.377 ;
	128'h03ffffffffffffffffffffffffffffff : period <= 0.377 ;
	128'h07ffffffffffffffffffffffffffffff : period <= 0.375 ;
	128'h0fffffffffffffffffffffffffffffff : period <= 0.372 ;
	128'h1fffffffffffffffffffffffffffffff : period <= 0.371 ;
	128'h3fffffffffffffffffffffffffffffff : period <= 0.369 ;
	128'h7fffffffffffffffffffffffffffffff : period <= 0.368 ;
	128'hffffffffffffffffffffffffffffffff : period <= 0.366 ;
  endcase
  end

always@(posedge reset_) //DCO Work
  begin : dco_run
    forever begin : dco_set
      dco_out = ~dco_out;
      #(period/2.0);
    end
  end
      
always@(negedge reset_) //DCO STOP
  begin
    dco_out = 0;
    disable dco_run; //turn off DCO when reset_=0;
  end

endmodule
