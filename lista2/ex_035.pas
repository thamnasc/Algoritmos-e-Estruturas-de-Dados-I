program ex_035;
var sal, IR: real;
i: integer;

begin
    read(sal);
    i:= 0;
    if(sal <= 1424) then
    begin
        IR:= 0;
        i:= 1;
    end
    else if(sal <= 2150) then
    begin
        IR:= sal * 0.075;
        i:= 2;
    end
    else if(sal <= 2866) then
    begin
        IR:= sal * 0.15;
        i:= 3;
    end
    else if(sal <= 3582) then
    begin
        IR:= sal * 0.225;
        i:= 4;
    end
    else
    begin
       IR:= sal * 0.275;
        i:= 5;
    end;
    if(sal < 540) then
        writeln('NAO')
    else
        writeln(i, ' ', IR:0:2);
end.
