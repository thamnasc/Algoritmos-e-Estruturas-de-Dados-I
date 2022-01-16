program v_003;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of longint;
var seq: vetor;
num: longint;
tam: integer;

procedure zera_vetor(var seq: vetor);
var i: integer;
begin
	for i:= 1 to MAX do
		seq[i]:= 0;
end;

function comparacao(num: longint; var seq: vetor; tam: integer): integer;
var i: integer;
existe: boolean;
begin
	i:= 0;
	existe:= false;
	while((i <= tam) AND (NOT existe)) do
	begin
		i:= i + 1;
		if(seq[i] = num) then
			existe:= true;
	end;
	if(existe) then	
		comparacao:= i
	else
		comparacao:= 0;
end;

begin
	tam:= 0;
	zera_vetor(seq);
	read(num);
	if(num <> 0) then
	begin
		while(num <> 0) do
		begin
			tam:= tam + 1;
			seq[tam]:= num;
			read(num);
		end;
		read(num);
        	while(num <> 0) do
        	begin
                	writeln(comparacao(num, seq, tam));
                	read(num);
        	end;
	end
	else
		writeln('vetor vazio');
end.
