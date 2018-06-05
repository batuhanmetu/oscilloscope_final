module ampfind2(clk,data_in,amp,mean,maks,min,freq,rms,signal,tick,wavetype);
input [11:0] data_in;
input clk;
output reg [12:0] rms;
output reg [12:0] amp;
output reg [12:0] mean;
output reg [11:0] freq ;
 output reg [11:0] maks ;
 output reg [11:0] min ;
 output reg signal;
 output reg [1:0] wavetype;
 
 reg [11:0] data_prev;
 reg [11:0] trigger;
 reg [2:0] trend;
 reg [2:0] state;

 integer sayac, sayacf; // The counter which is adjusted to reset measurements periodically.
 output reg [31:0] tick;  // Period in terms of clock ticks
 reg set;
 reg enabletrig;
 
	reg [52:0] square;
	reg [24:0] meansquare;
	reg [24:0] sqr ;
	reg [24:0] delta ;
	reg [6:0] i;
initial
	begin
		maks =0;
		min =4095;
		state= 0;
		sayac= 0;
		enabletrig=0;
	end

	always @(posedge clk)
		begin
			if(data_prev > data_in ) 	
				begin
					trend = 2; //decrease
				end
			else if ( data_in > data_prev )	
				begin
					trend = 1; //increase
				end
			else 
				begin
					trend = 0; // constant
				end
			
		case (state)
			0:	begin					//state 0
				
				if( trend == 1)
					begin
						state = 1;
					end
				end
			1:						//state 1				
				if(trend == 2)
					begin
						sayac = 0;
						state = 2;
					end
			2:begin				//state 2
				if ( data_in <= min)
					begin
						min = data_in;
					end
				
				if(trend == 1)
					begin
						state = 3;
					end
					set = 0;
				end
			3:begin				//state 3
				if( data_in >= maks)
					begin
						maks = data_in;
					end
				if(trend == 2)
					begin
						state = 2;
						sayac = sayac + 1;
						set = 1;
					end
				end
				
		endcase
		
		if (trend == 1)
			begin
				if( data_in > trigger && enabletrig == 1)
					begin
						freq = 50000000/sayacf;
						tick = sayacf;
						sayacf = 0;
						meansquare = square/tick;

						rms = 2048;
						delta = 1024;
						i=0;
						
						while(i <= 100 )
						begin
							if(rms*rms>meansquare)
								rms = rms - delta;
							else if(rms*rms<meansquare)
								rms = rms + delta;
								i = i + 1;
								delta = delta/2;
						end
						
						
						
						if(10*amp/rms > 16  )
						begin
							wavetype = 2; //triangle
						end
						
						else if(10*amp/rms>13)
						begin
							wavetype = 1; //sine
						end
						
						else if(10*amp/rms < 11)
						begin
							wavetype = 0; //square
						end
						
						else
						begin	
							wavetype = 3; //unknown
						end
						square = 0;
						signal=1;
						enabletrig= 0;
					end
			
			end
			
		else if(trend == 2 && data_in < trigger )
			begin
			signal = 0;
			enabletrig = 1;
			end
			
			if(sayacf>100)
				signal=0;
			
			if (trend == 0 && state == 0)
					begin
						sayac = sayac + 1;
					end	
		if( set == 1)							//set
			begin
				amp = ((maks - min))*5000/4096;
				mean = ((maks + min)/2)*5000/4096;
			end
		if( sayac > 100000)
			begin
			if(state == 0)
			begin
				amp = 0;
				rms = 0;
			end
			
						state = 0;
						min = 4095;
						maks = 0;
						sayac = 0;
			end
			data_prev = data_in;	
			sayacf <= sayacf+1;
			trigger <= (maks + mean) / 2;
			square = square + data_in*data_in;
		end
		
	endmodule
	
		//sqr = 1;
		//				delta = 3;
		//				
		//				while(delta <= 5000 )
		//				begin
		//					sqr = sqr + delta;
		//					delta = delta + 1000;
		//					if(sqr >= meansquare)
		//						begin
		//							rms = (delta/2 - 1)*5000/4096;
		//							delta=10000;
		//				end