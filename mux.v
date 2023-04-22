module mux(definir_valores, esquerda_para_direita, direita_para_esquerda, ch1, ch0, saida_mux); // mux utilizado no modulos de flipflop e flipflop_especial.

	input esquerda_para_direita, direita_para_esquerda, definir_valores, ch1, ch0;
	output saida_mux;
	wire f1, f2, f3;

	and and1(f1, definir_valores, ~ch1, ~ch0); // mux 3x1, a combinação 11 foi ignorada para ser utilizada na lógica de interromper a mudança de valor do flip.
	and and2(f2, direita_para_esquerda, ch1, ~ch0);
	and and3(f3, esquerda_para_direita, ~ch1, ch0);
	or or1(saida_mux, f1, f2, f3);
	// uma lógica simples de multiplexador, as chaves ch0 e ch1 vão selecionar qual será a saida por meio das ands e está será enviada por meio do output saida_mux.


endmodule
