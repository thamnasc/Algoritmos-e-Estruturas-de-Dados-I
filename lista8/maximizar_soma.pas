program maximizar_soma;
const MIN = 1; MAX = 100;
type vetor = array [MIN..MAX] of longint;
var seq: vetor;
tam: longint;

procedure ler(var seq: vetor; tam: longint);
var i: longint;
begin
	for i:= 1 to tam do
		read(seq[i]);
end;

function soma(var seq: vetor; n: longint): longint;
var i, j, maior, aux: longint;
begin
	maior:= seq[1];
	aux:= 0;
	for i:= 1 to tam do //soma em sequencia, i, i+(i+1), i+(i+1)+(i+2)...
	begin
		aux:= seq[i];
		if(aux > maior) then
			maior:= aux;
		for j:= (i + 1) to tam do
		begin
			aux:= aux + seq[j];
			if(aux > maior) then
				maior:= aux;
		end;
	end;
	for i:= tam downto 1 do //soma em sequencia ao contrario
	begin
		aux:= seq[i];
		if(aux > maior) then
			maior:= aux;
		for j:= (tam - 1) downto 1 do
		begin
	        	if(aux > maior) then
				maior:= aux;
		end;
	end;
	soma:= maior;
end;

begin
	read(tam);
	ler(seq, tam);
	writeln(soma(seq, tam));
end.	
