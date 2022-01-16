(* Enunciado: 

Faça uma função que receba como parâmetro um número inteiro garantidamente binário e o converta para decimal. 
Teste sua função usando este código: 


program converte;
var n: longint;

// coloque aqui o codigo da sua funcao que converte para decimal

begin
	read(n);
	writeln(converte_em_decimal(n));
end.


Exemplos de entradas 
10001 
1010 

Saídas esperadas 
17 
10 *)

program converte;
var n: longint;

function converte_em_decimal(n: longint): longint;
var pot: longint;
begin
	converte_em_decimal:= 0;
	pot:= 1;
	while(n <> 0) do
	begin
		converte_em_decimal:= (n mod 10) * pot + converte_em_decimal;
		pot:= pot * 2;
		n:= n div 10;
	end;
end;

begin
	read(n);
	writeln(converte_em_decimal(n));
end.
