module flipflop_especial(valores_registrador,d,q,clk,saida_flipposterior,ch0,ch1,ultimo_flip,saida_flip);
	
	input d,clk,saida_flipposterior,ch0,ch1,valores_registrador, ultimo_flip;
	output reg q;
	wire saida_mux;
	output saida_flip;
	
	or or1(saida_flip, d, ultimo_flip);
	mux mux0(valores_registrador,saida_flipposterior,saida_flip,ch0,ch1,saida_mux);
	nand nand1(fio, ch0,ch1);

	always @(posedge clk)begin
			if(fio)begin
          q = saida_mux;
			 end
     end
endmodule
