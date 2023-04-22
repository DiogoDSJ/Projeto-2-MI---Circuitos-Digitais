module flipflop_registrador7b(valores_registrador,d,q,clk,sinal); // módulo de flipflop utilizado no registrador de 7 bits.
	
	input d,clk,valores_registrador;
	output reg q;
	wire saida_mux;
	wire saida;
	wire f1,f2;
	input sinal;
	// valores_registrador = valor à ser setado no flipflop.
	// d = entrada do flipflop.
	// q = saida do flipflop.
	// clk = clock.
	//o que acontece nessas ands é o seguinte, toda vez que o zero chegar na ultima posição do registrador_coluna, vai haver a setação de valores novamente
	//ou seja, as ultimas 7 saídas do registrador de 16 bits vão ser setadas novamente, e enquanto isso não acontecer, os flipflops vão agir normalmente, enviando sua saída para o próximo flipflop.
	//então esse flipflop funciona em função do registrador_coluna.
	
	and and1(f1, d, sinal);
	and and2(f2, valores_registrador, ~sinal);
	
	or or1(saida, f1,f2);
	
	always @(posedge clk)begin
          q = saida;
     end
	
endmodule
