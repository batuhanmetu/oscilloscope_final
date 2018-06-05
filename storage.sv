module storage(signal,upv,downv,upt,downt,clk,autoscale,ACDC,maks,mean,data_in,tick,print,voltdiv,timediv);

input signal;

input upv;
input downv;
input upt;
input downt;

input clk;
input  ACDC;
input autoscale;
input [11:0] maks;
input [12:0] mean;
input [11:0] data_in;
input [31:0] tick;


output [31:0] voltdiv;
output [31:0] timediv;
output reg [479:0][9:0] print;
 reg [479:0][9:0] RAM;
integer voltpix;
integer timepix;
integer count,countscale;
reg [8:0] a;

initial
	begin
		a=0;
		count = 0;
		voltpix =2*maks/120;
		timepix = tick/240;
	end
always @(posedge clk)
	begin
		if(a== 479)
			begin
				count = 0;
				print = RAM;
				RAM=0;
				if(autoscale == 1)
					begin
						timepix = tick/480;
						voltpix =	(2*maks/240>5)?2*maks/240:5;
					end
				a=0;
			end
		if(a*timepix< count )
			begin
				//if((ACDC*mean-data_in*5000/4096)/voltpix<240 && ((data_in*5000/4096-ACDC*mean)/voltpix+240 < 480 ))
					RAM[a]=(data_in*5000/4096-ACDC*mean)/voltpix+240;
				a = a + 1;
			end	
			
			
	if((upv == 0 || downv == 0 || upt == 0 || downt == 0) && countscale > 49000000)
		begin
			if(upv == 0 && voltpix < 1000)
					voltpix = 2*voltpix;
			if(downv == 0 && voltpix > 5)
					voltpix = voltpix/2;
			if(upt == 0)
					timepix = 2*timepix;
			if(downt == 0)
					timepix = timepix/2;
			countscale = 0;
		end
		
	if(signal== 1 || count >0)count = count + 1;
	if(countscale < 50000000) countscale = countscale + 1;
	
	voltdiv=40*voltpix;			//mV
	timediv=timepix*40/50;		//uS
	
	end



endmodule