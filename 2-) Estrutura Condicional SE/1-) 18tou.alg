algoritmo "18tou"
// Fun��o : Informar se a pessoa � maior de idade ou n�o
// Autor : Felipe Goulart
//Desenvolva um programa que pergunte qual � a maioridade civil do seu
//�estado/pa�s� e que posteriormente o usu�rio informe sua idade.
//Como resultado, o programa deve informar se ele � ou n�o maior de idade.
var
maioridade_civil, idade: inteiro
inicio
ESCREVAL ("Ola usu�rio, seja muito bem vindo!")
ESCREVAL
ESCREVAL ("Qual seria a maioridade civil do seu pa�s?: ")
LEIA (maioridade_civil)
ESCREVAL ("Informe a sua idade: ")
LEIA (idade)

se (maioridade_civil>idade) entao
ESCREVA ("Voc� n�o � maior de idade")
senao
se (idade>=maioridade_civil) entao
ESCREVA ("Voc� � maior de idade")
fimse
fimse
fimalgoritmo
