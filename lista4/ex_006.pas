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
