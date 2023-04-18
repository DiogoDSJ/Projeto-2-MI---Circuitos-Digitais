module main(ch1,ch0,clk,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,acender_coluna);
    input clk,ch1,ch0;
	 output saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5;
	 output [6:0] acender_coluna;
	 wire [15:0] linha1;
	 wire [15:0] linha2;
	 wire [15:0] linha3;
	 wire [15:0] linha4;
	 wire [15:0] linha5;
	 wire clock1;
	 wire clock2;
	 wire clock3;
	 wire chave;
	 

	 //divisor div1(clk, clock1, clock2,clock3);
	 dobalacobaco doba(1, 1, clk, clock1, clock2,clock3);
	 contador contador_1(0,1,1,1,1,1,1,clock1,ch1,ch0,acender_coluna);
	 
	 or or1(chave, ch0, ch1);
	 and and1(saida_l1, saida_reg1, chave); 
	 and and2(saida_l2, saida_reg2, chave);
	 and and3(saida_l3, saida_reg3, chave);
	 and and4(saida_l4, saida_reg4, chave);
	 and and5(saida_l5, saida_reg5, chave);
	 
	 
	 registrador reg_1(1,1,1,0,1,1,1,0,1,1,1,0,1,0,1,0,clock3, ch0, ch1, linha1);
	 registrador reg_2(0,0,1,0,0,0,1,0,0,0,1,0,1,0,1,0,clock3, ch0, ch1, linha2);
	 registrador reg_3(1,1,1,0,1,1,1,0,1,1,1,0,1,0,1,0,clock3, ch0, ch1, linha3);
	 registrador reg_4(1,0,0,0,0,0,1,0,0,0,1,0,1,0,1,0,clock3, ch0, ch1, linha4);
	 registrador reg_5(1,1,1,0,0,0,1,0,1,1,1,0,1,1,1,0,clock3, ch0, ch1, linha5);
	 
	 registrador_7bits reg7b_1(linha1[6:0], clock1, ch0, ch1, saida_reg1,acender_coluna[6]);
	 registrador_7bits reg7b_2(linha2[6:0], clock1, ch0, ch1, saida_reg2,acender_coluna[6]);
	 registrador_7bits reg7b_3(linha3[6:0], clock1, ch0, ch1, saida_reg3,acender_coluna[6]);
	 registrador_7bits reg7b_4(linha4[6:0], clock1, ch0, ch1, saida_reg4,acender_coluna[6]);
	 registrador_7bits reg7b_5(linha5[6:0], clock1, ch0, ch1, saida_reg5,acender_coluna[6]);
	 
	 
endmodule
