module main(ch0,ch1,clk,saida_r1,saida_r2,saida_r3,saida_r4,saida_r5,acender_coluna);
    input clk,ch0,ch1;
	 output saida_r1,saida_r2,saida_r3,saida_r4,saida_r5;
	 output [6:0] acender_coluna;
	 
	 contador contador1(1,0,0,0,0,0,0,clk,ch0,ch1,acender_coluna);
	 registrador reg1(1,0,1,0,1,1,1,0,1,1,1,0,1,1,1,0,clk, ch0, ch1, saida_r1);
	 registrador reg2(1,0,1,0,1,0,0,0,1,0,0,0,1,0,0,0,clk, ch0, ch1, saida_r2);
	 registrador reg3(1,0,1,0,1,1,1,0,1,1,1,0,1,1,1,0,clk, ch0, ch1, saida_r3);
	 registrador reg4(1,0,1,0,1,0,0,0,1,0,0,0,0,0,1,0,clk, ch0, ch1, saida_r4);
	 registrador reg5(1,1,1,0,1,1,1,0,1,0,0,0,1,1,1,0,clk, ch0, ch1, saida_r5);
	 
endmodule
