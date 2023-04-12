module main(ch0,ch1,clk,saida_r1,saida_r2,saida_r3,saida_r4,saida_r5,saida_r6,saida_r7);
    input clk,ch0,ch1;
	 output saida_r1,saida_r2,saida_r3,saida_r4,saida_r5,saida_r6,saida_r7;
	 
	 registrador reg1(0,0,0,0,0,0,0,0,0,0,0,0,1,0,clk, ch0, ch1, saida_r1);
	 registrador reg2(0,0,1,1,0,0,0,0,0,0,0,1,0,0,clk, ch0, ch1, saida_r2);
	 registrador reg3(0,0,1,1,0,0,0,0,0,0,1,0,0,0,clk, ch0, ch1, saida_r3);
	 registrador reg4(0,0,1,1,0,0,0,0,0,1,0,0,0,0,clk, ch0, ch1, saida_r4);
	 registrador reg5(0,0,1,1,0,0,0,0,1,0,0,0,0,0,clk, ch0, ch1, saida_r5);
	 registrador reg6(0,0,1,1,0,0,0,1,0,0,0,0,0,0,clk, ch0, ch1, saida_r6);
	 registrador reg7(0,0,1,1,0,0,1,0,0,0,0,0,0,0,clk, ch0, ch1, saida_r7);
	 
endmodule
