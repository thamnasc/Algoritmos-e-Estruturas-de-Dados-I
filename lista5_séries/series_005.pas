program series_005;
var n: longint;

function soma(n: longint): real;
var num, denum, aux, i: longint;
begin
        soma:= 0;
        num:= 1;
        denum:= 3;
        for i:= 1 to n do
        begin
                soma:= soma + (num / denum);
                aux:= num;
                num:= denum * 2;
                denum:= aux * 2;
        end;
end;

begin
        n:= 10;
        writeln(soma(n):0:2);
end.
