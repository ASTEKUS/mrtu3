module cnt_8bit (
			input 				clk,
			input 				reset,
			input      [9:0] 	sw,
			input 	   [1:0] 	key,
			output reg [9:0] 	ledr,
			output reg [9:0] 	rez
								);
integer i;

reg my_event;


always @(sw) 
begin
    if ((sw[0] + sw[1] + sw[2] + sw[3] + sw[4] + sw[5] + 
		sw[6] + sw[7] + sw[8] + sw[9]) > 2'b11)  //4'd3
		my_event <= 1'b1;
	else 
		my_event <= 1'b0;
end
								
always @(posedge clk)
begin
	
	if (key[1])
		begin
		ledr[9:0]   <=   10'b00000_00000;							
		end
	
	else
																							
if (key[0])
	begin
		for(i = 0; i <=9; i = i + 1 )
			begin
				rez <= rez + sw[i];
			end
	ledr = rez;						
	end	

else 
if (key[0] && my_event)
	begin
		for(i = 0; i <=9; i = i + 1 )
			begin
				rez <= rez + sw[i];
			end		
	ledr = rez + 1'b1;			
	end
																																																	
end

endmodule 
								
