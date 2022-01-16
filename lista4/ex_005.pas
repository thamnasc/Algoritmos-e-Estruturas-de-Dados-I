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
