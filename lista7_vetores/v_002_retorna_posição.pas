(*Enunciado: 

Faça um programa que leia uma sequência de inteiros terminada em zero e armazene esta sequência em um vetor. 
O zero não deve ser processado pois serve para marcar o final da entrada de dados. Em seguida o programa deve 
ler uma outra sequência de inteiros também terminada em zero e, para cada valor lido, o programa deve dizer qual 
a posição do valor dentro do vetor, caso o valor exista no vetor, ou 0 (zero) caso não exista. Esta segunda sequência 
não precisa ser armazenada em vetores. Use ao máximo funções e procedimentos apropriados. 

Exemplo de entrada 
-2 -6 7 2 0 
 
7 
3 
2 
0 

Saída esperada 
3 
0 
4 *)

program v_002;
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
