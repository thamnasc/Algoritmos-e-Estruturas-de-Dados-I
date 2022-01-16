(* Enunciado: 

No tabuleiro de xadrez, a casa na linha 1, coluna 1 (canto superior esquerdo) é sempre branca e as cores das casas se alternam entre branca e preta, 
de acordo com o padrão conhecido como... xadrez! Dessa forma, como o tabuleiro tradicional tem oito linhas e oito colunas, a casa na linha 8, coluna 8 
(canto inferior direito) será também branca. Neste problema, entretanto, queremos saber a cor da casa no canto inferior direito de um tabuleiro com 
dimensões quaisquer: L linhas e C colunas. 
Faça um programa Pascal que leia do teclado dois números naturais positivos representando respectivamente o número de linhas L e colunas C do tabuleiro 
e verifique se a cor da casa no canto inferior direito desse tabuleiro será branca ou preta. 

Exemplos: 
Entrada 1: 
6 9 
Saída Esperada 1: 
PRETA 

Entrada 2: 
8 8 
Saída Esperada 2: 
BRANCA *)

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
