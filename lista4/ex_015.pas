(* Enunciado: 

Se multiplicarmos 37 por alguns números, obteremos números cujos algarismos, quando somados, resultam no mesmo número que foi multiplicado pelo 37. 
Por exemplo, se tomarmos o número 15, multiplicando-o por 37, obtemos 555. Somando-se 5 + 5 + 5 resulta em 15. 

Faça um programa Pascal que leia um número inteiro positivo do teclado, calcule o resultado da multiplicação por 37, some os algarismos do resultado, 
compare essa soma com o número lido e imprima "SIM" se há coincidência ou "NAO" se não há coincidência. 

Exemplos: 
Entrada 1: 
15 
Saída Esperada 1: 
SIM 

Entrada 2: 
26 
Saída Esperada 2: 
NAO *)

program ex_015;
var num: longint;

function algarismo(var mult: longint): longint;
begin
	algarismo:= mult mod 10;
	mult:= mult div 10;
end;

function soma_de_algarismos(n: longint): boolean;
var mult, soma: longint;
begin
	soma_de_algarismos:= false;
	mult:= n * 37;
	soma:= 0;
	while(mult <> 0) do
	begin
		soma:= soma + algarismo(mult);	
	end;
	if(soma = n) then
		soma_de_algarismos:= true;
end;

begin
	read(num);
	if(soma_de_algarismos(num)) then
		writeln('SIM')
	else
		writeln('NAO');
end.
