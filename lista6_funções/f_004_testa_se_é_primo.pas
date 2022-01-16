(* Enunciado: 

Faça uma função que receba como parâmetro um número inteiro e retorne true se ele for primo e false em caso contrário. 
Teste sua função usando o código abaixo, que imprime todos os primos entre 1 e 10000. 


program testa_se_primo;
var i: longint;

// coloque aqui o codigo da sua funcao que testa se eh primo

begin
    for i: =1 to 10000 do
        if eh_primo (1) then
	    writeln(1);
end.

 *)
 
program f_004;
uses math;
const MIN = 2; MAX = 1000;
type vetor = array [MIN..MAX] of boolean;
var seq: vetor;
tam, raiz: longint;

procedure up_vetor(var seq: vetor; tam: longint);
var i: longint;
begin
	for i:= MIN to tam do
		seq[i]:= true;
end;

procedure crivo(var seq: vetor; tam, raiz: longint);
var i, primo: longint;
begin
	primo:= 2;
	i:= 2;
	while(primo <= raiz) do
	begin
		while((primo * i) <= MAX) do
		begin
			if(seq[primo * i]) then
				seq[primo * i]:= false;
			i:= i + 1;
		end;
		i:= 2;
		primo:= primo + 1;
		while(NOT (seq[primo])) do
		begin
			primo:= primo + 1;
		end;
	end;
end;

procedure imprime_crivo(var seq: vetor; tam: longint);
var i: longint;
begin
	for i:= MIN to MAX do
	begin
		if(seq[i]) then
			write(i, ' ');
	end;
	writeln;
end;

begin
	tam:= MAX;
	raiz:= trunc(sqrt(MAX));
       	up_vetor(seq, tam);
	crivo(seq, tam, raiz);	
	imprime_crivo(seq, tam);
end.
