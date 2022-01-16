program ex_015;
var num: longint;

function algarismo(var mult: longint): longint;
begin
	algarismo:= mult mod 10;
	mult:= mult div 10;
end;

function soma_de_algarismos(n: longint): boolean;
var mult, soma: longint;
begin
	soma_de_algarismos:= false;
	mult:= n * 37;
	soma:= 0;
	while(mult <> 0) do
	begin
		soma:= soma + algarismo(mult);	
	end;
	if(soma = n) then
		soma_de_algarismos:= true;
end;

begin
	read(num);
	if(soma_de_algarismos(num)) then
		writeln('SIM')
	else
		writeln('NAO');
end.
