(* Enunciado: 

Faça uma função que receba como parâmetros seis inteiros dia1, mes1, ano1, dia2, mes2, ano2 , todas do tipo integer. 
Considerando que cada trinca de dia, mês e ano representa uma data, a função deve retornar true se a primeira data for 
anterior à segunda e false caso contrário. Teste sua função usando o código abaixo. 


program compara datas;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

//coloque aqui o codigo da sua funcao que compara as datas

begin
	read(dia1, mes1, ano1, dia2, mes2, ano2);
	if(eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2)) then
		writeln('a primeira data eh anterior')
	else
		writeln('a primeira data nao eh anterior');
end.

 *)
 
program f_006;
var dia1, mes1, ano1, dia2, mes2, ano2: longint;

function eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2: longint): boolean;
begin
	eh_anterior:= false;
	if(ano1 <= ano2) then
	begin
		if(mes1 = mes2) then
		begin
			if(dia1 < dia2) then
				eh_anterior:= true;
		end
		else if(mes1 < mes2) then
			eh_anterior:= true;
	end;
end;

begin
	read(dia1, mes1, ano1, dia2, mes2, ano2);
	if(eh_anterior(dia1, mes1, ano1, dia2, mes2, ano2)) then
		writeln('a primeira data eh anterior')
	else
		writeln('a primeira data nao eh anterior');
end.
