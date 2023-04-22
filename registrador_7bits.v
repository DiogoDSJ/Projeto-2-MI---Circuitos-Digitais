module registrador_7bits(bits,clk,saida_ultimoflip,sinal,saidas_registrador,d); 	// flipflops instaciados que formam um registrador de 7 bits de entrada paralela.

	input clk,d;
	wire[6:0] q;
	output [5:0] saidas_registrador;
	input [6:0] bits;
	output saida_ultimoflip;
	input sinal;
	
	// bit0 até bit6, são os bits de entrada para setar os valores do registrador.
	// saidas_registrador são os outputs que recebem as saídas dos flipflops.
	// as saídas "q" são as saídas de cada flip-flop.
	// o  "sinal" se trata da ultima saida do registrador_coluna de 7 bits, que vai basicamente ditar o funcionamento desse registrador.
	
	flipflop_registrador7b t1(bits[0],d,q[0],clk,sinal);
	assign saidas_registrador[0] = q[0];
	flipflop_registrador7b t2(bits[1],q[0],q[1],clk,sinal);
	assign saidas_registrador[1] = q[1];
	flipflop_registrador7b t3(bits[2],q[1],q[2],clk,sinal);
	assign saidas_registrador[2] = q[2];
	flipflop_registrador7b t4(bits[3],q[2],q[3],clk,sinal);
	assign saidas_registrador[3] = q[3];
	flipflop_registrador7b t5(bits[4],q[3],q[4],clk,sinal);
	assign saidas_registrador[4] = q[4];
	flipflop_registrador7b t6(bits[5],q[4],q[5],clk,sinal);
	assign saidas_registrador[5] = q[5];
	flipflop_registrador7b t7(bits[6],q[5],q[6],clk,sinal);
	assign saida_ultimoflip = q[6];
	


endmodule