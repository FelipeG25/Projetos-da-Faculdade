algoritmo "18tou"
// Função : Informar se a pessoa é maior de idade ou não
// Autor : Felipe Goulart
//Desenvolva um programa que pergunte qual é a maioridade civil do seu
//“estado/país” e que posteriormente o usuário informe sua idade.
//Como resultado, o programa deve informar se ele é ou não maior de idade.
var
maioridade_civil, idade: inteiro
inicio
ESCREVAL ("Ola usuário, seja muito bem vindo!")
ESCREVAL
ESCREVAL ("Qual seria a maioridade civil do seu país?: ")
LEIA (maioridade_civil)
ESCREVAL ("Informe a sua idade: ")
LEIA (idade)

se (maioridade_civil>idade) entao
ESCREVA ("Você não é maior de idade")
senao
se (idade>=maioridade_civil) entao
ESCREVA ("Você é maior de idade")
fimse
fimse
fimalgoritmo
