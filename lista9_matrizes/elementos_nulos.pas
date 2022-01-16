(* Enunciado: 

Faça um programa em Free Pascal que leia dois inteiros positivos m e n, sendo 1 ≤ m, n ≤ 100, e uma matriz A m×n . 
O programa deve imprimir o números de linhas e o número de colunas que são nulas, ou seja, quando todos os elementos 
de uma linha ou coluna são iguais a 0 (zero). 
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100. 

Exemplo de entrada: 
4 4 
1 0 2 3 
4 0 5 6 
0 0 0 0 
0 0 0 0 

Saı́da esperada para o exemplo acima: 
linhas: 2 
colunas: 1 *)

program elementos_nulos;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
var m1: matriz;
m, n: integer;

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

function coluna_vazia(var m: matriz; linha, coluna: integer): integer;
var i, j: integer;
vazia: boolean;
begin
	coluna_vazia:= 0;
	vazia:= true;
        for j:= 1 to coluna do
        begin
		vazia:= true;
                for i:= 1  to linha do
                begin
			if(m[i, j] <> 0) then
				vazia:= false;		
                end;
		if(vazia) then
			coluna_vazia:= coluna_vazia + 1;
        end;
end;


function linha_vazia(var m: matriz; linha, coluna: integer): integer;
var i, j: integer;
vazia: boolean;
begin
	linha_vazia:= 0;
	vazia:= true;
	for i:= 1 to linha do
	begin
		vazia:= true;
		for j:= 1  to coluna do
		begin
			if(m[i, j] <> 0) then
				vazia:= false;
		end;
		if(vazia) then
                        linha_vazia:= linha_vazia + 1;
	end;
end;

begin
	read(m, n);
	ler_matriz(m1, m, n);
	writeln('linhas: ', linha_vazia(m1, m, n));
	write('colunas: ', coluna_vazia(m1, m, n));
end.
