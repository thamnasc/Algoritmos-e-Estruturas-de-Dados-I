(* Enunciado: 

Uma matriz quadrada A n×n é considerada triangular quando os elementos que estão acima da sua diagonal principal 
são todos nulos (matriz triangular inferior) ou quando os elementos que estão abaixo de sua diagonal principal são 
todos nulos (matriz triangular superior). Vejamos dois exemplos de matrizes triangulares: 

 9 8 7 6
 0 6 7 3
 0 0 2 5
 0 0 0 1
 Matriz triangular superior
 
 6 0 0 0
 3 0 0 0
 0 4 7 0
 7 5 2 1
 Matriz triangular inferior

Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e uma matriz inteira A n×n . 
O programa deve imprimir “sim” caso a matriz A seja triangular, caso contrário deve imprimir “nao”. 
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100. 

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade definida foi atendida ou não. 

Exemplo de entrada 1: 
3 
1 9 5 
0 2 4 
0 0 7 

Saı́da esperada para o exemplo acima: 
sim 

Exemplo de entrada 2: 
3 
1 0 0 
5 2 0 
4 9 3 
Saı́da esperada para o exemplo acima: 
sim 

Exemplo de entrada 2: 
3 
1 2 3 
4 5 6 
7 8 9 
Saı́da esperada para o exemplo acima: 
nao 

 *)
 
program matriz_triangular;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
var m1: matriz;
n: integer;

procedure ler_matriz(var m: matriz; linha, coluna: integer);
var i, j: integer;
x: longint;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
		begin
			read(x);
			if((x >= 0) AND (x <= 100)) then
				m[i, j]:= x;
		end;
	end;
end;

function eh_matriz_triangular(var m: matriz; linha, coluna: integer): boolean;
var i, j: integer;
abaixo, acima: boolean;
begin
	eh_matriz_triangular:= false;
	abaixo:= true;
	acima:= true;
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
		begin
			if((j < i) AND (m[i,j] <> 0)) then
				abaixo:= false;
			if((j > i) AND (m[i,j] <> 0)) then
				acima:= false;
		end;
	end;
	if(abaixo OR acima) then
		eh_matriz_triangular:= true;
end;

begin
	read(n);
	ler_matriz(m1, n, n);
	if(eh_matriz_triangular(m1, n, n)) then
		writeln('sim')
	else
		writeln('nao');
end.
