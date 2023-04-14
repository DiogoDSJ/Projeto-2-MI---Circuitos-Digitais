module flipflop_contador_especial(setar_valor,d,q,clk,ch1,ch0,ultimo_flip,saida_flip);
	
	input d,clk,ch1,ch0,setar_valor, ultimo_flip;
	output reg q;
	wire saida_mux;
	output saida_flip;
	
	or or1(saida_flip, d, ultimo_flip);
	mux_contador mux1(setar_valor, saida_flip, ch1, ch0, saida_mux);

	always @(posedge clk)begin
          q = saida_mux;
     end
endmodule
