algoritmo "Par ou �mpar?"
// Fun��o : Pedir 10 n�meros e mostrar quantos s�o pares e a soma dele e quantos s�o �mpares e a soma deles.
// Autor : Felipe Goulart
//Fa�a um algoritmo que pe�a ao usu�rio 10 n�meros e mostre posteriormente
//quantos s�o pares e a soma deles, bem como quantos s�o �mpares e a soma deles.
var
numero, quantPar, quantImpar, somaPares, somaImpar, aux: inteiro
inicio
ESCREVAL ("Seja bem vindo, usu�rio")
ESCREVAL
ESCREVAL ("Escolha 10 n�meros e os escreva logo a baixo")
ESCREVAL

quantPar <- 0
quantImpar <- 0

para aux de 1 ate 10 passo 1 faca
   ESCREVAL ("Informe o ", aux, "� n�mero:")
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

ESCREVAL ("N�meros pares:", quantPar)
ESCREVAL
ESCREVAL ("N�meros �mpares:", quantImpar)
ESCREVAL
ESCREVAL ("A soma dos n�meros pares � de:", somaPares)
ESCREVAL
ESCREVAL ("A soma dos n�meros �mpares � de:", somaImpar)
fimalgoritmo
