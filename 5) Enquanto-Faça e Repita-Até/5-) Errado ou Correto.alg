algoritmo "Errado ou Correto"
// Fun��o : Pedir ao usu�rio dois n�meros que enquanto ele n�o acertar a soma dos dois ele ficara tentando novamente at� acertar.
// Autor : Felipe Goulart
//Fa�a um programa que pe�a ao usu�rio dois n�meros. Ap�s, enquanto ele n�o
//digitar o resultado correto da soma desses dois n�meros, mostre na
//tela �tente novamente�, quando acertar �resultado correto!�.
var
num1, num2, soma, somaNumero: inteiro
inicio
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAL
ESCREVAL ("Voc� ira informar dois n�meros e enquanto n�o acertar eles, ficar� tentando")
ESCREVAL ("novamente.")
ESCREVAL
ESCREVAL ("Informe o primeiro n�mero")
LEIA (num1)
ESCREVAL ("Informe o segundo n�mero")
LEIA (num2)
repita
   ESCREVAL ("Qual a soma deles?")
   LEIA (soma)
   somaNumero <- num1 + num2
   se (soma<>somaNumero) entao
      ESCREVAL
      ESCREVAL ("Voc� errou, tente novamente.")
   fimse
   se (soma=somaNumero) entao
      ESCREVAL ("Voc� acertou!")
   fimse
ate (soma=somaNumero)
fimalgoritmo
