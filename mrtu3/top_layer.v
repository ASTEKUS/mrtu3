//module top_layer (
//						input 				clk,
//						input 				reset,
//						input      	[9:0] 	sw,
//						input 	   	[1:0] 	key,
//						output	reg [6:0]   hex_n);
//						
//						
//reg [9:0] 	ledr;
//reg [9:0] 	 rez;						
//
//// generate endgenerate						
//cnt_8bit cnt		(  .clk(clk),
//					   .reset(reset),
//					   .sw(sw),
//					   .key	(key),
//					   .ledr(ledr),
//					   .rez(rez)
//					   );
//					   
//CodeToHex hex0		(  .clk(clk),
//					   .[3:0]rez([3:0]rez),
//					   .hex_n(hex_n)
//					   );
//					   
//					   
//CodeToHex hex1		(  .clk(clk),
//					   .rez[7:4](rez[7:4]),
//					   .hex_n(hex_n)
//					   );
//					   
//					  
//
//endmodule 