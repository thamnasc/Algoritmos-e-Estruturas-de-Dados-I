(* Enunciado: 

Um número inteiro positivo é dito triangular se seu valor é o produto de três números naturais consecutivos. 
Por exemplo, o número 120 é triangular porque 120 = 4 x 5 x 6 . 

Faça um programa Pascal que leia do teclado um número inteiro positivo n e verifique se ele é triangular ou não. 
Se for, imprima 1 e se não for, imprima 0. 

Exemplos: 
Entrada 1: 
120 
Saída Esperada 1: 
1 

Entrada 2: 
123 
Saída Esperada 2: 
0 

Entrada 3: 
6 
Saída Esperada 3: 
1 *)

program ex_010;
var num: longint;
var n1, n2, n3, triangular: integer;

begin
	read(num);
	n1:= 1;
	n2:= 2;
	n3:= 3;
	triangular:= 0;
	while((n1 * n2 * n3) <= num) do
	begin
		if((n1 * n2 * n3) = num) then
			triangular:= 1;
		n1:= n1 + 1;
		n2:= n2 + 1;
		n3:= n3 + 1;
	end;
	if(triangular = 1) then
		writeln(triangular)
	else // 0
		writeln(triangular);
end.
