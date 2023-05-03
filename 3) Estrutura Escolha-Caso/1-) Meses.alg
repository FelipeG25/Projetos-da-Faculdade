algoritmo "Meses"
// Função : Mostrar o mês correspondente ao valor informado
// Autor : Felipe Goulart
//Desenvolva um algoritmo em que o usuário informe um número de 1 a 12 e o
//programa mostre o mês correspondente ao valor informado.
var
numero: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Informe um número de 1 a 12 onde o programa irá mostrar o mês correspondende")
ESCREVAL ("ao valor informado")
LEIA (numero)

escolha (numero)
caso 1
   escreva ("Janeiro")
caso 2
   escreva ("Fevereiro")
caso 3
   escreva ("Março")
caso 4
   escreva ("Abril")
caso 5
   escreva ("Maio")
caso 6
   escreva ("Junho")
caso 7
   escreva ("Julho")
caso 8
   escreva ("Agosto")
caso 9
   escreva ("Setembro")
caso 10
   escreva ("Outubro")
caso 11
   escreva ("Novembro")
caso 12
   escreva ("Dezembro")
outrocaso
   escreva ("Mês informado inexistente")
fimescolha
fimalgoritmo
