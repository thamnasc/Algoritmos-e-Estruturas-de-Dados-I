(* Enunciado: 

Faça um programa que leia um número inteiro positivo n e em seguida leia uma sequência de n números inteiros quaisquer. 
Seu programa deve imprimir os números distintos (na mesma ordem relativa entre eles) e em seguida o número de vezes que 
cada um deles ocorre na mesma. Use ao máximo funções e procedimentos adequados. Dica: você pode usar vetores auxiliares 
para ajudar a verificar e contar as ocorrências. 

Exemplo de entrada 
5 
 
3 1 2 2 3 

Saída esperada: 
a sequencia tem 3 numeros distintos: 3 1 2 
3 ocorre 2 vezes 
1 ocorre 1 vez 
2 ocorre 2 vezes *)

program v_004;
const MIN = 1; MAX = 200;
type vetor = array [MIN..MAX] of longint;
var seq, distinto, contador: vetor;
n, tam_novo: integer;

procedure zera_vetor(var distinto: vetor; var contador: vetor; tam: integer);
var i: integer;
begin
        for i:= 1 to tam do
        begin
                distinto[i]:= 0;
                contador[i]:= 0;
        end;
end;

procedure le_vetor(var seq: vetor; tam: integer);
var i: integer;
begin
        for i:= 1 to tam do
                read(seq[i]);
end;
procedure ocorrencia(var seq: vetor; var distinto: vetor; var contador: vetor; tam: integer; var tam_novo: integer);
var i, j: integer;
igual: boolean;
begin
        distinto[1]:= seq[1]; //o primeiro elemento distinto é o primeiro da sequencia
        igual:= false;
        j:= 1;
        for i:= 2 to tam do
        begin
                for j:= 1 to tam_novo do
                begin
                        if(seq[i] = distinto[j]) then
                        begin
                                igual:= true;
                        end;
                end;
		if(NOT igual) then
                begin
                        tam_novo:= tam_novo + 1;
                	distinto[tam_novo]:= seq[i];
                end;
		igual:= false;
        end;
        for i:= 1 to tam do
        begin
                for j:= 1 to tam_novo do
                begin
                        if(seq[i] = distinto[j]) then
                                contador[j]:= contador[j] + 1;
                end;
        end;
end;
procedure imprime_vetor(var distinto: vetor; var contador: vetor; var tam_novo: integer);
var i: integer;
begin
	if(tam_novo = 1) then
        	write('a sequencia tem ', tam_novo, ' numero distinto: ')
	else
		write('a sequencia tem ', tam_novo, ' numeros distintos: ');
        for i:= 1 to tam_novo do
        begin
                write(distinto[i], ' ');
        end;
        writeln;
        for i:= 1 to tam_novo do
        begin
                if(contador[i] = 1) then
                        writeln(distinto[i], ' ocorre ', contador[i], ' vez')
                else
                        writeln(distinto[i], ' ocorre ', contador[i], ' vezes');

        end;
end;

begin
        read(n);
	if(n <> 0) then
	begin
        	tam_novo:= 1; //inicia em 1 o novo tamanho
        	zera_vetor(distinto, contador, n);
        	le_vetor(seq, n);
        	ocorrencia(seq, distinto, contador, n, tam_novo);
        	imprime_vetor(distinto, contador, tam_novo);
	end
	else
		writeln('vetor vazio');
end.
