/*********************************************************************
*  saed_mc : SRAM_myname Verilog description                       *
*  ---------------------------------------------------------------   *
*  Filename      : /home/tobyhu/eecs598/proj/template/memory/mc_work/SRAM_myname.v                         *
*  SRAM name     : SRAM_myname                                       *
*  Word width    : 16    bits                                        *
*  Word number   : 128                                               *
*  Adress width  : 7     bits                                        *
*  ---------------------------------------------------------------   *
*  Creation date : Sat December 06 2025                              *
*********************************************************************/

`timescale 1ns/100fs

`define numAddr 7
`define numWords 128
`define wordLength 16


module SRAM_myname (A,CE,WEB,OEB,CSB,I,O);

input 				CE;
input 				WEB;
input 				OEB;
input 				CSB;

input 	[6:0] 		A;
input 	[15:0] 	I;
output 	[15:0] 	O;

reg    	[15:0]   	memory[127:0];
reg  	[15:0]	data_out1;
reg 	[15:0] 	O;

wire 				RE;
wire 				WE;


and u1 (RE, ~CSB,  WEB);
and u2 (WE, ~CSB, ~WEB);


always @ (posedge CE) 
	if (RE)
		data_out1 = memory[A];
	else 
	   if (WE)
		memory[A] = I;
		

always @ (data_out1 or OEB)
	if (!OEB) 
		O = data_out1;
	else
		O =  16'bz;

endmodule