(* Enunciado: 

Faça duas funções para calcular o seno e o cosseno de um número real lido do teclado representando um ângulo em radianos.
Calcule até o sexto termo das séries. Faça uma terceira função que calcule a tangente deste mesmo ângulo lido. 
Esta função deve retornar true caso a tangente exista e false em caso contrário. Ao mesmo tempo, a função tangente deve retornar o 
valor da tangente do ângulo caso ele exista, senão deve imprimir uma mensagem adequada. Teste suas funções usando o código abaixo: 


program calcula_tangente; 

var angulo: real; 

// coloque aqui o codigo da sua funcao que calcula o seno 

// coloque aqui o codigo da sua funcao que calcula o cosseno

// coloque aqui o codigo da sua funcao que calcula a tangente 

begin     

read (angulo); 

 	  if existe_tangente(angulo, tg) then    

   	writeln (tg:0:5) 

  else    

    writeln ('nao existe tangente de ',angulo:0:5); 

end. *)

program f_005;
uses math;
var rad, tg: real;

function seno(rad: real): real;
var n: longint;
num, denum, fat, x, sen_aux: real;
begin
	sen_aux:= 0;
	seno:= 0;
	num:= 1;
	x:= rad;
	fat:= 1;
	denum:= 1;
	fat:= 2;
	for n:= 0 to 5 do
	begin
		sen_aux:= sen_aux + (num / denum) * x;
		denum:= denum * fat * (fat + 1);
		fat:= fat + 2;
		x:= x * rad * rad;
		num:= -num;
	end;
	seno:= sen_aux;
end;

function cosseno(rad: real): real;
var n: longint;
num, denum, fat, x, cos_aux: real;
begin
        cosseno:= 0;
        num:= 1;
        x:= 1;
	cos_aux:= 0;
	denum:= 1;
	fat:= 1;
        for n:= 0 to 5 do
        begin
		cos_aux:= cos_aux + (num / denum) * x;
		denum:= denum * fat * (fat + 1);
		fat:= fat + 2;
                x:= x * rad * rad;
        	num:= -num;
	end;
	cosseno:= cos_aux;
end;

function fund_cos(rad: real): real;
var i: real;
begin
	i:= 1 - power(seno(rad), 2);
	fund_cos:= sqrt(i);
end;

function tangente(rad: real; var tg: real): boolean;
var cos_aux: real;
begin
	tangente:= false;
	cos_aux:= cosseno(rad);
	tg:= 0;
	if(cos_aux <> 0) then // nem 270 ou 90 graus
	begin
		tangente:= true;
		tg:= seno(rad) / cos_aux;
	end;
end;

begin
	read(rad);
	if(tangente(rad, tg)) then
		writeln(tg:0:3)
	else
		writeln('nao existe tangente de ', rad:0:3);
end.
