program ex_057;
var num, maior: longint;

begin
    read(num);
    maior:= 0;
    while(num <> 0) do
    begin
        if((num mod 7 = 0) AND (num > maior)) then
            maior:= num;
        read(num);
    end;
    if(maior <> 0) then
        writeln(maior);
end.
