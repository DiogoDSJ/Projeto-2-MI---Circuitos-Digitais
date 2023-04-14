module flipflop(valores_registrador,d,q,clk,saida_flipposterior,ch1, ch0);
	
	input d,clk,saida_flipposterior,ch1, ch0, valores_registrador;
	output reg q;
	wire saida_mux;
	
	mux mux0(valores_registrador,saida_flipposterior,d,ch1,ch0,saida_mux);

	always @(posedge clk)begin
          q = saida_mux;
     end
	
endmodule
