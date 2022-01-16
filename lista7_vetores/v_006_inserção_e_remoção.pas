(* Enunciado: 

Faça um programa que leia uma sequência de códigos de operação e valor, onde o código de operação é um inteiro com os seguintes valores: 

0 (zero): fim 
1 (um): inserção 
2 (dois): remoção 

O valor lido é um número real que deve ser inserido em um vetor (caso a operação seja 1), ou removido do vetor (caso a operação seja 2). 
As inserções no vetor devem ser realizadas de forma que o vetor esteja sempre ordenado. O programa deve imprimir todos os vetores resultantes 
de cada operação e ao final deve imprimir o vetor resultante. Imprima os valores reais sempre com uma casa decimal. Caso o vetor esteja vazio, 
imprima a mensagem "vazio". 

Detalhamento: 

A quantidade máxima de valores que pode ser inserida é 200; 

Se a quantidade máxima for ultrapassada o programa deve dar uma mensagem de erro (imprima a mensagem "erro"); 

Se for requisitada a remoção de um número não existente o programa deve dar uma mensagem de erro (imprima "erro"); 

Se o código de operação for inválido o programa deve continuar lendo um novo código até que ele seja 0 (zero), 1 (um) ou 2 (dois). 

Use ao máximo funções e procedimentos apropriados. 

Exemplo: 

Entrada: 
1 
 
45.3 
1 
 
34.3 
4 
 
9 
 
1 
 
40.8 
2 
 
11.9 
2 
 
34.3 
0 

Saída: 
45.3 
34.3 45.3 
34.3 40.8 45.3 
erro 
40.8 45.3 
40.8 45.3 *)

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
