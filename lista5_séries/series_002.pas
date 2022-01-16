(* Enunciado: 

Faça um programa em Pascal que lê do teclado um número inteiro positivo N. Depois disso, o programa deve calcular e imprimir a soma de todas 
as frações em que a soma do numerador com o denominador de cada fração seja o número N. 

Por exemplo, se N=7, o programa deve calcular a soma abaixo: 

S = (1/6) + (2/5) + (3/4) + (4/3) + (5/2) + (6/1)

a saída com duas casas decimais. 

Exemplo: 
Entrada 1: 
7 
Saída Esperada 1: 
11.15 

Entrada 2: 
4 
Saída Esperada 2: 
4.33 *)

program series_002;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of longint;
var N: integer;
cres, decres: vetor;

procedure crescente(N: integer; var cres: vetor);
var i: integer;
begin
	for i:= 1 to (N - 1) do
		cres[i]:= i;
end;

procedure decrescente(N: integer; var decres: vetor);
var i: integer;
begin
	for i:= 1 to (N - 1) do
		decres[i]:= N - i;
end;

function soma(N: integer; var cres, decres: vetor): real;
var i: integer;
begin
	soma:= 0;
	for i:= 1 to (N - 1) do
		soma:= soma + (cres[i]/decres[i]);
end;

begin
	read(N);
	crescente(N, cres);
	decrescente(N, decres);
	writeln(soma(N, cres, decres):0:2);
end.
