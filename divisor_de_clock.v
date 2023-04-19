module divisor_de_clock(j,k,clk,saida1,saida2,ch1,ch0);
	input k,j,clk,ch1,ch0;
	output saida1,saida2;
	wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28;
	
	
	
	jk_ff primeiro(j,k,clk,s1);
	jk_ff segundo(j,k,s1,s2);
	jk_ff terceiro(j,k,s2,s3);
	jk_ff quarto(j,k,s3,s4); 
	jk_ff quinto(j,k,s4,s5);
	jk_ff sexto(j,k,s5,s6); 
	jk_ff setimo(j,k,s6,s7); 	
	jk_ff oitavo(j,k,s7,s8); 
	jk_ff nove(j,k,s8,s9); 	
	jk_ff dez(j,k,s9,s10); 
	jk_ff onze(j,k,s10,s11); 
	jk_ff doze(j,k,s11,s12); 
	jk_ff treze(j,k,s12,s13); 
	jk_ff quatorze(j,k,s13,s14); 
	jk_ff quinze(j,k,s14,s15); 
	jk_ff dezesseis(j,k,s15,s16); 
	jk_ff dezoito(j,k,s16,s17); 
	jk_ff dezenove(j,k,s17,s18); 
	jk_ff vinte(j,k,s18,s19); 
	jk_ff vinteum(j,k,s19,s20); 
	jk_ff vintedois(j,k,s20,s21); 
	jk_ff vintetres(j,k,s21,s22); 
	jk_ff vintequatro(j,k,s22,s23);
	jk_ff vintecinco(j,k,s23,s24);
	
	wire f1,f2;
	
	or or1(f1, ch1, ch0);
	nand nand1(f2, ch1, ch0);
	
	and and1(saida1, s5, f1);
	and and2(saida2, s24, f1, f2);
	
		
endmodule