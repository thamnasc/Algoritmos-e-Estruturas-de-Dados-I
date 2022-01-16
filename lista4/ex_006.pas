(* Enunciado: 

Um inteiro positivo N é considerado perfeito se o mesmo for igual a soma de seus divisores positivos diferentes de N. 

Exemplo: 6 é perfeito pois 1 + 2 + 3 = 6 e 1, 2 e 3 são todos os divisores positivos de 6 e que são diferentes de 6. 

Faça um programa Pascal que leia um número inteiro positivo K e mostre os K primeiros números que são perfeitos. 

Exemplos: 
Entrada 1: 
1 
Saída Esperada 1: 
6 

Entrada 2: 
2 
Saída Esperada 2: 
6 28 *)

program ex_006;
var K, cont, perfeito: longint;

function verifica_perfeito(teste: longint): boolean;
var soma, num: longint;
begin
	soma:= 0;
	num:= 1;
	while(num < teste) do
	begin
		if((teste mod num) = 0) then
			soma:= soma + num;
		num:= num + 1;
	end;
	verifica_perfeito:= false;
	if(soma = teste) then
		verifica_perfeito:= true;
end;

begin
	read(K);//quantidade de numeros perfeitos para printar
	cont:= 0;
	perfeito:= 2;
	while(cont < K) do //
	begin
		if(verifica_perfeito(perfeito)) then
		begin
			write(perfeito, ' ');
			cont:= cont + 1;
		end;
		perfeito:= perfeito + 1;
	end;
end.
