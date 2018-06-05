module dynamic2 (input wire clk, 
		output wire [2:0] red,
		output wire [2:0] green,
		output wire [2:0] blue,
		input wire [9:0] x,
		input wire [9:0] y,
		input wire video_on,

		input [12:0] rms,
		input [12:0] mean,
		input [11:0] freq,
		input [12:0] vpp
		);
		
		reg [2:0] rgb_red;
		reg [2:0] rgb_green;
		reg [2:0] rgb_blue;
		reg [9:0] a;
		reg [9:0] b;
		always@(posedge clk)
		begin
		if(x>=68 && x<= 75 && y>= 101 && y<=111)
		begin
		a=0; b=0;
		case(vpp/1000)	
						0:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
									rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=101+b && y<= 111+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=101+b && y<= 111+b) && (x==73+a))||
								((y>=101+b && y<= 106+b) && (x==68+a))||
								 (y==106+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=107+b && y<= 111+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		
		if(x>=76 && x<= 83 && y>= 101 && y<=111)
		begin
		a=8; b=0;
		case((vpp/100)%10)	
						0:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=101+b && y<= 111+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=101+b && y<= 111+b) && (x==73+a))||
								((y>=101+b && y<= 106+b) && (x==68+a))||
								 (y==106+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=107+b && y<= 111+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		if(x>=84 && x<= 91 && y>= 101 && y<=111)
		begin
		a=16; b=0;
		case((vpp/10)%10)	
						0:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=101+b && y<= 111+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=101+b && y<= 111+b) && (x==73+a))||
								((y>=101+b && y<= 106+b) && (x==68+a))||
								 (y==106+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=107+b && y<= 111+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		
		if(x>=92 && x<= 97 && y>= 101 && y<=111)
		begin
		a=24; b=0;
		case(vpp%10)	
						0:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=101+b && y<= 111+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==73+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=101+b && y<= 111+b) && (x==73+a))||
								((y>=101+b && y<= 106+b) && (x==68+a))||
								 (y==106+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								(y==106+b && (x>=68+a && x<=73+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==68+a))||
								((y>=107+b && y<= 111+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 110+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==101+b && (x>=68+a && x<=73+a)) ||
								((y>=102+b && y<= 105+b) && (x==68+a || x==73+a))||
								(y==106+b && (x>=69+a && x<=72+a)) ||
								(y==111+b && (x>=68+a && x<=73+a)) ||
								((y>=107+b && y<= 111+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		if(x>=68 && x<= 75 && y>= 181 && y<=191)
		begin
		a=0; b=0;
		case(mean/1000)	
						0:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=181+b && y<= 191+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=181+b && y<= 191+b) && (x==73+a))||
								((y>=181+b && y<= 186+b) && (x==68+a))||
								 (y==186+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=187+b && y<= 191+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		
		if(x>=76 && x<= 83 && y>= 181 && y<=191)
		begin
		a=8; b=0;
		case((mean/100)%10)	
							0:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=181+b && y<= 191+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=181+b && y<= 191+b) && (x==73+a))||
								((y>=181+b && y<= 186+b) && (x==68+a))||
								 (y==186+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=187+b && y<= 191+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		if(x>=84 && x<= 91 && y>= 181 && y<=191)
		begin
		a=16; b=0;
		case((mean/10)%10)	
							0:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=181+b && y<= 191+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=181+b && y<= 191+b) && (x==73+a))||
								((y>=181+b && y<= 186+b) && (x==68+a))||
								 (y==186+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=187+b && y<= 191+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
		endcase
		end
		
		if(x>=92 && x<= 97 && y>= 181 && y<=191)
		begin
		a=24; b=0;
		case(mean%10)	
							0:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
									rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=181+b && y<= 191+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==73+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=181+b && y<= 191+b) && (x==73+a))||
								((y>=181+b && y<= 186+b) && (x==68+a))||
								 (y==186+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								(y==186+b && (x>=68+a && x<=73+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==68+a))||
								((y>=187+b && y<= 191+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 190+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==181+b && (x>=68+a && x<=73+a)) ||
								((y>=182+b && y<= 185+b) && (x==68+a || x==73+a))||
								(y==186+b && (x>=69+a && x<=72+a)) ||
								(y==191+b && (x>=68+a && x<=73+a)) ||
								((y>=187+b && y<= 191+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
		endcase
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		if(x>=68 && x<= 75 && y>= 261 && y<=271)
		begin
		a=0; b=0;
		case(rms/1000)	
						0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		
		if(x>=76 && x<= 83 && y>= 261 && y<=271)
		begin
		a=8; b=0;
		case((rms/100)%10)	
							0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		if(x>=84 && x<= 91 && y>= 261 && y<=271)
		begin
		a=16; b=0;
		case((rms/10)%10)	
							0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
		endcase
		end
		
		if(x>=92 && x<= 97 && y>= 261 && y<=271)
		begin
		a=24; b=0;
		case(rms%10)	
							0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
		endcase
		end
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			
		if(x>=68 && x<= 75 && y>= 341 && y<=351)
		begin
		a=0; b=80;
		case(freq/1000)	
						0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		
		if(x>=76 && x<= 83 && y>= 341 && y<=351)
		begin
		a=8; b=80;
		case((freq/100)%10)	
							0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
				
		endcase
		end
		if(x>=84 && x<= 91 && y>= 341 && y<=351)
		begin
		a=16; b=80;
		case((freq/10)%10)	
							0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
		endcase
		end
		
		if(x>=92 && x<= 97 && y>= 341 && y<=351)
		begin
		a=24; b=80;
		case(freq%10)	
							0:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						1:begin if((y>=261+b && y<= 271+b) && x==73+a)
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						2: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==68+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						3:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==73+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						4:begin if(((y>=261+b && y<= 271+b) && (x==73+a))||
								((y>=261+b && y<= 266+b) && (x==68+a))||
								 (y==266+b && (x>=68 && x<=73+a)))
								 begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
							  	end
								else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						5:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
						6:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								(y==266+b && (x>=68+a && x<=73+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==68+a))||
								((y>=267+b && y<= 271+b) && (x==73+a)) )
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						7:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && ( x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						8:begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 270+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
							end
						9: begin if((y==261+b && (x>=68+a && x<=73+a)) ||
								((y>=262+b && y<= 265+b) && (x==68+a || x==73+a))||
								(y==266+b && (x>=69+a && x<=72+a)) ||
								(y==271+b && (x>=68+a && x<=73+a)) ||
								((y>=267+b && y<= 271+b) && (x==73+a)))
									begin
									rgb_red <= 3'b111;
									rgb_blue <= 3'b111;
									rgb_green <= 3'b111;
									end
									else
									begin
										rgb_red <= 3'b000;
									rgb_blue <= 3'b000;
									rgb_green <= 3'b000;
									end
								end
		endcase
		end
		end
		  // output
        assign red = (video_on) ? rgb_red : 3'b0;
		  assign green = (video_on) ? rgb_green : 3'b0;
		  assign blue = (video_on) ? rgb_blue : 3'b0;
		endmodule