(* Enunciado: 

Fazer um programa em Free Pascal que leia do teclado dois números naturais 0 < n, m ≤ 100. Em seguida, 
leia duas sequências de respectivamente n e m números também naturais, sendo garantidamente m < n. 
Seu programa deve determinar quantas vezes a segunda sequência ocorre na primeira. 

Exemplo de entrada 1: 
7 
2 
18 23 6 14 6 31 13 
12 20 

Saı́da esperada: 
0 

Exemplo de entrada 2: 
9 
4 
18 23 6 14 6 18 23 6 14 
18 23 6 14 

Saı́da esperada: 
2 

Exemplo de entrada 3: 
30 
3 
2 4 2 1 6 1 7 2 9 10 2 4 2 1 8 11 12 13 2 7 1 5 6 1 3 2 4 2 4 2 
2 4 2 

Saı́da esperada: 
4 *)

program ocorrencias;
const MIN = 1; MAXm = 100; MAXn = 200;
type vetor_n = array [MIN..MAXn] of longint;
vetor_m = array [MIN..MAXm] of longint;
var seq_n: vetor_n;
seq_m, aux: vetor_m;
n, m: integer;

procedure zera_vetores(var seq_n: vetor_n; var seq_m: vetor_m);
var i: integer;
begin
	for i:= 1 to MAXn do
	begin
		seq_n[i]:= 0;
	end;
	for i:= 1 to MAXm do
	begin
		seq_m[i]:= 0;
	end;
end;

procedure zera_aux(var aux: vetor_m; m: integer);
var i: integer;
begin
	for i:= 1 to m do
		aux[i]:= 0;
end;

procedure ler_n(var seq_n: vetor_n; n: integer);
var i: integer;
begin
	for i:= 1 to n do
		read(seq_n[i]);
end;

procedure ler_m(var seq_m: vetor_m; m: integer);
var i: integer;
begin
        for i:= 1 to m  do
                read(seq_m[i]);
end;

function comparacao(var aux: vetor_m; var seq_n: vetor_n; var seq_m: vetor_m; n, m: longint): longint;
var i, j, cont: integer;
igual: boolean;
begin
	cont:= 0;
	igual:= true;
	comparacao:= 0;
	for i:= 1 to n do //comparacao em sequencia, i, i e (i+1), i e (i+1) e (i+2)...
	begin
		zera_aux(aux, m);
		for j:= i to (m + i - 1) do
		begin
			cont:= cont + 1;
			aux[cont]:= seq_n[j];
		end;
		for j:= 1 to m do 
		begin
			if(aux[j] <> seq_m[j]) then
				igual:= false;
		end;
		if(igual) then
			comparacao:= comparacao + 1;
		cont:= 0;
		igual:= true;
	end;
end;

begin
	zera_vetores(seq_n, seq_m);
	read(n, m);
	if((n <> 0) AND (m <> 0)) then
	begin
		ler_n(seq_n, n);
		ler_m(seq_m, m);
		writeln(comparacao(aux, seq_n, seq_m, n, m));
	end
	else
		writeln(0);
end.
