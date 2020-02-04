`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:25 07/20/2018 
// Design Name: 
// Module Name:    joydecoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module joydecoder_DB15 (
  input  wire clk,
  input  wire joy_data,
  output wire joy_clk,
  output wire joy_load_n,
  output wire [11:0] joystick1,  // Format: rlSeS DCBA UDLR (negative logic)
  output wire [11:0] joystick2
  );
  
//Gestion de Joystick
reg [7:0] JCLOCKS;
always @(posedge clk) begin 
   JCLOCKS <= JCLOCKS + 8'd1;
end

reg [11:0] joy1  = 12'hFFF, joy2  = 12'hFFF;
reg joy_renew = 1'b1;
reg [7:0]joy_count = 5'd0;
   
assign joy_clk = JCLOCKS[4]; /// 25 mhz/32 = 781 Khz 
assign joy_load_n = joy_renew;
always @(posedge joy_clk) begin 
    if (joy_count == 8'd0) begin
       joy_renew = 1'b0;
    end else begin
       joy_renew = 1'b1;
    end
    if (joy_count == 8'd25) begin 
      joy_count = 8'd0;
    end else begin
      joy_count = joy_count + 8'd1;
    end      
end
always @(posedge joy_clk) begin       // Format: rlSeS DCBA UDLR 
    case (joy_count)
        8'd2  : joy1[7]  <= joy_data;  //P1 D
        8'd3  : joy1[6]  <= joy_data;  //P1 C
        8'd4  : joy1[5]  <= joy_data;  //P1 B
        8'd5  : joy1[4]  <= joy_data;  //P1 A
        8'd6  : joy1[0]  <= joy_data;  //P1 Derecha
        8'd7  : joy1[1]  <= joy_data;  //P1 Izquierda
        8'd8  : joy1[2]  <= joy_data;  //P1 Abajo
        8'd9  : joy1[3]  <= joy_data;  //P1 Arriba
        8'd10 : joy2[0]  <= joy_data;  //  P2 Derecha
        8'd11 : joy2[1]  <= joy_data;  //  P2 Izquierda
        8'd12 : joy2[2]  <= joy_data;  //  P2 Abajo
        8'd13 : joy2[3]  <= joy_data;  //  P2 Arriba
        8'd14 : joy1[10] <= joy_data;  //P1 L 
        8'd15 : joy1[11] <= joy_data;  //P1 R
        8'd16 : joy1[9]  <= joy_data;  //P1 Select
        8'd17 : joy1[8]  <= joy_data;  //P1 Start        
        8'd18 : joy2[10] <= joy_data;  //  P2 L
        8'd19 : joy2[11] <= joy_data;  //  P2 R
        8'd20 : joy2[9]  <= joy_data;  //  P2 Select
        8'd21 : joy2[8]  <= joy_data;  //  P2 Start
        8'd22 : joy2[7]  <= joy_data;  //  P2 D
        8'd23 : joy2[6]  <= joy_data;  //  P2 C
        8'd24 : joy2[5]  <= joy_data;  //  P2 B
        8'd25 : joy2[4]  <= joy_data;  //  P2 A
		  
	  endcase              
end

assign joystick1 = ~joy1; // Format: rlSeS DCBA UDLR  (positive logic)
assign joystick2 = ~joy2;

endmodule