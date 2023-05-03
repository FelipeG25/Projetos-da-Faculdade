algoritmo "Somos Pares"
// Função : Fazer a soma de todos os valores pares entre um intervalo de dois números
// Autor : Felipe Goulart
//Faça um algoritmo que mostre a soma de todos os valores pares entre um intervalo de dois números digitados pelo usuário.
//Ex01.: início do intervalo: 1, final do intervalo: 8, logo, soma dos pares (2+4+6+8): 20
//Ex02.: início do intervalo: 2, final do intervalo: 12, logo, soma dos pares (2+4+6+8+10+12): 42
//Não é necessário mostrar os números pares, apenas a soma deles
var
auxiliar, num1, num2, quantPar, contadora: inteiro
somaPar: real
inicio
ESCREVAL ("Seja bem vindo(a), usuário(a)!")
ESCREVAL
ESCREVAL ("Você irá escolher dois números e o algoritmo fará a soma de todos os valores")
ESCREVAL ("pares no intervalo desses dois números.")
ESCREVAL
ESCREVAL ("Escolha o 1º Número")
LEIA (num1)
ESCREVAL
ESCREVAL ("Escolha o 2º Número")
LEIA (num2)
ESCREVAL

quantPar <- 0
se (num1<num2) entao
   para auxiliar de num1 ate num2 passo 1 faca
      ESCREVAL (auxiliar)
      se (auxiliar MOD 2 = 0) entao
         somaPar <- somaPar + auxiliar
      fimse
   fimpara

senao

   para auxiliar de num2 ate num1 passo 1 faca
      ESCREVAL (auxiliar)
      se (auxiliar MOD 2 = 0) entao
         somaPar <- somaPar + auxiliar
      fimse
   fimpara
fimse

ESCREVAL
ESCREVAL ("A soma dos números pares é de:", somaPar)
fimalgoritmo
