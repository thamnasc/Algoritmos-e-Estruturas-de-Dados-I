program ex_013;
var i, j, k: longint;
	
function multiplos(n1, n2, n3: longint): boolean;
begin
	multiplos:= false;
	if((n2 mod n1 = 0) AND (n3 mod n2 = 0)) then
		multiplos:= true;
end;

function consecutivos(n1, n2, n3: longint): boolean;
begin
	consecutivos:= false;
	if(j = (i + 1)) then
	begin
		if(k = (j + 1)) then
			consecutivos:= true;
	end;
end;

begin
	read(i, j, k);
	if(multiplos(i, j, k)) then
		writeln(i+j+k)
	else if(consecutivos(i, j, k)) then
		writeln(k, ' ',  j, ' ',  i)
	else
		writeln((i+j+k) div 3);
end.
