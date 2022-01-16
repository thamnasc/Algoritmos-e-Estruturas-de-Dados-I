program ex_008;
var num, last, sum: real;
cont: integer;

begin
	read(num);
	last:= num;
	sum:= num;
	read(num);
	sum:= sum + num;
	cont:= 2;
	while((num <> (last * 2)) AND (num <> (last / 2))) do
	begin
		last:= num;
		read(num);
		sum:= sum + num;
		cont:= cont + 1;
		
	end;
	writeln(cont, ' ', sum:0:0, ' ', last:0:0, ' ', num:0:0);
end.
