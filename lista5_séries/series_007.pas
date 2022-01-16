(* Enunciado: 

A soma infinita indicada abaixo é composta de termos em que o numerador de cada termo é um número ímpar ou a dezena de um número ímpar, 
conforme a posição do termo na série, e o denominador é um número par ou a dezena de um número par, conforme a posição do termo na série: 

S = - (1/20) + (30/4) - (5/60) + (70/8) - (9/100) + (110/12) - ...

Observe que o sinal de soma e subtração se alterna conforme a posição do termo na série. 

Faça um programa em Pascal para calcular o valor de S, considerando apenas os 10 primeiros termos da série. Ao final, imprimir o resultado 
encontrado para S, com duas casas decimais.  *)

program series_007;
var n: integer;

function soma(n: integer): real;
var num, denum, i: longint;
begin
	soma:= 0;
	num:= 1;
	denum:= 20;
	for i:= 1 to n do
	begin
		if(i mod 2 <> 0) then
		begin
			soma:= soma - (num / denum);
			num:= (num + 2) * 10;
			denum:= (denum div 10) + 2;
		end
		else // par
		begin
			soma:= soma + (num / denum);
			num:= (num div 10) + 2;
			denum:= (denum + 2) * 10;
		end;
	end;
end;

begin
	n:= 10;
	writeln(soma(n):0:2);
end.
