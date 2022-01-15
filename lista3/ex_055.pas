program ex_055;
var m: longint;
n, cont: integer;

begin
    read(n, m);
    cont:= 0;
    while((n < 0) OR (n > 9)) do
        read(n);
    while(m <> 0) do
    begin
        if(m mod 10 = n) then
            cont:= cont + 1;
        m:= m div 10;
    end;
    if(cont <> 0) then
        writeln(cont)
    else
        writeln('NAO');
end.
