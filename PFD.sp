*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Exercise: Phase/Frequency Detector                  *
*******************************************************
.GLOBAL    VDD   GND


.PARAM VDD=1.8v
VDD VDD 0 DC VDD
VSS GND 0 DC 0



***********************************
* TOP Circuit                     *
***********************************
.SUBCKT PFD RESET_B IN_CLK FB_CLK flagU flagD

Xdff0  IN_CLK   VDD   CDN QN0 QU  DFFRX4    
Xdff1  FB_CLK   VDD   CDN QN1 QD  DFFRX4

xr0    QU   QD    QUD         NAND2X1
xr1    QUD  RESET_B CDN         AND2X1

xi0    QU   INVERQU           INVX1
xi1    QD   INVERQD           INVX1

*xi2    QU   INVERQD  OUTU     NAND2X1 m=3
*xi3    QD   INVERQU  OUTD     NAND2X1 m=3

*xi2    QU   INVERQD  OUTU0     NAND2X1 
*xi3    QD   INVERQU  OUTD1     NAND2X1 
*xi4    QU   OUTU0  OUTU2     NAND2X1
*xi5    QD   OUTD1  OUTD3     NAND2X1
*xi6    QU   OUTU2  OUTU     NAND2X1
*xi7    QD   OUTD3  OUTD     NAND2X1

xi2    QU   INVERQD  OUTU     NAND2X1 
xi3    QD   INVERQU  OUTD     NAND2X1 
xi4    QU   INVERQD  OUTU     NAND2X1
xi5    QD   INVERQU  OUTD     NAND2X1



xDPA0    OUTU OUTBU  DPA
xDPA1    OUTD OUTBD  DPA

Xdff2  IN_CLK VDD OUTBU QN2 flagU  DFFRX4    
Xdff3  FB_CLK VDD OUTBD QN3 flagD  DFFRX4

.ENDS
***********************************
* Subckt Definition               *
***********************************
.SUBCKT  DPA  IN  OUT 

X0 IN  INB     BUFX3

X1 IN  INB IN1 AND2X1
X2 INB IN1 IN2 AND2X1
X3 IN1 IN2 IN3 AND2X1
X4 IN2 IN3 IN4 AND2X1
X5 IN3 IN4 IN5 AND2X1
X6 IN4 IN5 OUT AND2X1

.ENDS DPA

