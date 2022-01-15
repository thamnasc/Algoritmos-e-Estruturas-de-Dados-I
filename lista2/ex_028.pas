program Ex_028;
var F, C: real;

begin
        read(F);
        C:= (5*F - 160) / 9;
        writeln(C:0:2);
        if C <= 0 then
                writeln('solido')
        else if C < 100 then
                writeln('liquido')
        else 
                writeln('gasoso');
end.
