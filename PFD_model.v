//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Demo1: 8/9 Prescaler Verilog Demo Code              //
//------------------------------------------------------//

`timescale 1ns/1ps
module PFD(RESET_B, IN_CLK, FB_CLK, flagU, flagD);

   input RESET_B;   //reset=1, PFD is reset. reset=0, PFD works
   input IN_CLK, FB_CLK; //reference clock
  output flagU, flagD; //output divided clock

     reg flagU, flagD;
     reg QU, QD, OUTU, OUTD;
	 	
	 wire CDN, QUD, OUTBU, OUTBD;

always@(posedge IN_CLK or negedge CDN) if(!CDN) QU = 1'b0; else  QU =  1'b1;
always@(posedge FB_CLK or negedge CDN) if(!CDN) QD = 1'b0; else  QD =  1'b1;

assign QUD = ~(QU & QD);
assign CDN = QUD & RESET_B;

always@(QU or QD) OUTU <= #0.1 ~(QU && !QD);
always@(QU or QD) OUTD <= #0.1 ~(!QU && QD);

assign #0.05 OUTBU = OUTU;
assign #0.05 OUTBD = OUTD;

always@(posedge IN_CLK or negedge OUTBU or negedge RESET_B) 
begin
	if(!RESET_B)
		flagU =  1'b1;
	else if(!OUTBU) 
		flagU =  1'b0; 
	else 
		flagU =  1'b1;
end
always@(posedge FB_CLK or negedge OUTBD or negedge RESET_B) 
begin
	if(!RESET_B)
		flagD =  1'b1;
	else if(!OUTBD) 
		flagD =  1'b0; 
	else 
		flagD =  1'b1;
end

endmodule
            
