module flipflop(valores_registrador,d,q,clk,saida_flipposterior,ch1, ch0); // módulo de flipflop utilizado no registrador de 16 bits.
	
	input d,clk,saida_flipposterior,ch1, ch0, valores_registrador;
	output reg q;
	wire saida_mux;
	wire fio;
	// valores_registrador = valor à ser setado no flipflop.
	// d = entrada do flipflop.
	// q = saida do flipflop.
	// clk = clock.
	// saida_flipposterior = saida do próximo flipflop.
   // ch1, ch0 = chaves de seleção CH1 e CH0	
	// mux 3x1 do registrador de 16 bits, basicamente tem 3 opções, quando as chaves estão em 00, o valor é setado no flip, 10, o flip receberá a saida do próximo flip-flop, na 01 o flipflop receberá a saida do flip anterior.
	// quando a chave está no 11, a nand vai mandar zero para o wire fio, fazendo com que, a condição do if não seja cumprida e não ocorra mudança de valor no flip-flop.
	mux mux0(valores_registrador,saida_flipposterior,d,ch1,ch0,saida_mux); 
	nand nand1(fio, ch1, ch0); 


	always @(posedge clk)begin
			if(fio)begin
          q = saida_mux;
			 end
     end
	
endmodule
