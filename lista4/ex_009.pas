(* Enunciado: 

Dadas as populações Pa e Pb de duas cidades A e B (no ano atual) e suas respectivas taxas de crescimento anual Ta e Tb, 
faça um programa Pascal que que receba 4 números reais como entrada (Pa, Pb, Ta, Tb) representando estas informações e 
determine se a população da cidade de menor população ultrapassará a de maior população e se sim, imprima em quantos anos 
que isto ocorrerá. Caso contrário, imprima 0. 

Exemplos: 
Entrada 1: 
300 500 0.12 0.05 
Saída Esperada 1: 
8 

Entrada 2: 
300 500 0.1 0.5 
Saída Esperada 2: 
0 *)

program ex_009;
var Pa, Pb, Ta, Tb: real;
anos: integer;

procedure ordem_crescente(var x, y: real);
var aux: real;
begin
	aux:= y;
	y:= x;
	x:= aux;
end;

begin
	read(Pa, Pb, Ta, Tb);
	anos:= 0;
	if(Pa > Pb) then //considerando Pa como menor e Pb como maior
	begin
		ordem_crescente(Pa, Pb);
		ordem_crescente(Ta, Tb);
	end;
	if(Ta > Tb) then
	begin
		while(Pa <= Pb) do
		begin
			Pa:= Pa + Pa * Ta;
			Pb:= Pb + Pb * Tb;
			anos:= anos + 1;
		end;
	end;
	writeln(anos);
end.
