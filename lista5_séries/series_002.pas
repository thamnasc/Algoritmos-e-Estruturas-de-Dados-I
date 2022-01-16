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
