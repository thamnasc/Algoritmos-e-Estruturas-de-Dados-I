(* Enunciado: 

Faça uma função que receba como parâmetro um número inteiro e teste se ele é um número binário. Se ele for binário, 
imprima sim senão imprima nao. Teste sua função usando este código: 

program testa_binario;
var n: longint;

// coloque aqui o codigo da sua funcao que testa se eh binario

begin 
	read(n);
	if (eh_binario(n)) then
		writeln('sim')
	else
		writeln('nao');
end.


Exemplos de entradas 
10001 
1020 

Saídas esperadas 
sim 
nao *)

program testa_binario;
var n: longint;

function eh_binario(n: longint): boolean;
var resto: longint;
begin
	eh_binario:= true;
	resto:= 0;
	while((n <> 0) AND (resto <= 1)) do
	begin
		resto:= n mod 10;
		if(resto > 1) then
			eh_binario:= false;
		n:= n div 10;
	end;
end;

begin 
	read(n);
	if (eh_binario(n)) then
		writeln('sim')
	else
		writeln('nao');
end.
