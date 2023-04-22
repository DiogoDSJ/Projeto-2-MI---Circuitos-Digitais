module registrador_coluna(bit0,bit1,bit2,bit3,bit4,bit5,bit6,clk,ch1,ch0,saidas_registrador_coluna,d); 	// flipflops instaciados que formam um registrador de 7 bits de entrada paralela que se auto-alimenta.
	
	input clk,d,ch1,ch0;
	wire[6:0] q;
	output [6:0] saidas_registrador_coluna;
	input bit0,bit1,bit2,bit3,bit4,bit5,bit6;
	
	
	// bit0 até bit6, são os bits de entrada para setar os valores do registrador_coluna.
	// saidas_registrador_coluna são os outputs que recebem as saídas dos flipflops.
	// as saídas q são as saídas de cada flip-flop.
	// ch1, ch0 = são as chaves de seleção.

	
	flipflop_registrador_coluna_especial t1(bit0,d,q[0],clk,ch1,ch0,q[6]);
	assign saidas_registrador_coluna[0] = q[0];
	flipflop_registrador_coluna t2(bit1,q[0],q[1],clk,ch1, ch0);
	assign saidas_registrador_coluna[1] = q[1];
	flipflop_registrador_coluna t3(bit2,q[1],q[2],clk,ch1, ch0);
	assign saidas_registrador_coluna[2] = q[2];
	flipflop_registrador_coluna t4(bit3,q[2],q[3],clk,ch1, ch0);
	assign saidas_registrador_coluna[3] = q[3];
	flipflop_registrador_coluna t5(bit4,q[3],q[4],clk,ch1, ch0);
	assign saidas_registrador_coluna[4] = q[4];
	flipflop_registrador_coluna t6(bit5,q[4],q[5],clk,ch1, ch0);
	assign saidas_registrador_coluna[5] = q[5];
	flipflop_registrador_coluna t7(bit6,q[5],q[6],clk,ch1, ch0);
	assign saidas_registrador_coluna[6] = q[6];
	

endmodule
