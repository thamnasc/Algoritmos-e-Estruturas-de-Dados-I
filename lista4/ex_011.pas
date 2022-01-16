program ex_011;
var num: integer;

function eh_primo(primo: integer): boolean;
var cont: integer;
begin
        cont:= 2;
        eh_primo:= true;
        while(cont < primo) do
        begin
                if(primo mod cont = 0) then
                        eh_primo:= false;
                cont:= cont + 1;
        end;
end;

begin
        read(num);
        if(eh_primo(num) AND (num > 1)) then
                writeln('SIM')
        else
                writeln('NAO');
end.
