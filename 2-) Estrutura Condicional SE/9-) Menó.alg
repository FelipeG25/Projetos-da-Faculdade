algoritmo "Men�"
// Fun��o : Informar tr�s n�meros e mostrar o menos entre eles.
// Autor : Felipe Goulart
//Fa�a um programa que pe�a ao usu�rio para informar 03 n�meros e mostre o
//menor entre eles. Considere que o usu�rio n�o poder� informar n�meros iguais.
var
numero1, numero2, numero3: inteiro
inicio
ESCREVAL ("Ol� usu�rio, seja bem vindo")
ESCREVAL
ESCREVAL ("Voc� dever� informar tr�s n�meros para o programa poder dizer qual o menor")
ESCREVAL ("n�mero entre eles")
ESCREVAL
ESCREVAL ("Informe o primeiro n�mero:")
LEIA (numero1)
ESCREVAL ("Informe o segundo n�mero:")
LEIA (numero2)
ESCREVAL ("Informe o terceiro n�mero:")
LEIA (numero3)

se (numero1=numero2) OU (numero2=numero3) OU (numero1=numero3) entao
   ESCREVAL ("Existem n�meros repetidos, tente novamente")
senao
   se (numero1<numero2) E (numero1<numero3) entao
      ESCREVAL ("O menor n�mero � o n�mero:", numero1)
   senao
      se (numero2<numero1) E (numero2<numero3) entao
         ESCREVAL ("O menor n�mero � o n�mero:", numero2)
      senao
         ESCREVAL ("O menor n�mero � o n�mero:", numero3)
      fimse
   fimse
fimse
fimalgoritmo
