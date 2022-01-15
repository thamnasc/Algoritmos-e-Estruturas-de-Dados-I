program Exercicio_099;
var anos, meses, dias, days: longint;

begin
        read(anos, meses, dias);
        days:= (anos*365+meses*30+dias);
        writeln(days);
end.
