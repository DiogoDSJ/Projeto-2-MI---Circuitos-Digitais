module flipflop_contador(setar_valor,d,q,clk,ch1,ch0);
	
	input d,clk,ch1, ch0, setar_valor;
	output reg q;
	wire saida_mux;
	
	mux_contador mux1(setar_valor,d,ch1,ch0,saida_mux);

	always @(posedge clk)begin
          q = saida_mux;
     end
	
endmodule