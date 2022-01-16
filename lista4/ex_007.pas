program ex_007;
var L, C: integer;
cor: boolean;

begin
        //xadrez comeca com casa branca
        //numeros pares de colunas tem cor preta no final da linha
        //numeros pares de linhas tem cor final da casa na extrema direita oposta a primeira ultima coluna.

        read(L, C);
        cor:= true; //iniciamos com branca

        if(C mod 2 = 0) then //a ultima coluna da primeira linha eh preta, se a quantidade de colunas for par
                cor:= false //preto
        else //se for impar a quantidade de colunas, eh branca
                cor:= true; //branco
        if(L mod 2 = 0) then //se o numero de linhas for par, a cor da casa da extrema direita eh oposta a cor da casa da primeira linha ultima coluna
        begin
                if(cor = false) then //se for preta
                        cor:= true //vai ser branca
                else //se for branca
                        cor:= false; //vai ser preta
        end;
        //se o numero de linhas for impar, a cor vai ser a mesma
        if(cor = false) then
                writeln('PRETA')
        else
                writeln('BRANCA');
end.
