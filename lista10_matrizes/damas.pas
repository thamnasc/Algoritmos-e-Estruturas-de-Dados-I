(* Enunciado: 

Uma matriz D(8 × 8) pode representar a posiçao atual de um jogo de damas, sendo que 0 indica uma casa vazia, 
1 indica uma casa ocupada por uma peça branca e -1 indica uma casa ocupada por uma peça preta. Supondo que as 
peças pretas estão se movendo no sentido crescente das linhas da matriz D, determinar as posições das peças pretas que: 

• podem tomar peças brancas; 
• podem mover-se sem tomar peças brancas; 
• não podem se mover. 

A prioridade na ação é sempre tomar uma peça, ou seja, em uma situação na qual uma peça preta possa tanto "mover" 
quanto "tomar", esta peça é marcada como "tomar". Cada peça só pode ser marcada com uma ação. 

Para este exercício, considere que as peças pretas nunca estarão na última linha do jogo (dama). Caso 
não ocorra peça para algum dos movimentos possíveis exibir o valor 0 (zero) ao invés da posição. 

Exemplo de Entrada 1: 
-1 0 -1 0 -1 0 -1 0 
0 -1 0 -1 0 -1 0 -1 
-1 0 -1 0 -1 0 -1 0 
0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 
0 1 0 1 0 1 0 1 
1 0 1 0 1 0 1 0 
0 1 0 1 0 1 0 1 

Saída esperada para a entrada acima: 
tomar: 0 
mover: 3-1 3-3 3-5 3-7 
ficar: 1-1 1-3 1-5 1-7 2-2 2-4 2-6 2-8 

Exemplo de Entrada 2: 
-1 0 -1 0 -1 0 -1 0 
0 -1 0 -1 0 -1 0 -1 
0 0 -1 0 -1 0 -1 0 
0 -1 0 0 0 0 0 0 
0 0 1 0 0 0 0 0 
0 1 0 0 0 1 0 1 
1 0 1 0 1 0 1 0 
0 1 0 1 0 1 0 1 

Saída esperada para a entrada acima: 
tomar: 4-2 
mover: 2-2 3-3 3-5 3-7 
ficar: 1-1 1-3 1-5 1-7 2-4 2-6 2-8 
*)

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
