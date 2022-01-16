program quadrado_magico2;
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

function quadrado_magico(var m: matriz; linha, coluna: integer): boolean;
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
                soma_aux:= m[i, j] + soma_aux;
        end;
    end;
//confere diagonal secundaria
    for i:= 1 to linha do
    begin
        for j:= 1 to coluna do
        begin
            if((i + j) = (linha + 1)) then
                soma:= m[i, j] + soma;
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
            soma:= m[i, j] + soma;
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
            soma:= m[i, j] + soma;
        end;
        if(soma <> soma_aux) then
            confere:= false;
    end;
    
    if(confere) then
        quadrado_magico:= true;
end;

function subsequencias(var m: matriz; linha, coluna: integer): integer;
var i, j, eh_quadrado_magico, l, c, l_aux, c_aux, tam, i_ref, j_ref: integer;
matriz_aux: matriz;
begin
	eh_quadrado_magico:= 0;
	subsequencias:= 0;
	l_aux:= 2;
	c_aux:= 2;
	l:= 1;
	c:= 1;
	tam:= 2;
	i_ref:= 1;
	j_ref:= 1;
	while(tam <= linha) do // ou coluna, whatever
	begin
		for i:= l to l_aux do
		begin
			for j:= c to c_aux do
			begin
				matriz_aux[i_ref, j_ref]:= m[i, j];
				j_ref:= j_ref + 1;
				if(j_ref > tam) then
				begin
					i_ref:= i_ref + 1;
					j_ref:= 1;
				end;
			end;
		end;
		i_ref:= 1;

		if(quadrado_magico(matriz_aux, tam, tam)) then
			eh_quadrado_magico:= eh_quadrado_magico + 1;
		
		l:= l + 1;
		l_aux:= l_aux + 1;
		if((l + (tam - 1)) > linha) then
		begin
			l:= 1;
			l_aux:= tam;
			c:= c + 1;
			c_aux:= c_aux + 1;
		end;
		if((c + (tam - 1)) > coluna) then
		begin
			tam:= tam + 1;
			l_aux:= tam;
			c_aux:= tam;
			l:= 1;
			c:= 1;
		end;	
	end;

	subsequencias:= eh_quadrado_magico;
end;

begin
    leitura(quadrado, n);
    writeln(subsequencias(quadrado, n, n));
end.
