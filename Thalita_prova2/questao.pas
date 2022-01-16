program questao;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
var mat: matriz;
M, N: integer;

procedure ler_matriz(var m: matriz; linha, coluna: integer);
var i, j: integer;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
			read(m[i, j]);
	end;
end;

procedure leitura(var m: matriz; var linha: integer; var coluna: integer);
begin
	write('Entre com as dimensoes da matriz: ');
	read(linha, coluna);
	while((linha = 0) OR (coluna = 0)) do
		read(linha, coluna);
	writeln('Entre com a matriz:');
	ler_matriz(m, linha, coluna);
	writeln;
end;

procedure constroi_matriz(var mat: matriz; linha, coluna: integer);
var i, j, i_aux: integer;
begin
	i_aux:= 0;
	for j:= 1 to coluna do
	begin
		for i:= 1 to linha do
		begin
			if(mat[(i + 1), j] = mat[i, j]) then // para valores consecutivos seguidos, soma os valores e transfere o restante para cima
			begin
				mat[i, j]:= mat[i, j] * 2;
				mat[(i + 1), j]:= 0;
				i_aux:= i + 1;
				while((mat[i_aux, j] = 0) AND (i_aux <= linha)) do
				begin
					mat[i_aux, j]:= mat[(i_aux + 1), j];
					mat[(i_aux + 1), j]:= 0;
					i_aux:= i_aux + 1;
				end;
			end
			else if((mat[i, j] <> 0) AND ((mat[(i - 1), j] = 0) AND (i > 1))) then // se o valor for zero, trazer para cima
			begin
				i_aux:= i;
				while((mat[(i_aux - 1), j] = 0) AND (i_aux >= 1)) do
				begin
					mat[(i_aux - 1), j]:= mat[i_aux, j];
					mat[i_aux, j]:= 0;
					i_aux:= i_aux - 1;
				end;
			end;
		end;
	end;
end;

procedure imprime_matriz(var matR: matriz; linha, coluna: integer);
var i, j: integer;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
			write(matR[i, j], ' ');
		writeln;
	end;
	writeln;
end;

begin
	leitura(mat, M, N);
	constroi_matriz(mat, M, N);
	imprime_matriz(mat, M, N);
end.
