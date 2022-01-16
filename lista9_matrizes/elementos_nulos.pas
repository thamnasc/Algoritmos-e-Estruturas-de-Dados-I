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
