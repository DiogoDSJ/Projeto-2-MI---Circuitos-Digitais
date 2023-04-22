module flipflop_registrador_coluna(valores_registrador,d,q,clk,ch1,ch0); // módulo de flipflop utilizado no registrador da coluna de 7 bits.
	
	input d,clk,ch1, ch0, valores_registrador;
	output reg q;
	wire saida_mux;
	// valores_registrador = valor à ser setado no flipflop.
	// d = entrada do flipflop.
	// q = saida do flipflop.
	// clk = clock.
   // ch1, ch0 = chaves de seleção CH1 e CH0	
	// mux 2x1 do registrador da coluna de 7 bits, basicamente tem 2 opções, quando as chaves estão em 00, o valor é setado no flip, e em qualquer chave diferente de 00, ele vai funcionar da esquerda para direita.
	
	mux_registrador_coluna mux1(valores_registrador,d,ch1,ch0,saida_mux);

	always @(posedge clk)begin
          q = saida_mux;
     end
	
endmodule