module ligaredesligar(ch1,ch0,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,acender_coluna,saida_c1, saida_c2,saida_c3,saida_c4,saida_c5, saida_c6, saida_c7, saida_l1,saida_l2,saida_l3,saida_l4,saida_l5);

	input ch1,ch0;
	input saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5;
	input [6:0] acender_coluna;
	wire chave;
	output saida_l1,saida_l2,saida_l3,saida_l4,saida_l5;
	output saida_c1, saida_c2,saida_c3,saida_c4,saida_c5, saida_c6, saida_c7;
	
	 or or1(chave, ch1, ch0);
	 
	 and and1(saida_l1, saida_reg1, chave); 
	 and and2(saida_l2, saida_reg2, chave);
	 and and3(saida_l3, saida_reg3, chave);
	 and and4(saida_l4, saida_reg4, chave);
	 and and5(saida_l5, saida_reg5, chave);
	 
	 and and6(saida_c1, acender_coluna[0], ~chave); 
	 and and7(saida_c2, acender_coluna[1], ~chave);
	 and and8(saida_c3, acender_coluna[2], ~chave);
	 and and9(saida_c4, acender_coluna[3], ~chave);
	 and and10(saida_c5, acender_coluna[4], ~chave);
	 and and11(saida_c6, acender_coluna[5], ~chave);
	 and and12(saida_c7, acender_coluna[6], ~chave);
	 
	endmodule