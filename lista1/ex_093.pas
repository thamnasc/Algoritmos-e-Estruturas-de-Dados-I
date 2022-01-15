(* Enunciado: 

Faça um programa Pascal que leia um número inteiro e imprima o seu sucessor e seu antecessor, na mesma linha. 

Exemplos: 
Entrada 1: 
1 
Saída Esperada 1: 
2 0 

Entrada 2: 
100 
Saída Esperada 2: 
101 99 *)

program Exercicio_093;
var num: integer;

begin
        read(num);
        writeln((num + 1), ' ', (num - 1));
end.
