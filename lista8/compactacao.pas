(* Enunciado: 

Faça um programa em Free Pascal que leia diversas linhas nas quais as linhas ı́mpares contém o tamanho n (0 ≤ n ≤ 100) 
da sequência de números inteiros que deve ser lida na linha subsequente. Quando uma linha ı́mpar contiver o valor zero 
significa que a entrada de dados acabou e seu programa deverá encerrar com a impressão de todas as sequências originais 
e também compactadas pela eliminação de 
todos os elementos repetidos de cada sequência. 
No exemplo abaixo, O significa a sequência original e C a sequência compactada. 

Exemplo de entrada: 
5 
2 4 7 -1 2 
3 
1 1 1 
7 
3 4 5 3 7 5 1 
0 
Saı́da esperada: 
O: 2 4 7 -1 2 
C: 2 4 7 -1 
O: 1 1 1 
C: 1 
O: 3 4 5 3 7 5 1 
C: 3 4 5 7 1 *)

program compactacao;
const MIN = 1; MAX = 100;
type vetor = array [MIN..MAX] of longint;
var seq_o, seq_c: vetor;
tam, tam_c: integer;

procedure zera_vetores(var seq_o: vetor; var seq_c: vetor);
var i: integer;
begin
	for i:= 1 to MAX do
	begin
		seq_o[i]:= 0;
		seq_c[i]:= 0;
	end;
end;

procedure le_vetor(var seq_o: vetor; var seq_c: vetor; tam: integer);
var i: integer;
begin
	for i:= 1 to tam do
	begin
		read(seq_o[i]);
		seq_c[i]:= seq_o[i];
	end;
end;

procedure imprime_vetores(var seq_o: vetor; var seq_c: vetor; tam: integer; var tam_c: integer);
var i: integer;
begin
	write('O: ');
	for i:= 1 to tam do
		write(seq_o[i], ' ');
	writeln;
		write('C: ');
	for i:= 1 to tam_c do
		write(seq_c[i], ' ');
	writeln;
end;

procedure remove(posicao: integer; var seq_c: vetor; var tam_c: integer);
var i: integer;
begin
	for i:= posicao to (tam_c - 1) do
	begin
		seq_c[i]:= seq_c[i + 1];
	end;
	tam_c:= tam_c - 1;
end;

procedure verifica_repetido(var seq_o: vetor; var seq_c: vetor; tam: integer; var tam_c: integer);
var i, j, teste: integer;
begin
	teste:= 0;
	j:= 0;
	for i:= 1 to (tam - 1) do
	begin
		teste:= seq_o[i];
		j:= i + 1;
		while(j <= tam_c) do
		begin
			if(seq_c[j] = teste) then
				remove(j, seq_c, tam_c);
			if(seq_c[j] <> teste) then
				j:= j + 1;
		end;
	end;
end;

begin
	zera_vetores(seq_o, seq_c);
	read(tam);
	tam_c:= tam;
	while(tam <> 0) do
	begin
		le_vetor(seq_o, seq_c, tam);
		verifica_repetido(seq_o, seq_c, tam, tam_c);
		imprime_vetores(seq_o, seq_c, tam, tam_c);
		zera_vetores(seq_o, seq_c);
		read(tam);
		tam_c:= tam;
	end;
end.
