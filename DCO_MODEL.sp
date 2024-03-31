*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Demo: Buffer Chain with Digital Vector Input        *
*******************************************************

***********************************
* Operation Condition             *
***********************************
*** Process: Typical ***
.INCLUDE "ultrasim_cells.sp"


***********************************
* TOP Circuit                     *
***********************************
.SUBCKT DCO_MODEL  reset_ coarse_0 coarse_1 coarse_2 coarse_3 coarse_4 coarse_5 coarse_6 coarse_7 coarse_8 coarse_9 coarse_10 
                        + coarse_11 coarse_12 coarse_13 coarse_14 coarse_15 coarse_16 coarse_17 coarse_18 coarse_19 coarse_20   
						+ coarse_21 coarse_22 coarse_23 coarse_24 coarse_25 coarse_26 coarse_27 coarse_28 coarse_29 coarse_30  
						+ coarse_31 coarse_32 coarse_33 coarse_34 coarse_35 coarse_36 coarse_37 coarse_38 coarse_39 coarse_40 
                        + coarse_41 coarse_42 coarse_43 coarse_44 coarse_45 coarse_46 coarse_47 coarse_48 coarse_49 coarse_50 
                        + coarse_51 coarse_52 coarse_53 coarse_54 coarse_55 coarse_56 coarse_57 coarse_58 coarse_59 coarse_60 
                        + coarse_61 coarse_62 coarse_63 coarse_64 coarse_65 coarse_66 coarse_67 coarse_68 coarse_69 coarse_70 
                        + coarse_71 coarse_72 coarse_73 coarse_74 coarse_75 coarse_76 coarse_77 coarse_78 coarse_79 coarse_80 
                        + coarse_81 coarse_82 coarse_83 coarse_84 coarse_85 coarse_86 coarse_87 coarse_88 coarse_89 coarse_90 
                        + coarse_91 coarse_92 coarse_93 coarse_94 coarse_95 coarse_96 coarse_97 coarse_98 coarse_99 coarse_100 
                        + coarse_101 coarse_102 coarse_103 coarse_104 coarse_105 coarse_106 coarse_107 coarse_108 coarse_109 coarse_110 
                        + coarse_111 coarse_112 coarse_113 coarse_114 coarse_115 coarse_116 coarse_117 coarse_118 coarse_119 coarse_120 
                        + coarse_121 coarse_122 coarse_123 coarse_124 coarse_125 coarse_126 coarse_127 dco_out

Xina  dco_out reset  a   NAND2X1
Xab   a  b         INVX1
Xbin  b  dco_out       INVX1

X0   coarse_0  dco_out a  TBUFIX1
X1   coarse_1  a       b  TBUFIX1
X2   coarse_2  b  dco_out TBUFIX1

X3   coarse_3  dco_out a  TBUFIX1
X4   coarse_4  a       b  TBUFIX1
X5   coarse_5  b  dco_out TBUFIX1

X6   coarse_6  dco_out a  TBUFIX1
X7   coarse_7  a  b  TBUFIX1
X8   coarse_8  b  dco_out TBUFIX1

X9   coarse_9  dco_out a  TBUFIX1
X10   coarse_10  a  b  TBUFIX1
X11   coarse_11  b  dco_out TBUFIX1

X12   coarse_12  dco_out a  TBUFIX1
X13   coarse_13  a  b  TBUFIX1
X14   coarse_14  b  dco_out TBUFIX1

X15   coarse_15  dco_out a  TBUFIX1
X16   coarse_16  a  b  TBUFIX1
X17   coarse_17  b  dco_out TBUFIX1

X18   coarse_18  IN a  TBUFIX1
X19   coarse_19  a  b  TBUFIX1
X20   coarse_20  b  IN TBUFIX1

X21   coarse_21  dco_out a  TBUFIX1
X22   coarse_22  a  b  TBUFIX1
X23   coarse_23  b  dco_out TBUFIX1

X24   coarse_24  dco_out a  TBUFIX1
X25   coarse_25  a  b  TBUFIX1
X26   coarse_26  b  dco_out TBUFIX1

X27   coarse_27 IN a  TBUFIX1
X28   coarse_28  a  b  TBUFIX1
X29   coarse_29  b  IN TBUFIX1

X30   coarse_30  dco_out a  TBUFIX1
X31   coarse_31  a  b  TBUFIX1
X32   coarse_32  b  dco_out TBUFIX1

X33   coarse_33  dco_out a  TBUFIX1
X34   coarse_34  a  b  TBUFIX1
X35   coarse_35  b  dco_out TBUFIX1

X36   coarse_36  dco_out a  TBUFIX1
X37   coarse_37  a  b  TBUFIX1
X38   coarse_38  b  dco_out TBUFIX1

X39   coarse_39  dco_out a  TBUFIX1
X40   coarse_40  a  b  TBUFIX1
X41   coarse_41  b  dco_out TBUFIX1

X42   coarse_42  dco_out a  TBUFIX1
X43   coarse_43  a  b  TBUFIX1
X44   coarse_44  b  dco_out TBUFIX1

X45   coarse_45  dco_out a  TBUFIX1
X46   coarse_46  a  b  TBUFIX1
X47   coarse_47  b  dco_out TBUFIX1

X48   coarse_48  dco_out a  TBUFIX1
X49   coarse_49  a  b  TBUFIX1
X50   coarse_50  b  dco_out TBUFIX1

X51   coarse_51  dco_out a  TBUFIX1
X52   coarse_52  a  b  TBUFIX1
X53   coarse_53  b  dco_out TBUFIX1

X54   coarse_54  dco_out a  TBUFIX1
X55   coarse_55  a  b  TBUFIX1
X56   coarse_56  b  dco_out TBUFIX1

X57   coarse_57  dco_out a  TBUFIX1
X58   coarse_58  a  b  TBUFIX1
X59   coarse_59  b  dco_out TBUFIX1

X60   coarse_60  dco_out a  TBUFIX1
X61   coarse_61  a  b  TBUFIX1
X62   coarse_62  b  dco_out TBUFIX1

X63   coarse_63  dco_out a  TBUFIX1
X64   coarse_64  a  b  TBUFIX1
X65   coarse_65  b  dco_out TBUFIX1

X66   coarse_66  dco_out a  TBUFIX1
X67   coarse_67  a  b  TBUFIX1
X68   coarse_68  b  dco_out TBUFIX1

X69   coarse_69  dco_out a  TBUFIX1
X70   coarse_70  a  b  TBUFIX1
X71   coarse_71  b  dco_out TBUFIX1

X72   coarse_72  dco_out a  TBUFIX1
X73   coarse_73  a  b  TBUFIX1
X74   coarse_74  b  dco_out TBUFIX1

X75   coarse_75  IN a  TBUFIX1
X76   coarse_76  a  b  TBUFIX1
X77   coarse_77  b  IN TBUFIX1

X78   coarse_78  dco_out a  TBUFIX1
X79   coarse_79  a  b  TBUFIX1
X80   coarse_80  b  dco_out TBUFIX1

X81   coarse_81  dco_out a  TBUFIX1
X82   coarse_82  a  b  TBUFIX1
X83   coarse_83  b  dco_out TBUFIX1

X84   coarse_84  dco_out a  TBUFIX1
X85   coarse_85  a  b  TBUFIX1
X86   coarse_86  b  dco_out TBUFIX1

X87   coarse_87  dco_out a  TBUFIX1
X88   coarse_88  a  b  TBUFIX1
X89   coarse_89  b  dco_out TBUFIX1

X90   coarse_90  dco_out a  TBUFIX1
X91   coarse_91  a  b  TBUFIX1
X92   coarse_92  b  dco_out TBUFIX1

X93   coarse_93  dco_out a  TBUFIX1
X94   coarse_94  a  b  TBUFIX1
X95   coarse_95  b  dco_out TBUFIX1

X96   coarse_96  dco_out a  TBUFIX1
X97   coarse_97  a  b  TBUFIX1
X98   coarse_98  b  dco_out TBUFIX1

X99   coarse_99  dco_out a  TBUFIX1
X100  coarse_100  a  b  TBUFIX1
X101  coarse_101  b  dco_out TBUFIX1

X102   coarse_102  dco_out a  TBUFIX1
X103   coarse_103  a  b  TBUFIX1
X104   coarse_104  b  dco_out TBUFIX1

X105   coarse_105  dco_out a  TBUFIX1
X106   coarse_106  a  b  TBUFIX1
X107   coarse_107  b  dco_out TBUFIX1

X108   coarse_108  dco_out a  TBUFIX1
X109   coarse_109  a  b  TBUFIX1
X110   coarse_110  b  dco_out TBUFIX1

X111   coarse_111  dco_out a  TBUFIX1
X112   coarse_112  a  b  TBUFIX1
X113   coarse_113  b  dco_out TBUFIX1

X114   coarse_114  IN a  TBUFIX1
X115   coarse_115  a  b  TBUFIX1
X116   coarse_116  b  IN TBUFIX1

X117   coarse_117  dco_out a  TBUFIX1
X118   coarse_118  a  b  TBUFIX1
X119   coarse_119  b  dco_out TBUFIX1

X120   coarse_120  dco_out a  TBUFIX1
X121   coarse_121  a  b  TBUFIX1
X122   coarse_122  b  dco_out TBUFIX1

X123   coarse_123  dco_out a  TBUFIX1
X124   coarse_124  a  b  TBUFIX1
X125   coarse_125  b  dco_out TBUFIX1

X126   coarse_126  dco_out a  TBUFIX1
X127   coarse_127  a  b  TBUFIX1
*X128   coarse_128  b  dco_out TBUFIX1

.end
