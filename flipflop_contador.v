module flipflop_contador(setar_valor,d,q,clk,ch0,ch1);
	
	input d,clk,ch0, ch1, setar_valor;
	output reg q;
	wire saida_mux;
	
	mux_contador mux1(setar_valor,d,ch0,ch1,saida_mux);

	always @(posedge clk)begin
          q = saida_mux;
     end
	
endmodule