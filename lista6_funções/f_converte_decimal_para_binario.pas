program binario;
var n: longint;

function binario(n: longint): longint;
var pot: longint;
begin
	pot:= 1;
	binario:= 0;
	while(n <> 0) do
	begin
		binario:= (n mod 2) * pot + binario;
		n:= n div 2;
		pot:= pot * 10;
	end;
end;

begin
	read(n);
	writeln(binario(n));
end.
