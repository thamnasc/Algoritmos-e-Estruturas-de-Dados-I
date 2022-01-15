program ex_062;
var sal: real;

begin
    read(sal);
    while(sal <> 0) do
    begin
        if(sal < 0) then
            writeln(sal:0:2);
        read(sal);    
    end;
end.
