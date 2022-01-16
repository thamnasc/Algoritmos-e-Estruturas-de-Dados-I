(* Enunciado: 

Faça um programa Pascal que leia do teclado uma sequência de números inteiros até que seja lido um número que seja o dobro ou a 
metade do anteriormente lido. O programa deve imprimir na saída a quantidade de números lidos, a soma dos números lidos e os dois 
valores que forçaram a parada do programa. 

Exemplos: 
Entrada 1: 
-549 -716 -603 -545 -424 -848 

Saída Esperada 1: 
6 -3685 -424 -848 

Entrada 2: 
-549 -716 -603 -545 -424 646 438 892 964 384 192 

Saída Esperada 2: 
11 679 384 192 *)

program ex_008;
var num, last, sum: real;
cont: integer;

begin
	read(num);
	last:= num;
	sum:= num;
	read(num);
	sum:= sum + num;
	cont:= 2;
	while((num <> (last * 2)) AND (num <> (last / 2))) do
	begin
		last:= num;
		read(num);
		sum:= sum + num;
		cont:= cont + 1;
		
	end;
	writeln(cont, ' ', sum:0:0, ' ', last:0:0, ' ', num:0:0);
end.
