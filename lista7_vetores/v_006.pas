program v_006;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of real;
var seq: vetor;
codigo, tam: integer;
num: real;

procedure zera_vetor(var seq: vetor);
var i: integer;
begin
	for i:= 1 to MAX do
		seq[i]:= 0;
end;

procedure imprime_vetor(var seq: vetor; tam: integer);
var i: integer;
begin
	if(tam = 0) then
		writeln('vazio')
	else
	begin
		for i:= 1 to tam do
			write(seq[i]:0:1, ' ');
		writeln;
	end;
end;

procedure ordenacao(var seq: vetor; var tam: integer);
var aux: real;
i, j, pos_menor: integer;
begin
        for i:= 1 to (tam - 1) do       //ultimo que sobra sempre é o maior
        begin
                pos_menor:= i;
                for j:= (i + 1) to tam do
                begin
                        if(seq[pos_menor] > seq[j]) then
                                pos_menor:= j;
                end;
                aux:= seq[pos_menor];
                seq[pos_menor]:= seq[i];
                seq[i]:= aux;
        end;
end;

procedure insercao(num: real; var seq: vetor; var tam: integer);
begin
	tam:= tam + 1;
	if(tam > 200) then
	begin
		writeln('erro');
		tam:= tam - 1;
	end
	else
	begin
		seq[tam]:= num;
		ordenacao(seq, tam);	
		imprime_vetor(seq, tam);
	end;
end;

function busca_binaria(num: real; var seq: vetor; var tam: integer): integer;
var comeco, final, meio: integer;
begin
	comeco:= 1;
	final:= tam;
	meio:= (comeco + final) div 2;
	while((seq[meio] <> num) AND (comeco <= final)) do
	begin
		if(seq[meio] > num) then
			final:= meio - 1
		else
			comeco:= meio + 1;
		meio:= (comeco + final) div 2;
	end;
	if(comeco <= final) then
		busca_binaria:= meio
	else
		busca_binaria:= 0;
end;

procedure remocao(num: real; var seq: vetor; var tam: integer);
var i, position: integer;
begin
	position:= busca_binaria(num, seq, tam);
	if(position <> 0) then
	begin
		for i:= position to (tam - 1) do
			seq[i]:= seq[i + 1];
		tam:= tam - 1;
		imprime_vetor(seq, tam);
	end
	else
		writeln('erro');
end;

begin
	read(codigo);
	tam:= 0; //inicia sem elementos
	zera_vetor(seq);
	while(codigo <> 0) do
	begin
		if((codigo <> 1) AND (codigo <> 2)) then
		begin
			while((codigo <> 1) AND (codigo <> 2) AND (codigo <> 0)) do
				read(codigo);
		end;
		read(num);
		if(codigo = 1) then
			insercao(num, seq, tam)
		else if(codigo = 2) then
			remocao(num, seq, tam);
		read(codigo);
	end;
	imprime_vetor(seq, tam);
end.
