program ex_056;
var n, m, impar_m: integer;
soma: longint;

function nao_eh_par (num: integer): boolean; 
begin
    nao_eh_par:= true;
    if(num mod 2 = 0) then
        nao_eh_par:= false;
end;

begin
    read(n, m);
    impar_m:= 0;
    soma:= 0;
    if((n <> 0) AND nao_eh_par(n)) then //verificar se n é impar para começar a contagem corretamente
    begin
        if(m > (n + 1)) then //se há ao menos um número entre m e n
            soma:= n + 1;
    end
    else
    begin
        if(m > (n + 2)) then//para par, se houver ao menos um elemento
            soma:= n + 2;
    end;
    if(soma <> 0) then //se houver elementos entre n e m
    begin
        n:= soma; //recebe o valor do primeiro par
        while((n + 2) < m) do //se tiver elementos entre n e m
        begin
            n:= n + 2; //pula pro próximo par
            soma:= soma + n;
        end;
    end;
    writeln(soma);
end.
