algoritmo "Par ou Ímpar?"
// Função : Pedir 10 números e mostrar quantos são pares e a soma dele e quantos são ímpares e a soma deles.
// Autor : Felipe Goulart
//Faça um algoritmo que peça ao usuário 10 números e mostre posteriormente
//quantos são pares e a soma deles, bem como quantos são ímpares e a soma deles.
var
numero, quantPar, quantImpar, somaPares, somaImpar, aux: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário")
ESCREVAL
ESCREVAL ("Escolha 10 números e os escreva logo a baixo")
ESCREVAL

quantPar <- 0
quantImpar <- 0

para aux de 1 ate 10 passo 1 faca
   ESCREVAL ("Informe o ", aux, "º número:")
   LEIA (numero)
   se (numero MOD 2 = 0) entao
      quantPar <- quantPar + 1
      somaPares <- somaPares + (numero)
   senao
      quantImpar <- quantImpar + 1
      somaImpar <- somaImpar + (numero)
   fimse
fimpara

ESCREVAL

ESCREVAL ("Números pares:", quantPar)
ESCREVAL
ESCREVAL ("Números ímpares:", quantImpar)
ESCREVAL
ESCREVAL ("A soma dos números pares é de:", somaPares)
ESCREVAL
ESCREVAL ("A soma dos números ímpares é de:", somaImpar)
fimalgoritmo
