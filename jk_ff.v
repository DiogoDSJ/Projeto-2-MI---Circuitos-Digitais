module jk_ff (j,k,clk,q); // modulo de jk flipflop utilizado para fazer o divisor de clock.
	input j,k,clk;
	output q;
   reg q;  
  
   always @ (posedge clk)  
      case ({j,k})  
         2'b00 :  q <= q;  
         2'b01 :  q <= 0;  
         2'b10 :  q <= 1;  
         2'b11 :  q <= ~q;  
      endcase 
		
endmodule

/*
Bem, seguindo a teoria, o ff JK segue um trabalho parecido com o D, contendo duas entradas J e k quando ambos são 00 
nada ocorre ao circuito, quando J é 1 e k 0, um valor sai em Q, quando o J é 0 e k é 1 ocorre o reset do valor armazenado, 
até aí tudo bem, a coisa é quando J e k são iguais a 1 q acontece o chamado toggle que a cada variação de clock a saída 
será ou 0 ou 1, com isso, nós formamos um contador assíncrono, para que J e k sejam constantes e que a cada variação de 
clock ele transfira as informações para o próximo ff tendo sua frequência inicial "cortada" pela metade. Podendo assim 
criar um divisor de frequência utilizando flipflops JK em cascata, também chamado na fundamentação teórica de contador 
assíncrono
*/