(* Enunciado: 

Faça um programa Pascal que leia do teclado três números inteiros positivos: i, j e k. Se j for múltiplo de i e k for múltiplo de j, 
o programa deve imprimir a soma dos três. Se os três valores forem consecutivos na ordem lida, o programa deve imprimi-los na ordem decrescente. 
Em qualquer outra situação, o programa deve calcular e imprimir a média aritmética simples dos três valores. 

Exemplos: 
Entrada 1: 
33 165 495 
Saída Esperada 1: 
693 

Entrada 2: 
74 75 76 
Saída Esperada 2: 
76 75 74 

Entrada 3: 
7 20 12 
Saída Esperada 3: 
13 *)

program ex_013;
var i, j, k: longint;
	
function multiplos(n1, n2, n3: longint): boolean;
begin
	multiplos:= false;
	if((n2 mod n1 = 0) AND (n3 mod n2 = 0)) then
		multiplos:= true;
end;

function consecutivos(n1, n2, n3: longint): boolean;
begin
	consecutivos:= false;
	if(j = (i + 1)) then
	begin
		if(k = (j + 1)) then
			consecutivos:= true;
	end;
end;

begin
	read(i, j, k);
	if(multiplos(i, j, k)) then
		writeln(i+j+k)
	else if(consecutivos(i, j, k)) then
		writeln(k, ' ',  j, ' ',  i)
	else
		writeln((i+j+k) div 3);
end.
