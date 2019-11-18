
module hps_io_Db9 #(parameter STRLEN=0, PS2DIV=0, WIDE=0, VDNUM=1, PS2WE=0)
(
	input             clk_sys,
	inout      [45:0] HPS_BUS,

	// parameter STRLEN and the actual length of conf_str have to match
	input [(8*STRLEN)-1:0] conf_str,

	output reg [31:0] joystick_0,
	output reg [31:0] joystick_1,
	output reg [31:0] joystick_2,
	output reg [31:0] joystick_3,
	output reg [31:0] joystick_4,
	output reg [31:0] joystick_5,
	output reg [15:0] joystick_analog_0,
	output reg [15:0] joystick_analog_1,
	output reg [15:0] joystick_analog_2,
	output reg [15:0] joystick_analog_3,
	output reg [15:0] joystick_analog_4,
	output reg [15:0] joystick_analog_5,

	output      [1:0] buttons,
	output            forced_scandoubler,

	output reg [31:0] status,
	input      [31:0] status_in,
	input             status_set,
	input      [15:0] status_menumask,

	//toggle to force notify of video mode change
	input             new_vmode,

	// SD config
	output reg [VD:0] img_mounted,  // signaling that new image has been mounted
	output reg        img_readonly, // mounted as read only. valid only for active bit in img_mounted
	output reg [63:0] img_size,     // size of image in bytes. valid only for active bit in img_mounted

	// SD block level access
	input      [31:0] sd_lba,
	input      [VD:0] sd_rd,       // only single sd_rd can be active at any given time
	input      [VD:0] sd_wr,       // only single sd_wr can be active at any given time
	output reg        sd_ack,

	// do not use in new projects.
	// CID and CSD are fake except CSD image size field.
	input             sd_conf,
	output reg        sd_ack_conf,

	// SD byte level access. Signals for 2-PORT altsyncram.
	output reg [AW:0] sd_buff_addr,
	output reg [DW:0] sd_buff_dout,
	input      [DW:0] sd_buff_din,
	output reg        sd_buff_wr,
	input      [15:0] sd_req_type,

	// ARM -> FPGA download
	output reg        ioctl_download = 0, // signal indicating an active download
	output reg  [7:0] ioctl_index,        // menu index used to upload the file
	output reg        ioctl_wr,
	output reg [26:0] ioctl_addr,         // in WIDE mode address will be incremented by 2
	output reg [DW:0] ioctl_dout,
	output reg [31:0] ioctl_file_ext,
	input             ioctl_wait,

	// [15]: 0 - unset, 1 - set. [1:0]: 0 - none, 1 - 32MB, 2 - 64MB, 3 - 128MB
	// [14]: debug mode: [8]: 1 - phase up, 0 - phase down. [7:0]: amount of shift.
	output reg [15:0] sdram_sz,

	// RTC MSM6242B layout
	output reg [64:0] RTC,

	// Seconds since 1970-01-01 00:00:00
	output reg [32:0] TIMESTAMP,

	// UART flags
	input      [15:0] uart_mode,

	// ps2 keyboard emulation
	output            ps2_kbd_clk_out,
	output            ps2_kbd_data_out,
	input             ps2_kbd_clk_in,
	input             ps2_kbd_data_in,

	input       [2:0] ps2_kbd_led_status,
	input       [2:0] ps2_kbd_led_use,

	output            ps2_mouse_clk_out,
	output            ps2_mouse_data_out,
	input             ps2_mouse_clk_in,
	input             ps2_mouse_data_in,

	// ps2 alternative interface.

	// [8] - extended, [9] - pressed, [10] - toggles with every press/release
	output reg [10:0] ps2_key = 0,

	// [24] - toggles with every event
	output reg [24:0] ps2_mouse = 0,
	output reg [15:0] ps2_mouse_ext = 0, // 15:8 - reserved(additional buttons), 7:0 - wheel movements
	
	input   [8:0] USER_IN
);

localparam DW = (WIDE) ? 15 : 7;
localparam AW = (WIDE) ?  7 : 8;
localparam VD = VDNUM-1;

//Todo
//Hecho para C64, falta completar el interface de hps_io
wire [31:0] joystick_0_Db9, joystick_1_Db9, joystick_2_Db9, joystick_3_Db9, joystick_4_Db9, joystick_5_Db9;
wire [31:0] joystick_analog_0_Db9, joystick_analog_1_Db9, joystick_analog_2_Db9, joystick_analog_3_Db9, joystick_analog_4_Db9, joystick_analog_5_Db9;
wire [31:0] status_Db9;
wire sd_ack_Db9;
wire [AW:0] sd_buff_addr_Db9;
wire [DW:0]  sd_buff_dout_Db9;
wire sd_buff_wr_Db9;
wire [VD:0] img_mounted_Db9;
wire img_readonly_Db9;
wire [10:0] ps2_key_Db9;
wire [24:0] ps2_mouse_Db9;
wire [7:0] ioctl_download_Db9;
wire ioctl_index_Db9, ioctl_wr_Db9;
wire [26:0] ioctl_addr_Db9;


//assign joystick_0_Db9 = joystick_0;
//assign joystick_1_Db9 = joystick_1;
//assign joystick_2_Db9 = joystick_2;
//assign joystick_3_Db9 = joystick_3;
//assign joystick_4_Db9 = joystick_4;
//assign joystick_5_Db9 = joystick_5;
//assign joystick_analog_0_Db9 = joystick_analog_0;
//assign joystick_analog_1_Db9 = joystick_analog_1;
//assign joystick_analog_2_Db9 = joystick_analog_2;
//assign joystick_analog_3_Db9 = joystick_analog_3;
//assign joystick_analog_4_Db9 = joystick_analog_4;
//assign joystick_analog_5_Db9 = joystick_analog_5;


assign status_Db9 = status;
assign sd_ack_Db9 = sd_ack;
assign sd_buff_addr_Db9 = sd_buff_addr;
assign sd_buff_dout_Db9 =sd_buff_dout;
assign sd_buff_wr_Db9 = sd_buff_wr;
assign img_mounted_Db9 =img_mounted;
assign img_readonly_Db9 =img_readonly;
assign ps2_key_Db9 = ps2_key;
assign ps2_mouse_Db9 = ps2_mouse;
assign ioctl_download_Db9 = ioctl_download;
assign ioctl_index_Db9 = ioctl_index;
assign ioctl_wr_Db9 = ioctl_wr;
assign ioctl_addr_Db9 =ioctl_addr;




//hps_io #(.STRLEN($size(CONF_STR)>>3), .VDNUM(2)) hps_io
hps_io #(STRLEN, PS2DIV, WIDE, VDNUM, PS2WE) hps_io_tmp
(
	.clk_sys(clk_sys),
	.HPS_BUS(HPS_BUS),

	.joystick_0(joystick_0_Db9),
	.joystick_1(joystick_1_Db9),
	.joystick_2(joystick_2_Db9),
	.joystick_3(joystick_3_Db9),
	.joystick_4(joystick_4_Db9),
	.joystick_5(joystick_5_Db9),

	.joystick_analog_0(joystick_analog_0_Db9),
	.joystick_analog_1(joystick_analog_1_Db9),
	.joystick_analog_2(joystick_analog_2_Db9),
	.joystick_analog_3(joystick_analog_3_Db9),
	.joystick_analog_4(joystick_analog_4_Db9),
	.joystick_analog_5(joystick_analog_5_Db9),

	.conf_str(conf_str),

	.status(status_Db9),
	.status_menumask(status_menumask),
	.buttons(buttons),
	.forced_scandoubler(forced_scandoubler),

	.sd_lba(sd_lba),
	.sd_rd(sd_rd),
	.sd_wr(sd_wr),
	.sd_ack(sd_ack_Db9),

	.sd_buff_addr(sd_buff_addr_Db9),
	.sd_buff_dout(sd_buff_dout_Db9),
	.sd_buff_din(sd_buff_din),
	.sd_buff_wr(sd_buff_wr_Db9),
	.img_mounted(img_mounted_Db9),
	.img_readonly(img_readonly_Db9),

	.ps2_key(ps2_key_Db9),
	.ps2_mouse(ps2_mouse_Db9),

	.ioctl_download(ioctl_download_Db9),
	.ioctl_index(ioctl_index_Db9),
	.ioctl_wr(ioctl_wr_Db9),
	.ioctl_addr(ioctl_addr_Db9),
	.ioctl_dout(ioctl_data),
	.ioctl_wait(ioctl_wait),
	.uart_mode(uart_mode)
);


always@(posedge clk_sys) begin
//Deberia ir en un case dependiendo de una señal de entrada que decida el mapeo
// 0 -> Nada se envian las señales tal cual
// 1 -> C64
// Pdt resto
		case(USER_IN[7:6])
			0: begin //Sin Mapeo
					joystick_0 [6:0] <= {joystick_0_Db9};
				end
			1: begin //C64
					//Mapeo de C64
					//wire [6:0] joyA_int = {1'b0,~USER_IN[5:0]} | {joyA[6:4], joyA[0], joyA[1], joyA[2], joyA[3]};
					joystick_0 [6:0] <= {joystick_0_Db9} | {1'b0,~USER_IN[5:4], ~USER_IN[0], ~USER_IN[1], ~USER_IN[2], ~USER_IN[3]};
				end
		endcase
end 

endmodule