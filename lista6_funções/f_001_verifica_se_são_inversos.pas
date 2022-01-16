(* Enunciado: 

Faça uma função que receba como parâmetros dois números inteiros não nulos e retorne true se um for o contrário do outro e false em caso contrário. 
Teste sua função usando este código: 
 
program contrario; 
var n,m: longint; 

// coloque aqui o codigo da sua funcao

begin 
read (n,m); 
if contrario (n,m) then 
writeln (n,' eh o contrario de ',m) 
else 
writeln (n,' nao eh o contrario de ',m); 
end. 

Exemplos de entradas 
123 321 
123 231 

Saídas esperadas 
123 eh o contrario de 321 
123 nao eh o contrario de 231 
*)

program f_001;
var n, m: longint;

function contrario(n, m: longint): boolean;
var pot, invertido: longint;
begin
	pot:= 10;
	invertido:= 0;
	contrario:= false;
	while(n <> 0) do
	begin
		invertido:= invertido * pot + (n mod 10);
		n:= n div 10;
	end;
	if(invertido = m) then
		contrario:= true;
end;

begin
	read(n, m);
	if(contrario(n, m)) then
		writeln(n, ' eh o contrario de ', m)
	else
		writeln(n, ' nao eh o contrario de ', m);
end.
