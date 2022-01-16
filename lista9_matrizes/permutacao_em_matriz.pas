(* Enunciado: 

Uma matriz inteira A n×n é considerada uma matriz de permutação se em cada linha e em cada coluna 
houver n - 1 elementos nulos e um único elemento igual a 1. 

Um exemplo de Matriz de permutação: 

 0 1 0 0
 0 0 1 0
 1 0 0 0
 0 0 0 1

Um exemplo de Matriz que não é de permutação: 

 2   -1   0
-1   -2   0
 0    0   1

Faça um programa em Free Pascal que leia um inteiro positivo n, sendo 1 ≤ m, n ≤ 100, e uma matriz 
inteira A n×n . O programa deve imprimir “sim” caso a matriz A seja de permutação, caso contrário deve 
imprimir “nao”. 
Nos casos de teste cada elemento x da matriz A é definido por 0 ≤ x ≤ 100. 

PS: Seu programa deve encerrar a execução assim que descobrir se a propriedade definida foi atendida ou não. 

Exemplo de entrada 1: 
3 
1 0 0 
0 1 0 
0 0 1 

Saı́da esperada para o exemplo acima: 
sim 

Exemplo de entrada 2: 
3 
1 0 0 
1 0 0 
0 1 0 

Saı́da esperada para o exemplo acima: 
nao *)

program permutacao_em_matriz;
const MIN = 1; MAX = 100;
type matriz = array [MIN..MAX, MIN..MAX] of longint;
var m1: matriz;
n: integer;

procedure ler_matriz(var m: matriz; linha, coluna: integer);
var i, j: integer;
x: longint;
begin
	for i:= 1 to linha do
	begin
		for j:= 1 to coluna do
		begin
			read(x);
			if((x >= 0) AND (x <= 100)) then
				m[i, j]:= x;
		end;
	end;
end;

function confere_permutacao(var m: matriz; linha, coluna: integer): boolean;
var i, j, zero, um: integer;
permutacao: boolean;
begin
	i:= 1;
	j:= 1;
	permutacao:= true;
	confere_permutacao:= true;
	zero:= 0;
	um:= 0;
	while((i <= linha) AND permutacao) do
	begin	
		while(j <= coluna) do
		begin	
			if(m[i, j] = 0) then
				zero:= zero + 1
			else if(m[i, j] = 1) then
				um:= um + 1
			else //qualquer outro numero
				permutacao:= false;
			j:= j + 1;
		end;
		if(um <> 1) then
			permutacao:= false;
		j:= 1;
		i:= i + 1;
		zero:= 0;
		um:= 0;
	end;
	i:= 1;
       	while((j <= coluna) AND permutacao) do
        begin
                while(i <= linha) do
                begin
                        if(m[i, j] = 0) then
                                zero:= zero + 1
                        else if(m[i, j] = 1) then
                                um:= um + 1
                        else //qualquer outro numero
                                permutacao:= false;
                        i:= i + 1;
                end;
                if(um <> 1) then
                        permutacao:= false;
                i:= 1;
                j:= j + 1;
		zero:= 0;
		um:= 0;
        end;
	if(NOT permutacao) then
		confere_permutacao:= false;
end;

begin
	read(n);
	ler_matriz(m1, n, n);
	if(confere_permutacao(m1, n, n)) then
		writeln('sim')
	else
		writeln('nao');
end.
