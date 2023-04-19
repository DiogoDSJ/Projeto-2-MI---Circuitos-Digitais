module contador(bit0,bit1,bit2,bit3,bit4,bit5,bit6,clk,ch1,ch0,saidas_contador,d);
	
	input clk,d,ch1,ch0;
	wire[6:0] q;
	output [6:0] saidas_contador;
	input bit0,bit1,bit2,bit3,bit4,bit5,bit6;
	
	
	flipflop_contador_especial t1(bit0,d,q[0],clk,ch1,ch0,q[6]);
	assign saidas_contador[0] = q[0];
	flipflop_contador t2(bit1,q[0],q[1],clk,ch1, ch0);
	assign saidas_contador[1] = q[1];
	flipflop_contador t3(bit2,q[1],q[2],clk,ch1, ch0);
	assign saidas_contador[2] = q[2];
	flipflop_contador t4(bit3,q[2],q[3],clk,ch1, ch0);
	assign saidas_contador[3] = q[3];
	flipflop_contador t5(bit4,q[3],q[4],clk,ch1, ch0);
	assign saidas_contador[4] = q[4];
	flipflop_contador t6(bit5,q[4],q[5],clk,ch1, ch0);
	assign saidas_contador[5] = q[5];
	flipflop_contador t7(bit6,q[5],q[6],clk,ch1, ch0);
	assign saidas_contador[6] = q[6];
	

endmodule
