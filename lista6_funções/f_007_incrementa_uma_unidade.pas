(* Enunciado: 

Faça uma procedure que receba como parâmetro um inteiro e retorne este número incrementado de uma unidade. 
Use esta procedure para fazer funcionar o código abaixo, que imprime todos os números de 1 a 10. 
Teste sua procedure usando o código abaixo. 


program incrementa uma unidade;
var n: longint;

//coloque aqui o codigo da sua procedure que incrementa uma unidade

begin
	n:= 1;
	while n <= 10 do
	begin
		writeln(n);
		incrementa(n);
	end;
end.
 *)
 
program f_007;
var n: longint;

procedure incrementa(var n: longint);
begin
	n:= n + 1;
end;

begin
	n:= 1;
	while n <= 10 do
	begin
		writeln(n);
		incrementa(n);
	end;
end.
