algoritmo "Menó"
// Função : Informar três números e mostrar o menos entre eles.
// Autor : Felipe Goulart
//Faça um programa que peça ao usuário para informar 03 números e mostre o
//menor entre eles. Considere que o usuário não poderá informar números iguais.
var
numero1, numero2, numero3: inteiro
inicio
ESCREVAL ("Olá usuário, seja bem vindo")
ESCREVAL
ESCREVAL ("Você deverá informar três números para o programa poder dizer qual o menor")
ESCREVAL ("número entre eles")
ESCREVAL
ESCREVAL ("Informe o primeiro número:")
LEIA (numero1)
ESCREVAL ("Informe o segundo número:")
LEIA (numero2)
ESCREVAL ("Informe o terceiro número:")
LEIA (numero3)

se (numero1=numero2) OU (numero2=numero3) OU (numero1=numero3) entao
   ESCREVAL ("Existem números repetidos, tente novamente")
senao
   se (numero1<numero2) E (numero1<numero3) entao
      ESCREVAL ("O menor número é o número:", numero1)
   senao
      se (numero2<numero1) E (numero2<numero3) entao
         ESCREVAL ("O menor número é o número:", numero2)
      senao
         ESCREVAL ("O menor número é o número:", numero3)
      fimse
   fimse
fimse
fimalgoritmo
