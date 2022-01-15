program Ex_113;
var sal, prest: longint;

begin
        read(sal, prest);
        if(prest > (sal*0.3)) then
                writeln('NAO')
        else
                writeln('SIM');
end.
