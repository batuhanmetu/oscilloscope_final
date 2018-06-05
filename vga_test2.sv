module vga_test2
	(
		input wire key0,key1,key2,key3,sw8,sw7,
		input wire clk, reset,
		output wire hsync, vsync,
		output wire [2:0] red,
		output wire [2:0] green,
		output wire [2:0] blue,
		output wire sync_n, blank, vga_clk,
		output wire ADC_CS_N2,         // ADC chip selection
		output wire ADC_DIN2,          // ADC serial data in (to ADC)
		output wire ADC_SCLK2,         // ADC serial clock
		input ADC_DOUT2              // ADC serial data out (from ADC)
		
 
	);
	
	// register for Basys 2 8-bit RGB DAC 
	reg [2:0] rgb_red;
	reg [2:0] rgb_green;
	reg [2:0] rgb_blue;
	reg [2:0] rgb_red2;
	reg [2:0] rgb_green2;
	reg [2:0] rgb_blue2;
	reg [2:0] rgb_red3;
	reg [2:0] rgb_green3;
	reg [2:0] rgb_blue3;
	wire [9:0] x;
	wire [9:0] y;
	wire reset_ADC;
	reg [2:0] red2;
	reg [2:0] green2;
	reg [2:0] blue2;
	
		 reg [11:0] freq;
		 reg [13:0] vpp;
		 reg [12:0] mean;
		 reg [12:0] rms;
		 reg [11:0] maks;
		 reg [479:0][9:0] print;
		 reg [31:0] voltdiv;
		 reg [31:0] timediv;
 	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;
	wire [7:0][11:0] data;
	
	wire signal;
	wire [31:0] tick;
	wire [1:0] wavetype;
	initial
	begin
	reset_ADC = 0;
	
	end
        // instantiate vga_sync
        vga vga_sync_unit(.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                             .video_on(video_on), .p_tick(), .x(x), .y(y),.pixel_tick(vga_clk));
		  ADC ADC(.clock(clk), .reset(reset_ADC), .ADC_CS_N(ADC_CS_N2), .ADC_DIN(ADC_DIN2), .ADC_SCLK(ADC_SCLK2), 
		  .ADC_DOUT(ADC_DOUT2),.data(data));
		 // ampfind comp(.clk(clk),.data_in(data[0]),.amp(vpp),.mean(mean),.maks(maks),.min(min),.freq(freq));
		  ampfind2 ampfind22(.clk(clk),.data_in(data[0]),.amp(vpp),.mean(mean),.maks(maks),.min(min),.freq(freq),.rms(rms),.signal(signal),.tick(tick),.wavetype(wavetype));
		  static2 mystatic(.clk(clk), .red(red2), .green(green2), .blue(blue2),.x(x), .y(y), .video_on(video_on));
        dynamic2 mydynamic(.clk(clk), .red(red3), .green(green3), .blue(blue3),.x(x), .y(y), .video_on(video_on), .rms(rms),.mean(mean),.freq(freq), .vpp(vpp));
        storage ss(.signal(signal),.upv(key0),.downv(key1),.upt(key2),.downt(key3),.clk(clk),.autoscale(sw8),.ACDC(sw7),.maks(maks),.mean(mean),.data_in(data[0]),.tick(tick),.print(print),.voltdiv(voltdiv),.timediv(timediv));
		  
		  always @(posedge clk)
		  begin
				
				if(x>68 && x<=98 && ((y>=101 && y<=111)||  (y>=181 && y<=191) ||(y>=261 && y<=271) || (y>=341 && y<=351)))
				begin
				rgb_red <= red3;
				rgb_blue<= blue3;
				rgb_green <= green3;
				end
			
				else begin 
				rgb_red <= red2;
				rgb_blue<= blue2;
				rgb_green <= green2;
				end
				if(x>=160 ) 
					if((479 - y) == print[x-160])
						begin
							 rgb_red <= 0;
							rgb_green <= 3'b111;
							rgb_blue<= 0;
						end
				begin
		  if (reset)
				begin
           rgb_red <= 0;
			  rgb_green <= 0;
			  rgb_blue<= 0;
			  end
		end
		end
		
        // output
        assign red = (video_on) ? rgb_red : 3'b0;
		  assign green = (video_on) ? rgb_green : 3'b0;
		  assign blue = (video_on) ? rgb_blue : 3'b0;
		  assign sync_n = 0;
		  assign blank = 1;
endmodule
