program converte;
var n: longint;

function converte_em_decimal(n: longint): longint;
var pot: longint;
begin
	converte_em_decimal:= 0;
	pot:= 1;
	while(n <> 0) do
	begin
		converte_em_decimal:= (n mod 10) * pot + converte_em_decimal;
		pot:= pot * 2;
		n:= n div 10;
	end;
end;

begin
	read(n);
	writeln(converte_em_decimal(n));
end.
