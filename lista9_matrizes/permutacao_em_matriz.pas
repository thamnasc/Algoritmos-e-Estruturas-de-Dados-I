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
