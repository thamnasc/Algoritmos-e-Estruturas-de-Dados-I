program Ex_019;
var med, n1, n2, n3, faltas: real;

begin
        read(n1, n2, n3, faltas);
        med:= (n1+n2+n3)/3;
        if(faltas < 10) then
        begin
                if(med < 4) then
                        writeln('NAO')
                else if (med < 7) then
                        writeln('TALVEZ')
                else
                        writeln('SIM');
        end
        else
                writeln('NAO');
end.
