(*Enunciado: 

Uma sequência de n números inteiros não nulos é dita piramidal k-alternante se é constituída por k segmentos: 

o primeiro com um elemento, o segundo com dois elementos e assim por diante até o k-ésimo, com k elementos. 

Além disso, os elementos de um mesmo segmento devem ser todos pares ou todos ímpares e para cada segmento, 
se seus elementos forem todos pares (ímpares), os elementos do segmento seguinte devem ser todos ímpares (pares). 

Por exemplo, a sequência 12, 3, 7, 2, 10, 4, 5, 13, 5, 11, com n = 10 elementos é piramidal 4-alternante. 

A sequência 7, 10, 2 com n = 3 elementos é piramidal 2-alternante. 

A sequência 1, 12, 4, 3, 13, 5, 12, 6 com n=8 elementos não é piramidal alternante pois o último segmento não tem tamanho 4. 

Faça um programa Pascal que, dado um inteiro n >= 1 e uma sequência de n números inteiros, verifique se ela é piramidal k-alternante. 
Se for, o programa deve imprimir o valor de k, senão, deve imprimir 0. 

Exemplos: 
Entrada 1: 
10 12 3 7 2 10 4 5 13 5 11 
Saída Esperada 1: 
4 

Entrada 2: 
8 1 12 4 3 13 5 12 6 
Saída Esperada 2: 
0 *)

program ex_005;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of longint;
var seq: vetor;
n, k: integer;

procedure ler(n: integer; var seq: vetor);
var i: integer;
begin
	for i:= 1 to  n do
	       read(seq[i]);
end;

function segmentos(var k: integer; n: integer): boolean; //encontro quantos segmentos tem e retorno se os segmentos estao corretos
var soma, i: integer;
begin
	segmentos:= false;
	k:= 0;
	soma:= 0;
	i:= 1;
	while(soma < n) do
	begin
		soma:= soma + i;
		k:= k + 1;
		i:= i + 1;
	end;
	if(soma = n) then
		segmentos:= true;
	
end;

function impar_par(k, n: integer; var seq: vetor): boolean;
var  i_n, i_k: integer;
par, par_k: boolean;
begin
	impar_par:= true;
	i_n:= 1;
	i_k:= 1;
	par:= true;
	par_k:= true;
	while((i_n <= n) AND (par = par_k)) do
	begin
		if((seq[i_n] mod 2) = 0) then
		begin
			par:= true;
			par_k:= true;
		end
		else
		begin
			par:= false;
			par_k:= false;
		end;
		while((i_n <= i_k) AND (par = par_k)) do 
		begin
			if((seq[i_n] mod 2) = 0) then
				par_k:= true
			else
				par_k:= false;
			i_n:= i_n + 1;
		end;
		i_k:= i_k + 1;
		
	end;
	if(par <> par_k) then
		impar_par:= false;
end;

begin
	read(n);
	ler(n, seq);
	if(segmentos(k, n)) then
	begin
		if(impar_par(k, n, seq)) then
			writeln(k)
		else
			writeln(0);
		
	end
	else
		writeln(0);
end.		
