program series_007;
var n: integer;

function soma(n: integer): real;
var num, denum, i: longint;
begin
	soma:= 0;
	num:= 1;
	denum:= 20;
	for i:= 1 to n do
	begin
		if(i mod 2 <> 0) then
		begin
			soma:= soma - (num / denum);
			num:= (num + 2) * 10;
			denum:= (denum div 10) + 2;
		end
		else // par
		begin
			soma:= soma + (num / denum);
			num:= (num div 10) + 2;
			denum:= (denum + 2) * 10;
		end;
	end;
end;

begin
	n:= 10;
	writeln(soma(n):0:2);
end.
