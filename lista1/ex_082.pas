program Exercicio_082;
var sec, hour, minute, second: longint;

begin
        read(sec);
        hour:= sec div 3600;
        minute:= sec mod 3600 div 60;
        second:= sec mod 3600 mod 60;
        writeln(hour,':' , minute, ':', second);
end.
