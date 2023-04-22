module flipflop_registrador_coluna_especial(valores_registrador,d,q,clk,ch1,ch0,ultimo_flip,saida_flip); // módulo de flipflop utilizado no registrador da coluna de 7 bits.
	
	input d,clk,ch1,ch0,valores_registrador, ultimo_flip;
	output reg q;
	wire saida_mux;
	output saida_flip;
	// esse flipflop especial é feito para ser o primeiro, já que ele vai receber a saida do último_flip e essa saida sera jogado na or, fazendo assim um loop.
	// valores_registrador = valor à ser setado no flipflop.
	// d = entrada do flipflop.
	// q = saida do flipflop.
	// clk = clock.
	// ultimo_flip = saida do ultimo flipflop.
   // ch1, ch0 = chaves de seleção CH1 e CH0	
	// mux 2x1 do registrador da coluna de 7 bits, basicamente tem 2 opções, quando as chaves estão em 00, o valor é setado no flip, e em qualquer chave diferente de 00, ele vai funcionar da esquerda para direita.
	or or1(saida_flip, d, ultimo_flip);
	mux_registrador_coluna mux1(valores_registrador, saida_flip, ch1, ch0, saida_mux);

	always @(posedge clk)begin
          q = saida_mux;
     end
endmodule
