program ex_031;
var saldo: real;

begin
        read(saldo);
        writeln(saldo:0:0);
        if(saldo <= 200) then
                writeln(0)
        else if(saldo <= 400) then
                writeln('20%')
        else if(saldo <= 600) then
                writeln('30%')
        else
                writeln('40%')
end.
