program repeticao_em_matriz;
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
			if((x >= 0) AND (x <= 1000)) then
				m[i, j]:= x;
		end;
	end;
end;

function confere_repetido(var m: matriz; linha, coluna: integer): boolean;
var i, j, j_teste, i_teste, controle_teste, controle, teste: integer;
repetido: boolean;
begin
	teste:= m[1, 1];
	repetido:= false;
	i:= 1;
	j:= 1;
	j_teste:= 1;
	i_teste:= 1;
	controle:= 1;
	confere_repetido:= false;
	controle_teste:= 1;
	while((NOT repetido) AND (controle < (linha * coluna * linha * coluna))) do
	begin
		while((NOT repetido) AND (j <= coluna)) do
		begin
			if((teste = m[i, j]) AND ((j <> j_teste) AND (i <> i_teste))) then
				repetido:= true;
			j:= j + 1;
			controle_teste:= controle_teste + 1;
			controle:= controle + 1;
		end;

		j:= 1;
		if(i < linha) then
			i:= i + 1
		else
			i:= 1;
		
		if(controle_teste > (linha * coluna)) then
		begin
			j_teste:= j_teste + 1;
			if(j_teste > coluna) then
			begin
				i_teste:= i_teste + 1;
				j_teste:= 1;
			end;
			teste:= m[i_teste, j_teste];
			controle_teste:= 1;
		end;
	end;
	if(repetido) then
		confere_repetido:= true;
end;

begin
	read(m, n);
	ler_matriz(m1, m, n);
	if(confere_repetido(m1, m, n)) then
		writeln('sim')
	else
		writeln('nao');
end.
