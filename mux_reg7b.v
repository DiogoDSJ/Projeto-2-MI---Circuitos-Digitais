module mux_reg7b(definir_valores, esquerda_para_direita, chave, saida_mux);

	input esquerda_para_direita, definir_valores, chave;
	output saida_mux;
	wire f1, f2;

	and and1(f1, definir_valores, chave);
	and and2(f2, esquerda_para_direita, ~chave);
	or or1(saida_mux, f1, f2);


endmodule
