program damas;
const MIN = 1; MAX = 8;
type matriz = array [MIN..MAX, MIN..MAX] of integer;
var tabuleiro, aux: matriz;

procedure ler_matriz(var m: matriz);
var i, j: integer;
begin
	for i:= 1 to 8 do
	begin
		for j:= 1 to 8 do
			read(m[i, j]);
	end;
	writeln;
end;

procedure zerar_matriz(var m: matriz);
var i, j: integer;
begin
	for i:= 1 to 8 do
	begin
		for j:= 1 to 8 do
			m[i, j]:= 0;
	end;
end;

procedure verificar_matriz(var m: matriz; var aux: matriz);
var i, j: integer;
begin
	for i:= 1 to 7 do //nao ha damas
	begin
		for j:= 1 to 8 do
		begin
			if(m[i, j] = -1) then
			begin
				if((m[(i + 1), (j - 1)] = 1) AND ((j - 1) >= 1)) then
					aux[i, j]:= 1 //1 para indicar tomar
				else if((m[(i + 1), (j + 1)] = 1) AND ((j + 1) <= 8)) then
					aux[i, j]:= 1 
				else if((m[(i + 1), (j - 1)] = 0) AND ((j - 1) >= 1)) then
					aux[i, j]:= 2 //2 para indicar mover
				else if((m[(i + 1), (j + 1)] = 0) AND ((j + 1) <= 8)) then
					aux[i, j]:= 2
				else
					aux[i, j]:= 3; //para indicar ficar
			end;
		end;
	end;
end;

procedure imprimir_matriz(var m: matriz; var acao: integer);
var i, j: integer;
sem_peca: boolean;
begin
	sem_peca:= true;
	for i:= 1 to 7 do //nao ha damas
	begin
		for j:= 1 to 8 do
		begin
			if(m[i, j] = acao) then
			begin
				write(i, '-', j, ' ');
				sem_peca:= false;
			end;
		end;
	end;
	if(sem_peca) then
		write(0);
	writeln;
end;

procedure imprimir(var aux: matriz);
var acao: integer;
begin
	acao:= 1;
	write('tomar: ');
	imprimir_matriz(aux, acao);
	acao:= 2;
	write('mover: ');
	imprimir_matriz(aux, acao);
	acao:= 3;
	write('ficar: ');
	imprimir_matriz(aux, acao);
end;

begin
	ler_matriz(tabuleiro);
	zerar_matriz(aux);
	verificar_matriz(tabuleiro, aux);
	imprimir(aux);
end.
