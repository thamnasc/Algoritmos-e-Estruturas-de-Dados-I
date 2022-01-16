program quadrado_magico_1;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
var quadrado: matriz;
n: integer;

procedure ler_matriz(var m: matriz; linha, coluna: integer);
var i, j: integer;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
			read(m[i, j]);
	end;
end;

procedure leitura(var m1: matriz; var n: integer);
begin
	read(n);
	ler_matriz(m1, n, n);
end;

function quadrado_magico(var quadrado: matriz; linha, coluna: integer): boolean;
var i, j: integer;
soma, soma_aux: longint;
confere: boolean;
begin
    quadrado_magico:= false;
    confere:= true;
    soma:= 0;
    soma_aux:= 0;
//confere diagonal principal
    for i:= 1 to linha do
    begin
        for j:= 1 to coluna do
        begin
            if(i = j) then
                soma_aux:= quadrado[i, j] + soma_aux;
        end;
    end;
//confere diagonal secundaria
    for i:= 1 to linha do
    begin
        for j:= 1 to coluna do
        begin
            if((i + j) = (linha + 1)) then
                soma:= quadrado[i, j] + soma;
        end;
    end;
    if(soma <> soma_aux) then
            confere:= false;
//confere linhas
    for i:= 1 to linha do
    begin
        soma:= 0;
        for j:= 1 to coluna do
        begin
            soma:= quadrado[i, j] + soma;
        end;
        if(soma <> soma_aux) then
            confere:= false;
    end;
//confere colunas
    for j:= 1 to coluna do
    begin
        soma:= 0;
        for i:= 1 to linha do
        begin
            soma:= quadrado[i, j] + soma;
        end;
        if(soma <> soma_aux) then
            confere:= false;
    end;
    
    if(confere) then
        quadrado_magico:= true;
end;

begin
    leitura(quadrado, n);
    if(quadrado_magico(quadrado, n, n)) then
        writeln('sim')
    else
        writeln('nao');
end.
