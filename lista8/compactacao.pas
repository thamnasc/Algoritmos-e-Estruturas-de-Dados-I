program maximizar_soma;
const MIN = 1; MAX = 100;
type vetor = array [MIN..MAX] of longint;
var seq_o, seq_c: vetor;
tam, tam_c: integer;

procedure zera_vetores(var seq_o: vetor; var seq_c: vetor);
var i: integer;
begin
	for i:= 1 to MAX do
	begin
		seq_o[i]:= 0;
		seq_c[i]:= 0;
	end;
end;

procedure le_vetor(var seq_o: vetor; var seq_c: vetor; tam: integer);
var i: integer;
begin
	for i:= 1 to tam do
	begin
		read(seq_o[i]);
		seq_c[i]:= seq_o[i];
	end;
end;

procedure imprime_vetores(var seq_o: vetor; var seq_c: vetor; tam: integer; var tam_c: integer);
var i: integer;
begin
	write('O: ');
	for i:= 1 to tam do
		write(seq_o[i], ' ');
	writeln;
		write('C: ');
	for i:= 1 to tam_c do
		write(seq_c[i], ' ');
	writeln;
end;

procedure remove(posicao: integer; var seq_c: vetor; var tam_c: integer);
var i: integer;
begin
	for i:= posicao to (tam_c - 1) do
	begin
		seq_c[i]:= seq_c[i + 1];
	end;
	tam_c:= tam_c - 1;
end;

procedure verifica_repetido(var seq_o: vetor; var seq_c: vetor; tam: integer; var tam_c: integer);
var i, j, teste: integer;
begin
	teste:= 0;
	j:= 0;
	for i:= 1 to (tam - 1) do
	begin
		teste:= seq_o[i];
		j:= i + 1;
		while(j <= tam_c) do
		begin
			if(seq_c[j] = teste) then
				remove(j, seq_c, tam_c);
			if(seq_c[j] <> teste) then
				j:= j + 1;
		end;
	end;
end;

begin
	zera_vetores(seq_o, seq_c);
	read(tam);
	tam_c:= tam;
	while(tam <> 0) do
	begin
		le_vetor(seq_o, seq_c, tam);
		verifica_repetido(seq_o, seq_c, tam, tam_c);
		imprime_vetores(seq_o, seq_c, tam, tam_c);
		zera_vetores(seq_o, seq_c);
		read(tam);
		tam_c:= tam;
	end;
end.
