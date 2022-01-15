(* Enunciado: 

O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do distribuidor
e dos impostos (aplicados ao custo de fábrica). 
Supondo que a percentagem do distribuidor seja de 28% e os impostos de 45%, faça um programa Pascal que 
leia um número inteiro representando o custo de fábrica de um carro e imprima o custo ao consumidor. 

PS: Considere sempre o arredondamento com Truncamento. 

Exemplos: 
Entrada 1: 
15000 
Saída Esperada 1: 
25950 

Entrada 2: 
12500 
Saída Esperada 2: 
21625 

Entrada 3: 
8350 
Saída Esperada 3: 
14445 *)

program Exercicio_089;
var custof, custoc: longint;

begin
        read(custof);
        custoc:=trunc(custof*0.28+custof*0.45+custof);
        writeln(custoc);
end.
