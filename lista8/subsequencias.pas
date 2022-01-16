(* Responder questão 'Subsequências' 
 
 

Enunciado: 

Faça um programa em Free Pascal que leia um número natural 0 < n ≤ 100 e em seguida leia uma sequência de n números também naturais. 
Seu programa deve verificar se existem duas subsequências iguais nesta sequência com tamanho pelo menos 2. O tamanho da sequência 
encontrada deverá ser máximo, se ela existir. Caso exista, seu programa deve imprimir o valor do ı́ndice i e do tamanho máximo da sequência m, 
nesta ordem, onde i é a primeira ocorrência da sequência que possui uma cópia na sequência original e m é o tamanho desta sequência que se repete. 
Caso contrário seu programa deve imprimir "nenhuma". 

Os casos de teste não conterão entradas com mais de uma subsequência igual. 

Exemplo de entrada 1: 
8 
7 9 5 4 5 5 4 6 

Saı́da esperada para a entrada acima: 
3 2 

Exemplo de entrada 2: 
12 
2 7 9 5 2 5 4 8 6 2 5 4 

Saı́da esperada para a entrada acima: 
5 3 

Sugestão: 
Use como base para sua implementação a seguinte estrutura inicial de programa, que contém o programa principal e algumas funções e procedimentos 
que visam facilitar o seu trabalho. Evidentemente você pode ignorar esta sugestão. Caso aceite, você deve implementar as funções e procedimentos, 
o programa principal não deveria ter que ser alterado, a princı́pio. Você pode também decidir usar mais funções e procedimentos caso perceba que seu 
programa ficará mais legı́vel. 


program subsequencias;
const MAX = 100;
type vetor = array [1..MAX] of longint;
var
	v : vetor;
	n, pos, tamanho_subquencia: longint;
	
procedure ler_vetor (var v: etor; n: longint);
//procedure para ler um vetor "v" de "n" inteiros

function tem_subsequencia_iguais (var v: vetor; n, tam_seg: longint): longint;
//recebe uma subsequencia "v" que tem tamanho "n" e procura por subsequencias
//iguais de tamanho "tam_seg". A funcao devolve zero se nao encontrou
//subsequencias iguais ou devolve a posicao do inicio da primeira subsequencia
//que encontrou

begin
	read(n);
	posicao:= 0;
	tamanho_subsequencia:= n div 2;
	if(n <> 0) then
	begin
		ler_vetor(v1, n);
		while((posicao = 0) AND (tamanho_subsequencia >= 2)) do
		begin
			posicao:= tem_subsequencia_iguais(v1, n, tamanho_subsequencia);
			tamanho_subsequencia:= tamanho_subsequencia - 1;
		end;
	end;
	if(posicao <> 0) then
		writeln(posicao, ' ', tamanho_subsequencia + 1)
	else
		writeln('nenhuma');
end.

*)

program subsequencias;
const MIN = 1; MAX = 100;
type vetor = array [MIN..MAX] of longint;
var v1: vetor;
n, posicao, tamanho_subsequencia: integer;

procedure ler_vetor(var seq: vetor; tam: integer);
var i: integer;
begin
	for i:= 1 to tam do
		read(seq[i]);
end;

function tem_subsequencia_iguais(var seq: vetor; tam, tam_seq: integer): integer;
var i, j, k, cont, inicio, tam_seq_aux: integer;
aux1, aux2: vetor;
igual: boolean;
begin
	tem_subsequencia_iguais:= 0;
	cont:= 0;
	igual:= false;
	inicio:= 0;
	i:= 0;
	tam_seq_aux:= tam_seq;
	k:= 0;
	while(NOT(igual) AND (i <= tam)) do //ate que ache igual ou varra todo o vetor
	begin
		tam_seq_aux:= tam_seq + i;
		i:= i + 1;
		inicio:= i; //guarda o inicio da subsequencia
		for j:= i to tam_seq_aux do //vetor de teste para a primeira subsequencia
		begin
			cont:= cont + 1;
			aux1[cont]:= seq[j];
		end;
		cont:= 0;
		while((tam_seq_aux <= tam) AND (NOT igual)) do //todas as possiveis subsequencias depois da primeira
		begin
			for k:= (tam_seq_aux + 1) to (tam_seq_aux + tam_seq) do //a partir da posicao final da sequencia obtida acima ate chegar no final da subsequencia 2
			begin
				cont:= cont + 1;
				aux2[cont]:= seq[k];
			end;
			cont:= 0;
			igual:= true;
			while((cont <= tam_seq) AND igual) do
			begin
				cont:= cont + 1;
				if(aux1[cont] <> aux2[cont]) then
					igual:= false;
			end;
			cont:= 0;
			tam_seq_aux:= tam_seq_aux + 1; //indice do proximo limite
		end;
	end;
	if(igual) then
		tem_subsequencia_iguais:= inicio;
end;

begin
	read(n);
	posicao:= 0;
	tamanho_subsequencia:= n div 2;
	if(n <> 0) then
	begin
		ler_vetor(v1, n);
		while((posicao = 0) AND (tamanho_subsequencia >= 2)) do
		begin
			posicao:= tem_subsequencia_iguais(v1, n, tamanho_subsequencia);
			tamanho_subsequencia:= tamanho_subsequencia - 1;
		end;
	end;
	if(posicao <> 0) then
		writeln(posicao, ' ', tamanho_subsequencia + 1)
	else
		writeln('nenhuma');
end.
