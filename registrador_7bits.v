module registrador_7bits(bits,clk,ch1,ch0,saida_ultimoflip,saidas_registrador,d);

	input clk,d,ch1,ch0;
	wire[6:0] q;
	input [6:0] bits;
	output [5:0] saidas_registrador;
	output saida_ultimoflip;

	
	flipflop_especial t1(bits[0],d,q[0],clk,q[1],ch1,ch0, q[6]);
	assign saidas_registrador[0] = q[0];
	flipflop t2(bits[1],q[0],q[1],clk,q[2],ch1, ch0);
	assign saidas_registrador[1] = q[1];
	flipflop t3(bits[2],q[1],q[2],clk,q[3],ch1, ch0);
	assign saidas_registrador[2] = q[2];
	flipflop t4(bits[3],q[2],q[3],clk,q[4],ch1, ch0);
	assign saidas_registrador[3] = q[3];
	flipflop t5(bits[4],q[3],q[4],clk,q[5],ch1, ch0);
	assign saidas_registrador[4] = q[4];
	flipflop t6(bits[5],q[4],q[5],clk,q[6],ch1, ch0);
	assign saidas_registrador[5] = q[5];
	flipflop t16(bits[6],q[5],q[6],clk,q[0],ch1, ch0);
	assign saida_ultimoflip = q[6];
	

endmodule