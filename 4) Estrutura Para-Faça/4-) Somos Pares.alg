algoritmo "Somos Pares"
// Fun��o : Fazer a soma de todos os valores pares entre um intervalo de dois n�meros
// Autor : Felipe Goulart
//Fa�a um algoritmo que mostre a soma de todos os valores pares entre um intervalo de dois n�meros digitados pelo usu�rio.
//Ex01.: in�cio do intervalo: 1, final do intervalo: 8, logo, soma dos pares (2+4+6+8): 20
//Ex02.: in�cio do intervalo: 2, final do intervalo: 12, logo, soma dos pares (2+4+6+8+10+12): 42
//N�o � necess�rio mostrar os n�meros pares, apenas a soma deles
var
auxiliar, num1, num2, quantPar, contadora: inteiro
somaPar: real
inicio
ESCREVAL ("Seja bem vindo(a), usu�rio(a)!")
ESCREVAL
ESCREVAL ("Voc� ir� escolher dois n�meros e o algoritmo far� a soma de todos os valores")
ESCREVAL ("pares no intervalo desses dois n�meros.")
ESCREVAL
ESCREVAL ("Escolha o 1� N�mero")
LEIA (num1)
ESCREVAL
ESCREVAL ("Escolha o 2� N�mero")
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
ESCREVAL ("A soma dos n�meros pares � de:", somaPar)
fimalgoritmo
