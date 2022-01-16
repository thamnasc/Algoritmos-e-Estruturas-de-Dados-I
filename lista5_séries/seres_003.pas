program series_003;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of longint;
var num, denum: vetor;
i, j: integer;

procedure numerador(i: integer; j: integer; var num: vetor);
begin
	num[j + 1]:= num[j] + denum[j];
end;

procedure denumerador(i: integer; j: integer; var denum: vetor);
begin
	denum[j + 1]:= num[j + 1] + denum[j];
end;

function soma(i: integer; var j: integer; var num, denum: vetor): real;
begin
	num[j]:= 1;
	denum[j]:= 1;
	soma:= 0;
	while(j <= i) do
	begin
		soma:= soma + (num[j] / denum [j]);
		numerador(i, j, num);
		denumerador(i, j, denum);
		j:= j + 1;
	end;
end;

begin
	i:= 5;
	j:= 1;
	numerador(i, j, num);
	denumerador(i, j, denum);
	writeln(soma(i, j, num, denum):0:2);
end.
