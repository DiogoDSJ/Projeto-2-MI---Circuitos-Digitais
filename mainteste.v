module main(ch1,ch0,clk,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,acender_coluna);
    input clk,ch1,ch0;
	 output saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5;
	 output [6:0] acender_coluna;
	 wire [15:0] linha1;
	 wire [15:0] linha2;
	 wire [15:0] linha3;
	 wire [15:0] linha4;
	 wire [15:0] linha5;
	 wire clock1;
	 wire clock2;
	 // clk = clock de 50mhz recebido pela FPGA.
	 // ch1 e ch0 são as chaves de seleção.
	 // saida_reg1 até saida_reg5 são as saidas últimas saidas dos flipflops do registrador de 7 bits.
	 // acender_coluna é um vetor que será responsável por mandar as saídas para as colunas da matriz.
	 // os wire de linha1 até linha5 de 16 bits, são os elementos do registrador de 16 bits que será enviado os 7 últimos digitos como entrada para o registrador de 7bits.
	 // clock1 e clock2 são os clocks divididos com base no clock da FPGA, onde o clock1 é o clock mais rápido e este é utilizado no registrador_coluna e nos registradores de 7bits. 
	 // Já o clock2 que se trata de um mais lento, ele é utilizado nos registradores de 16 bits.


	 divisor_de_clock divisor(1, 1, clk, clock1, clock2);
	 registrador_coluna registrador_coluna_1(0,1,1,1,1,1,1,clock1,ch1,ch0,acender_coluna);
	 
	 registrador reg_1(0,1,1,1,0,1,1,1,0,1,1,1,0,1,0,1,clock2, ch1, ch0, linha1);
	 registrador reg_2(0,0,0,1,0,0,0,1,0,0,0,1,0,1,0,1,clock2, ch1, ch0, linha2);
	 registrador reg_3(0,1,1,1,0,1,1,1,0,1,1,1,0,1,0,1,clock2, ch1, ch0, linha3);
	 registrador reg_4(0,1,0,0,0,0,0,1,0,0,0,1,0,1,0,1,clock2, ch1, ch0, linha4);
	 registrador reg_5(0,1,1,1,0,0,0,1,0,1,1,1,0,1,1,1,clock2, ch1, ch0, linha5);
	 
	 registrador_7bits reg7b_1(linha1[6:0], clock1, saida_reg1,acender_coluna[6]);
	 registrador_7bits reg7b_2(linha2[6:0], clock1, saida_reg2,acender_coluna[6]);
	 registrador_7bits reg7b_3(linha3[6:0], clock1, saida_reg3,acender_coluna[6]);
	 registrador_7bits reg7b_4(linha4[6:0], clock1, saida_reg4,acender_coluna[6]);
	 registrador_7bits reg7b_5(linha5[6:0], clock1, saida_reg5,acender_coluna[6]);
	 
	 
endmodule
