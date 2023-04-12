module mux(definir_valores, esquerda_para_direita, direita_para_esquerda, ch0, ch1, saida_mux);

	input esquerda_para_direita, direita_para_esquerda, definir_valores, ch0, ch1;
	output saida_mux;
	wire f1, f2, f3;

	and and1(f1, definir_valores, ~ch0, ~ch1);
	and and2(f2, direita_para_esquerda, ~ch0, ch1);
	and and3(f3, esquerda_para_direita, ch0, ~ch1);
	or or1(saida_mux, f1, f2, f3);


endmodule
