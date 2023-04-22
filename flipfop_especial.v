module flipflop_especial(valores_registrador,d,q,clk,saida_flipposterior,ch1,ch0,ultimo_flip,saida_flip); // módulo de flipflop utilizado no registrador de 16 bits.
	
	input d,clk,saida_flipposterior,ch1,ch0,valores_registrador, ultimo_flip;
	output reg q;
	wire saida_mux;
	output saida_flip;
	wire fio;
	// é a mesma lógica do modulo flipflop, só que com uma diferença, esse flipflop especial é feito para ser o primeiro, já que ele vai receber a saida do último e essa saida sera jogado na or, fazendo assim um loop.
	
	or or1(saida_flip, d, ultimo_flip);
	mux mux0(valores_registrador,saida_flipposterior,saida_flip,ch1,ch0,saida_mux);
	nand nand1(fio, ch1, ch0);
	
	always @(posedge clk)begin
			if(fio)begin
          q = saida_mux;
			 end
     end
endmodule