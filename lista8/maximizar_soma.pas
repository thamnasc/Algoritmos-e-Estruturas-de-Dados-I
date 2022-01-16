(* Enunciado: 

Faça um programa em Free Pascal que leia um número natural 0 < n ≤ 100 e em seguida leia uma sequência de n números inteiros. 
Seu programa deve determinar o valor do subsequência que maximize a soma dos seus elementos. 

Exemplo de entrada: 
12 
5 2 -2 -7 3 14 10 -3 9 -6 4 1 

Saı́da esperada para a entrada acima: 
33 

Observação 1: O valor 33 da saı́da esperada acima, foi obtido pela soma dos valores dos ı́ndices de 5 a 9, isto é, v[5] = 3 até v[9] = 9. 

Observação 2: Idealmente, seu programa deve fazer o menor número possı́vel de somas dos elementos dos vetores, embora o FARMA-ALG apenas checa 
se sua resposta está correta. Você consegue fazer um programa que nunca some duas vezes uma sequência que já foi somada antes? Teste isso fora do FARMA-ALG. *)

program maximizar_soma;
const MIN = 1; MAX = 100;
type vetor = array [MIN..MAX] of longint;
var seq: vetor;
tam: longint;

procedure ler(var seq: vetor; tam: longint);
var i: longint;
begin
	for i:= 1 to tam do
		read(seq[i]);
end;

function soma(var seq: vetor; n: longint): longint;
var i, j, maior, aux: longint;
begin
	maior:= seq[1];
	aux:= 0;
	for i:= 1 to tam do //soma em sequencia, i, i+(i+1), i+(i+1)+(i+2)...
	begin
		aux:= seq[i];
		if(aux > maior) then
			maior:= aux;
		for j:= (i + 1) to tam do
		begin
			aux:= aux + seq[j];
			if(aux > maior) then
				maior:= aux;
		end;
	end;
	for i:= tam downto 1 do //soma em sequencia ao contrario
	begin
		aux:= seq[i];
		if(aux > maior) then
			maior:= aux;
		for j:= (tam - 1) downto 1 do
		begin
	        	if(aux > maior) then
				maior:= aux;
		end;
	end;
	soma:= maior;
end;

begin
	read(tam);
	ler(seq, tam);
	writeln(soma(seq, tam));
end.	
