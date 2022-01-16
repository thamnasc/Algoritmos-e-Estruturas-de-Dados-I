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
