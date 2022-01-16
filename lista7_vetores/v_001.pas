(* Enunciado: 

Faça um programa que leia um número inteiro n (0 <= n <= 200) e em seguida leia uma sequência de n valores reais e os insira em um vetor de reais. 
O programa deve imprimir na saída o valor absoluto da divisão da soma dos valores positivos que estão em posições pares pela soma dos valores 
negativos que estão nas posições ímpares. Cuidado com divisões por zero. 

Exemplo de entrada 1 
4 
-2.0 -7.0 7.0 2.0 
Saída esperada 1: 
-1.00 

Exemplo de entrada 2 
3 
1 2 3 
Saída esperada 2: 
divisao por zero 

Exemplo de entrada 3 
0 
Saída esperada 3: 
vetor vazio *)

program v_001;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of real;
var seq: vetor;
n: longint;

procedure ler(var seq: vetor; n: longint);
var i: longint;
begin
	for i:= 1 to n do
		read(seq[i]);
end;

function soma_num(var seq: vetor; n: longint): real;
var i: longint;
begin
	soma_num:= 0;
	for i:= 1 to n do
	begin
		if((i mod 2 = 0) AND (seq[i] > 0)) then
			soma_num:= soma_num + seq[i];
	end;
end;
 
function soma_denum(var seq: vetor; n: longint): real;
var i: longint;
begin
	soma_denum:= 0;
	for i:= 1 to n do
	begin
		if((i mod 2 <> 0) AND (seq[i] < 0)) then
			soma_denum:= soma_denum + seq[i];
	end;
end;

function divisao(var seq: vetor; n: longint): real;
begin
	divisao:= 0;
	if(n = 0) then
		writeln('vetor vazio')
	else if(soma_denum(seq, n) <> 0) then
	begin
		divisao:= (soma_num(seq, n)) / (soma_denum(seq, n));
		writeln(divisao:0:2);
	end
	else
		writeln('divisao por zero');
end;

begin
	read(n);
	while((n < 0) OR (n > 200)) do
		read(n);
	ler(seq, n);
	divisao(seq, n);
end.
