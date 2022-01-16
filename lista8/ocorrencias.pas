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
