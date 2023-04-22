module divisor_de_clock(j,k,clk,saida1,saida2); // módulo de divisor de clock.
	input k,j,clk;
	output saida1,saida2;
	wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24;
	
	
	
	jk_ff ff1(j,k,clk,s1);
	jk_ff ff2(j,k,s1,s2);
	jk_ff ff3(j,k,s2,s3);
	jk_ff ff4(j,k,s3,s4); 
	jk_ff ff5(j,k,s4,s5);
	jk_ff ff6(j,k,s5,s6); 
	jk_ff ff7(j,k,s6,s7); 	
	jk_ff ff8(j,k,s7,s8); 
	jk_ff ff9(j,k,s8,s9); 	
	jk_ff ff10(j,k,s9,s10); 
	jk_ff ff11(j,k,s10,s11); 
	jk_ff ff12(j,k,s11,s12); 
	jk_ff ff13(j,k,s12,s13); 
	jk_ff ff14(j,k,s13,s14); 
	jk_ff ff15(j,k,s14,s15); 
	jk_ff ff16(j,k,s15,s16); 
	jk_ff ff17(j,k,s16,s17); 
	jk_ff ff18(j,k,s17,s18); 
	jk_ff ff19(j,k,s18,s19); 
	jk_ff ff20(j,k,s19,s20); 
	jk_ff ff21(j,k,s20,s21); 
	jk_ff ff22(j,k,s21,s22); 
	jk_ff ff23(j,k,s22,s23);
	jk_ff ff24(j,k,s23,s24);
	
	assign saida1 = s5;
	assign saida2 = s24;
		
endmodule