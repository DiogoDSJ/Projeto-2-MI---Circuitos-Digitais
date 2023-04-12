module registrador(bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8,bit9,bit10,bit11,bit12,bit13,bit14,bit15,clk,ch0,ch1,saida_ultimoflip,saidas_registrador,d);
	
	input clk,d,ch0,ch1;
	wire[15:0] q;
	output [14:0] saidas_registrador;
	output saida_ultimoflip;
	input bit0,bit1,bit2,bit3,bit4,bit5,bit6,bit7,bit8,bit9,bit10,bit11,bit12,bit13,bit14,bit15;

	
	flipflop_especial t1(bit0,d,q[0],clk,q[1],ch0,ch1, q[15]);
	assign saidas_registrador[0] = q[0];
	flipflop t2(bit1,q[0],q[1],clk,q[2],ch0, ch1);
	assign saidas_registrador[1] = q[1];
	flipflop t3(bit2,q[1],q[2],clk,q[3],ch0, ch1);
	assign saidas_registrador[2] = q[2];
	flipflop t4(bit3,q[2],q[3],clk,q[4],ch0, ch1);
	assign saidas_registrador[3] = q[3];
	flipflop t5(bit4,q[3],q[4],clk,q[5],ch0, ch1);
	assign saidas_registrador[4] = q[4];
	flipflop t6(bit5,q[4],q[5],clk,q[6],ch0, ch1);
	assign saidas_registrador[5] = q[5];
	flipflop t7(bit6,q[5],q[6],clk,q[7],ch0, ch1);
	assign saidas_registrador[6] = q[6];
	flipflop t8(bit7,q[6],q[7],clk,q[8],ch0, ch1);
	assign saidas_registrador[7] = q[7];
	flipflop t9(bit8,q[7],q[8],clk,q[9],ch0, ch1);
	assign saidas_registrador[8] = q[8];
	flipflop t10(bit9,q[8],q[9],clk,q[10],ch0, ch1);
	assign saidas_registrador[9] = q[9];
	flipflop t11(bit10,q[9],q[10],clk,q[11],ch0, ch1);
	assign saidas_registrador[10] = q[10];
	flipflop t12(bit11,q[10],q[11],clk,q[12],ch0, ch1);
	assign saidas_registrador[11] = q[11];
	flipflop t13(bit12,q[11],q[12],clk,q[13],ch0, ch1);
	assign saidas_registrador[12] = q[12];
	flipflop t14(bit13,q[12],q[13],clk,q[14],ch0, ch1);
	assign saidas_registrador[13] = q[13];
	flipflop t15(bit14,q[13],q[14],clk,q[15],ch0,ch1);
	assign saidas_registrador[14] = q[14];
	flipflop t16(bit15,q[14],q[15],clk,q[0],ch0, ch1);
	assign saida_ultimoflip = q[15];
	

endmodule
