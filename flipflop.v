module flipflop(valores_registrador,d,q,clk,saida_flipposterior,ch0, ch1);
	
	input d,clk,saida_flipposterior,ch0, ch1, valores_registrador;
	output reg q;
	wire saida_mux;
	
	mux mux0(valores_registrador,saida_flipposterior,d,ch0,ch1,saida_mux);
	nand nand1(fio, ch0,ch1);

	always @(posedge clk)begin
			if(fio)begin
          q = saida_mux;
			 end
     end
	
endmodule
