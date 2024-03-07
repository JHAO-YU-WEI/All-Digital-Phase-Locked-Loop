//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: Frequency Divider                         //
//------------------------------------------------------//

`timescale 1ns/1ps
module FREQ_DIV(reset, clk, M, out_clk);

input         reset;
input	      clk;
input	[2:0] M;
output reg	out_clk;

reg	[2:0] counter;

//Write Your Programmable Counter-based Frequency Divider Here

always@(posedge clk or posedge reset)
begin
	if(reset)
		counter <= 3'd0;
	else if(counter == 3'd0)
		counter <= M - 1;
	else
		counter <= counter - 1;
end

always@(posedge clk or posedge reset)
begin
	if(reset)
		out_clk <= 1'b0;
	else if(counter == 3'd0)
		out_clk <= 1'b1;
	else
		out_clk <= 1'b0;
end

always@(clk)
begin
	if(M==1)
	begin
		out_clk <= clk;
	end
end

endmodule
