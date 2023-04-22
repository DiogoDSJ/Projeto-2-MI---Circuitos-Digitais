module mux_registrador_coluna(definir_valores, esquerda_para_direita, ch1, ch0, saida_mux); // mux 2x1 utilizado no flipflop_registrador_coluna e flipflop_registrador_coluna_especial

	input esquerda_para_direita, definir_valores, ch1, ch0;
	output saida_mux;
	wire f1, f2,f3;

	and and1(f1, ~ch1, ~ch0); // transformando ch1 e o ch0 em somente uma chave para fazer um mux 2x1.
	and and2(f2, definir_valores, f1);
	and and3(f3, esquerda_para_direita, ~f1);
	// uma lógica simples de multiplexador, as chaves ch0 e ch1 vão selecionar qual será a saida por meio das ands e está será enviada por meio do output saida_mux.
	or or1(saida_mux, f2, f3);

endmodule
