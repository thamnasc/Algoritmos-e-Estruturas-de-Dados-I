program Ex_021;
var num: longint;

begin
        read(num);
        if ((num mod 7 = 0) AND (num mod 11 = 0)) then
                writeln('Multiplo de 7 e de 11.')
        else if (num mod 7 = 0) then
                writeln('Multiplo exclusivamente de 7.')
        else if (num mod 11 = 0) then
                writeln('Multiplo exclusivamente de 11.')
        else
                writeln('Nao e multiplo nem de 7 nem de 11.');
end.

