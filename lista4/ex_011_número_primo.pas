(* Enunciado: 

Faça um programa Pascal que leia do teclado um número inteiro maior que 1 e verifique se este número é primo ou não. 

Exemplos: 
Entrada 1: 
13 
Saída Esperada 1: 
SIM 

Entrada 2: 
7 
Saída Esperada 2: 
SIM 

Entrada 3: 
26 
Saída Esperada 3: 
NAO *)

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
