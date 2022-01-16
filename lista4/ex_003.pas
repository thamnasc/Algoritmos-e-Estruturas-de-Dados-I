(* Enunciado: 

A definição de uma série de pares Valor-Quadrado em Matemática é dada pela presença de elementos numéricos, organizados em sequências dois-a-dois,
em que cada número é seguido de seu quadrado exatamente uma vez (veja os exemplos abaixo). 

Faça um programa Pascal que leia do teclado uma sequência com uma quantidade arbitrária de valores inteiros positivos. 
A sequência termina com o valor 0, que serve para indicar o final da entrada de dados e não deverá ser processado. 
O programa deve determinar e imprimir se a série é ou não do tipo Valor-Quadrado imprimindo 1 caso seja e 0 caso não seja. 

Exemplos: 
Entrada 1: 
25 625 7 49 10 100 8 64 0 

Saída Esperada 1: 
1 

Entrada 2: 
6 36 4 16 9 30 5 25 0 

Saída Esperada 2: 
0 

Entrada 3: 
2 4 3 9 4 16 5 25 0 

Saída Esperada 3: 
1 *)

program ex_003;
var num, valor, quad, eh_serie, indice: longint;
um_par: boolean;

begin
	read(num);
	eh_serie:= 1;
	indice:= 1;
	while(num <> 0) do
	begin
		if((indice mod 2) = 0) then
		begin
			um_par:= true;
			quad:= num;
		end
		else
			valor:= num;
		if(um_par = true) then
		begin
			um_par:= false;
			if(quad <> (valor * valor)) then
				eh_serie:= 0;
		end;
		indice:= indice + 1;
		read(num);
	end;
	writeln(eh_serie);
end.
