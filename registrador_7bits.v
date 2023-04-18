module registrador_7bits(bits,clk,ch1,ch0,saida_ultimoflip,sinal,saidas_registrador,d);

	input clk,d,ch1,ch0;
	wire[6:0] q;
	output [5:0] saidas_registrador;
	input [6:0] bits;
	output saida_ultimoflip;
	input sinal;

	
	flipflop_registrador7b t1(bits[0],d,q[0],clk,q[1],ch1,ch0,sinal);
	assign saidas_registrador[0] = q[0];
	flipflop_registrador7b t2(bits[1],q[0],q[1],clk,q[2],ch1, ch0,sinal);
	assign saidas_registrador[1] = q[1];
	flipflop_registrador7b t3(bits[2],q[1],q[2],clk,q[3],ch1, ch0,sinal);
	assign saidas_registrador[2] = q[2];
	flipflop_registrador7b t4(bits[3],q[2],q[3],clk,q[4],ch1, ch0,sinal);
	assign saidas_registrador[3] = q[3];
	flipflop_registrador7b t5(bits[4],q[3],q[4],clk,q[5],ch1, ch0,sinal);
	assign saidas_registrador[4] = q[4];
	flipflop_registrador7b t6(bits[5],q[4],q[5],clk,q[6],ch1, ch0,sinal);
	assign saidas_registrador[5] = q[5];
	flipflop_registrador7b t7(bits[6],q[5],q[6],clk,q[0],ch1, ch0,sinal);
	assign saida_ultimoflip = q[6];
	


endmodule