program Ex_033;
var num, lado: longint;

begin
    read(num, lado);
    if(num = 3) then
        writeln('TRIANGULO ', lado * 3)
    else if(num = 4) then
        writeln('QUADRADO ', lado * lado)
    else if(num = 5) then
        writeln('PENTAGONO')
    else
        writeln('ERRO');
end.
