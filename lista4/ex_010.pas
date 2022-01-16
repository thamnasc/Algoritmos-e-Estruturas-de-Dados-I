program ex_010;
var num: longint;
var n1, n2, n3, triangular: integer;

begin
	read(num);
	n1:= 1;
	n2:= 2;
	n3:= 3;
	triangular:= 0;
	while((n1 * n2 * n3) <= num) do
	begin
		if((n1 * n2 * n3) = num) then
			triangular:= 1;
		n1:= n1 + 1;
		n2:= n2 + 1;
		n3:= n3 + 1;
	end;
	if(triangular = 1) then
		writeln(triangular)
	else // 0
		writeln(triangular);
end.
