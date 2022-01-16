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
