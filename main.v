module main(ch1,ch0,clk,saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5,acender_coluna,teste7b);
    input clk,ch1,ch0;
	 output saida_reg1,saida_reg2,saida_reg3,saida_reg4,saida_reg5;
	 output [6:0] acender_coluna;
	 wire [15:0] linha1;
	 wire [15:0] linha2;
	 wire [15:0] linha3;
	 wire [15:0] linha4;
	 wire [15:0] linha5;
	 output [5:0] teste7b;
	 
	 
	 contador contador_1(0,1,1,1,1,1,1,clk,ch1,ch0,acender_coluna);
	 
	 registrador reg_1(1,0,1,0,1,1,1,0,1,1,1,0,1,1,1,0,clk, ch1, ch0, linha1);
	 registrador reg_2(1,0,1,0,1,0,0,0,1,0,0,0,1,0,0,0,clk, ch1, ch0, linha2);
	 registrador reg_3(1,0,1,0,1,1,1,0,1,1,1,0,1,1,1,0,clk, ch1, ch0, linha3);
	 registrador reg_4(1,0,1,0,1,0,0,0,1,0,0,0,0,0,1,0,clk, ch1, ch0, linha4);
	 registrador reg_5(1,1,1,0,1,1,1,0,1,0,0,0,1,1,1,0,clk, ch1, ch0, linha5);
	 
	 registrador_7bits reg7b_1(linha1[15:9], clk, ch1, ch0, saida_reg1,teste7b);
	 registrador_7bits reg7b_2(linha2[15:9], clk, ch1, ch0, saida_reg2);
	 registrador_7bits reg7b_3(linha3[15:9], clk, ch1, ch0, saida_reg3);
	 registrador_7bits reg7b_4(linha4[15:9], clk, ch1, ch0, saida_reg4);
	 registrador_7bits reg7b_5(linha5[15:9], clk, ch1, ch0, saida_reg5);
	 
	 
endmodule
