program ex_040;
var maior, menor, num: longint;

begin
    read(num);
    maior:= num;
    menor:= num;
    if(num <> 0) then
    begin
        while(num <> 0) do
        begin
            if(num > maior) then
                maior:= num;
            if(num < menor) then
                menor:= num;
            read(num);
        end;
        writeln(maior, ' ', menor);
    end;
end.
