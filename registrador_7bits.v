module registrador_7bits(bits,clk,ch1,ch0,saida_serial,sinal,saidas_registrador,d,saida_primeiroflip,saida_ultimoflip);

	input clk,d,ch1,ch0;
	wire[6:0] q;
	output [4:0] saidas_registrador;
	input [6:0] bits;
	output saida_ultimoflip;
	output saida_primeiroflip;
	input sinal;
	output saida_serial;

	
	flipflop_registrador7b t1(bits[0],d,q[0],clk,q[1],ch1,ch0,sinal);
	assign saida_primeiroflip = q[0];
	flipflop_registrador7b t2(bits[1],q[0],q[1],clk,q[2],ch1, ch0,sinal);
	assign saidas_registrador[0] = q[1];
	flipflop_registrador7b t3(bits[2],q[1],q[2],clk,q[3],ch1, ch0,sinal);
	assign saidas_registrador[1] = q[2];
	flipflop_registrador7b t4(bits[3],q[2],q[3],clk,q[4],ch1, ch0,sinal);
	assign saidas_registrador[2] = q[3];
	flipflop_registrador7b t5(bits[4],q[3],q[4],clk,q[5],ch1, ch0,sinal);
	assign saidas_registrador[3] = q[4];
	flipflop_registrador7b t6(bits[5],q[4],q[5],clk,q[6],ch1, ch0,sinal);
	assign saidas_registrador[4] = q[5];
	flipflop_registrador7b t7(bits[6],q[5],q[6],clk,q[0],ch1, ch0,sinal);
	assign saida_ultimoflip = q[6];
	wire f1,f2;
	
	and and1(f1, saida_primeiroflip, ~ch1, ch0);
	and and2(f2, saida_ultimoflip, ch1); // esse só vai receber ch1, pq pensa comigo, quando a gente parar de mover o outro registrador
	// e a chave estiver em 1, 1 as chaves de seleção esse daqui vai continuar mandando pra que a letra fique parada.
	
	or or1(saida_serial, f1,f2);


endmodule