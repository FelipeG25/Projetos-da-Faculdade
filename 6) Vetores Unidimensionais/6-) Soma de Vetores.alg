algoritmo "Soma de Vetores"
// Função : Fazer a soma de dois vetores e mostrar o resultado em outro vetor.
// Autor : Felipe Goulart
//Faça um programa que peça 5 números em um vetor, mais 05 números em outro
//vetor e armazene a soma dos elementos de um vetor com outro em um
//terceiro. Ex.: vetorA[1] + vetorB[1]. Mostre o vetor soma ao final.
var
num1: vetor [1..5] de inteiro
num2: vetor [1..5] de inteiro
soma: vetor [1..5] de inteiro
contadora: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
para contadora de 1 ate 5 passo 1 faca
   ESCREVAL ("Informe o ",contadora,"ª número")
   LEIA (num1[contadora])
   ESCREVAL ("Informe o ",contadora,"ª número")
   LEIA (num2[contadora])
   ESCREVAL
   soma[contadora] <- num1[contadora] + num2[contadora]
   ESCREVAL ("A soma dos ",contadora,"ª números é dê:", soma[contadora])
   ESCREVAL
fimpara
fimalgoritmo
