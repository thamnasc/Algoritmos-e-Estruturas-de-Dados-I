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
