program f_001;
var n, m: longint;

function contrario(n, m: longint): boolean;
var pot, invertido: longint;
begin
	pot:= 10;
	invertido:= 0;
	contrario:= false;
	while(n <> 0) do
	begin
		invertido:= invertido * pot + (n mod 10);
		n:= n div 10;
	end;
	if(invertido = m) then
		contrario:= true;
end;

begin
	read(n, m);
	if(contrario(n, m)) then
		writeln(n, ' eh o contrario de ', m)
	else
		writeln(n, ' nao eh o contrario de ', m);
end.
