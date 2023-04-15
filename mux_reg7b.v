module mux_reg7b(definir_valores, esquerda_para_direita, direita_para_esquerda, parado, ch1, ch0, saida_mux);

	input esquerda_para_direita, direita_para_esquerda, definir_valores, parado, ch1, ch0;
	output saida_mux;
	wire f1, f2, f3, f4;

	and and1(f1, definir_valores, ~ch1, ~ch0);
	and and2(f2, direita_para_esquerda, ~ch1, ch0);
	and and3(f3, esquerda_para_direita, ch1, ~ch0);
	and and4(f4, direita_para_esquerda, ch1, ch0);
	or or1(saida_mux, f1, f2, f3,f4);


endmodule
