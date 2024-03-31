//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: PLL Controller                            //
//------------------------------------------------------//

`timescale 1ns/1ps
module CONTROLLER(reset, phase_clk, p_up, p_down, 
                  ENABLE, freq_lock, polarity);

input	       reset, phase_clk;
input          p_up, p_down;
output reg [127:0]   ENABLE;
output reg        freq_lock;
output reg         polarity;

reg	[6:0]	step,dco_code;
reg		up,down;

parameter stride = 7'd32;
parameter CODE = 7'd64;
//Write Your PLL Controller Here

always@(negedge phase_clk or posedge reset)
begin
	if(reset)
		freq_lock <= 1'b0;
	else if(step == 1'b1)
		freq_lock <= 1'b1;
end

always@(negedge phase_clk or posedge reset)
begin
	if(reset)
		up <= 1'b0;
	else 
		up <= p_up;
end

always@(negedge phase_clk or posedge reset)
begin
	if(reset)
		down <= 1'b0;
	else 
		down <= p_down;
end

always@(negedge phase_clk or posedge reset)
begin
	if(reset)
		polarity <= 1'b1;
	else if(p_up ^ up)
		polarity <= 1'b1;
	else if(p_down ^ down)
		polarity <= 1'b1;
	else
		polarity <= 1'b0;
end

always@(negedge phase_clk or posedge reset)
begin
	if(reset)
		step <= stride;
	else if(step == 1'd1)
		step <= step;
	else if(polarity == 1'b1)
		step <= step >> 1;
end

always@(negedge phase_clk or posedge reset)
begin
	if(reset)
		dco_code <= CODE;
	else if((dco_code + step) >= 7'd127)
		dco_code <= 7'd127;
	else if((p_down == 1'd0)&&(dco_code<=step))
		dco_code <= 7'd0;
	else if(p_up == 1'd0)
		dco_code <= dco_code + step;
	else if(p_down == 1'd0)
		dco_code <= dco_code - step;
end

always@(*)begin
case(dco_code)
7'd0:ENABLE<=  128'h00000000000000000000000000000000;
7'd1:ENABLE<=  128'h00000000000000000000000000000001;
7'd2:ENABLE<=  128'h00000000000000000000000000000003;
7'd3:ENABLE<=  128'h00000000000000000000000000000007;
7'd4:ENABLE<=  128'h0000000000000000000000000000000f;
7'd5:ENABLE<=  128'h0000000000000000000000000000001f;
7'd6:ENABLE<=  128'h0000000000000000000000000000003f;
7'd7:ENABLE<=  128'h0000000000000000000000000000007f;
7'd8:ENABLE<=  128'h000000000000000000000000000000ff;
7'd9:ENABLE<=  128'h000000000000000000000000000001ff;
7'd10:ENABLE<= 128'h000000000000000000000000000003ff;
7'd11:ENABLE<= 128'h000000000000000000000000000007ff;
7'd12:ENABLE<= 128'h00000000000000000000000000000fff;
7'd13:ENABLE<= 128'h00000000000000000000000000001fff;
7'd14:ENABLE<= 128'h00000000000000000000000000003fff;
7'd15:ENABLE<= 128'h00000000000000000000000000007fff;
7'd16:ENABLE<= 128'h0000000000000000000000000000ffff;
7'd17:ENABLE<= 128'h0000000000000000000000000001ffff;
7'd18:ENABLE<= 128'h0000000000000000000000000003ffff;
7'd19:ENABLE<= 128'h0000000000000000000000000007ffff;
7'd20:ENABLE<= 128'h000000000000000000000000000fffff;
7'd21:ENABLE<= 128'h000000000000000000000000001fffff;
7'd22:ENABLE<= 128'h000000000000000000000000003fffff;
7'd23:ENABLE<= 128'h000000000000000000000000007fffff;
7'd24:ENABLE<= 128'h00000000000000000000000000ffffff;
7'd25:ENABLE<= 128'h00000000000000000000000001ffffff;
7'd26:ENABLE<= 128'h00000000000000000000000003ffffff;
7'd27:ENABLE<= 128'h00000000000000000000000007ffffff;
7'd28:ENABLE<= 128'h0000000000000000000000000fffffff;
7'd29:ENABLE<= 128'h0000000000000000000000001fffffff;
7'd30:ENABLE<= 128'h0000000000000000000000003fffffff;
7'd31:ENABLE<= 128'h0000000000000000000000007fffffff;
7'd32:ENABLE<= 128'h000000000000000000000000ffffffff;
7'd33:ENABLE<= 128'h000000000000000000000001ffffffff;
7'd34:ENABLE<= 128'h000000000000000000000003ffffffff;
7'd35:ENABLE<= 128'h000000000000000000000007ffffffff;
7'd36:ENABLE<= 128'h00000000000000000000000fffffffff;
7'd37:ENABLE<= 128'h00000000000000000000001fffffffff;
7'd38:ENABLE<= 128'h00000000000000000000003fffffffff;
7'd39:ENABLE<= 128'h00000000000000000000007fffffffff;
7'd40:ENABLE<= 128'h0000000000000000000000ffffffffff;
7'd41:ENABLE<= 128'h0000000000000000000001ffffffffff;
7'd42:ENABLE<= 128'h0000000000000000000003ffffffffff;
7'd43:ENABLE<= 128'h0000000000000000000007ffffffffff;
7'd44:ENABLE<= 128'h000000000000000000000fffffffffff;
7'd45:ENABLE<= 128'h000000000000000000001fffffffffff;
7'd46:ENABLE<= 128'h000000000000000000003fffffffffff;
7'd47:ENABLE<= 128'h000000000000000000007fffffffffff;
7'd48:ENABLE<= 128'h00000000000000000000ffffffffffff;
7'd49:ENABLE<= 128'h00000000000000000001ffffffffffff;
7'd50:ENABLE<= 128'h00000000000000000003ffffffffffff;
7'd51:ENABLE<= 128'h00000000000000000007ffffffffffff;
7'd52:ENABLE<= 128'h0000000000000000000fffffffffffff;
7'd53:ENABLE<= 128'h0000000000000000001fffffffffffff;
7'd54:ENABLE<= 128'h0000000000000000003fffffffffffff;
7'd55:ENABLE<= 128'h0000000000000000007fffffffffffff;
7'd56:ENABLE<= 128'h000000000000000000ffffffffffffff;
7'd57:ENABLE<= 128'h000000000000000001ffffffffffffff;
7'd58:ENABLE<= 128'h000000000000000003ffffffffffffff;
7'd59:ENABLE<= 128'h000000000000000007ffffffffffffff;
7'd60:ENABLE<= 128'h00000000000000000fffffffffffffff;
7'd61:ENABLE<= 128'h00000000000000001fffffffffffffff;
7'd62:ENABLE<= 128'h00000000000000003fffffffffffffff;
7'd63:ENABLE<= 128'h00000000000000007fffffffffffffff;
7'd64:ENABLE<= 128'h0000000000000000ffffffffffffffff;
7'd65:ENABLE<= 128'h0000000000000001ffffffffffffffff;
7'd66:ENABLE<= 128'h0000000000000003ffffffffffffffff;
7'd67:ENABLE<= 128'h0000000000000007ffffffffffffffff;
7'd68:ENABLE<= 128'h000000000000000fffffffffffffffff;
7'd69:ENABLE<= 128'h000000000000001fffffffffffffffff;
7'd70:ENABLE<= 128'h000000000000003fffffffffffffffff;
7'd71:ENABLE<= 128'h000000000000007fffffffffffffffff;
7'd72:ENABLE<= 128'h00000000000000ffffffffffffffffff;
7'd73:ENABLE<= 128'h00000000000001ffffffffffffffffff;
7'd74:ENABLE<= 128'h00000000000003ffffffffffffffffff;
7'd75:ENABLE<= 128'h00000000000007ffffffffffffffffff;
7'd76:ENABLE<= 128'h0000000000000fffffffffffffffffff;
7'd77:ENABLE<= 128'h0000000000001fffffffffffffffffff;
7'd78:ENABLE<= 128'h0000000000003fffffffffffffffffff;
7'd79:ENABLE<= 128'h0000000000007fffffffffffffffffff;
7'd80:ENABLE<= 128'h000000000000ffffffffffffffffffff;
7'd81:ENABLE<= 128'h000000000001ffffffffffffffffffff;
7'd82:ENABLE<= 128'h000000000003ffffffffffffffffffff;
7'd83:ENABLE<= 128'h000000000007ffffffffffffffffffff;
7'd84:ENABLE<= 128'h00000000000fffffffffffffffffffff;
7'd85:ENABLE<= 128'h00000000001fffffffffffffffffffff;
7'd86:ENABLE<= 128'h00000000003fffffffffffffffffffff;
7'd87:ENABLE<= 128'h00000000007fffffffffffffffffffff;
7'd88:ENABLE<= 128'h0000000000ffffffffffffffffffffff;
7'd89:ENABLE<= 128'h0000000001ffffffffffffffffffffff;
7'd90:ENABLE<= 128'h0000000003ffffffffffffffffffffff;
7'd91:ENABLE<= 128'h0000000007ffffffffffffffffffffff;
7'd92:ENABLE<= 128'h000000000fffffffffffffffffffffff;
7'd93:ENABLE<= 128'h000000001fffffffffffffffffffffff;
7'd94:ENABLE<= 128'h000000003fffffffffffffffffffffff;
7'd95:ENABLE<= 128'h000000007fffffffffffffffffffffff;
7'd96:ENABLE<= 128'h00000000ffffffffffffffffffffffff;
7'd97:ENABLE<= 128'h00000001ffffffffffffffffffffffff;
7'd98:ENABLE<= 128'h00000003ffffffffffffffffffffffff;
7'd99:ENABLE<= 128'h00000007ffffffffffffffffffffffff;
7'd100:ENABLE<=128'h0000000fffffffffffffffffffffffff;
7'd101:ENABLE<=128'h0000001fffffffffffffffffffffffff;
7'd102:ENABLE<=128'h0000003fffffffffffffffffffffffff;
7'd103:ENABLE<=128'h0000007fffffffffffffffffffffffff;
7'd104:ENABLE<=128'h000000ffffffffffffffffffffffffff;
7'd105:ENABLE<=128'h000001ffffffffffffffffffffffffff;
7'd106:ENABLE<=128'h000003ffffffffffffffffffffffffff;
7'd107:ENABLE<=128'h000007ffffffffffffffffffffffffff;
7'd108:ENABLE<=128'h00000fffffffffffffffffffffffffff;
7'd109:ENABLE<=128'h00001fffffffffffffffffffffffffff;
7'd110:ENABLE<=128'h00003fffffffffffffffffffffffffff;
7'd111:ENABLE<=128'h00007fffffffffffffffffffffffffff;
7'd112:ENABLE<=128'h0000ffffffffffffffffffffffffffff;
7'd113:ENABLE<=128'h0001ffffffffffffffffffffffffffff;
7'd114:ENABLE<=128'h0003ffffffffffffffffffffffffffff;
7'd115:ENABLE<=128'h0007ffffffffffffffffffffffffffff;
7'd116:ENABLE<=128'h000fffffffffffffffffffffffffffff;
7'd117:ENABLE<=128'h001fffffffffffffffffffffffffffff;
7'd118:ENABLE<=128'h003fffffffffffffffffffffffffffff;
7'd119:ENABLE<=128'h007fffffffffffffffffffffffffffff;
7'd120:ENABLE<=128'h00ffffffffffffffffffffffffffffff;
7'd121:ENABLE<=128'h01ffffffffffffffffffffffffffffff;
7'd122:ENABLE<=128'h03ffffffffffffffffffffffffffffff;
7'd123:ENABLE<=128'h07ffffffffffffffffffffffffffffff;
7'd124:ENABLE<=128'h0fffffffffffffffffffffffffffffff;
7'd125:ENABLE<=128'h1fffffffffffffffffffffffffffffff;
7'd126:ENABLE<=128'h3fffffffffffffffffffffffffffffff;
7'd127:ENABLE<=128'h7fffffffffffffffffffffffffffffff;
  endcase
end

endmodule
