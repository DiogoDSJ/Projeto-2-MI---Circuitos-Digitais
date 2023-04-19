module flipflop_registrador7b(valores_registrador,d,q,clk,ch1, ch0,sinal);
	
	input d,clk,ch1, ch0, valores_registrador;
	output reg q;
	wire saida_mux;
	wire saida;
	wire f1,f2;
	input sinal;
	
	and and1(chave, ~ch0, ~ch1);
	
	mux_reg7b mux0(valores_registrador,d,chave,saida_mux);
	
	and and2(f1, saida_mux, sinal);
	and and3(f2, valores_registrador, ~sinal);
	
	or or1(saida, f1,f2);
	
	always @(posedge clk)begin
          q = saida;
     end
	
endmodule
