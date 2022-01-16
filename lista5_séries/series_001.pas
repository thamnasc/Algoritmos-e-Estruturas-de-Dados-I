program series_001;
var n: longint;

function soma(numero: longint): real;
var num, denum, i: longint;
begin
        num:= 1000;
        denum:= 1;
        soma:= 0;
        for i:= denum to numero do
        begin
                if(denum mod 2 <> 0) then
                        soma:= soma + (num / denum)
                else // par
                        soma:= soma - (num / denum);
                num:= num - 3;
                denum:= denum + 1;
        end;
end;

begin
        read(n);
        writeln(soma(n):0:2);
end.
