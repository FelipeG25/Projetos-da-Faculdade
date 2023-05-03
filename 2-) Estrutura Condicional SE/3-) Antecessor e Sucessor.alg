algoritmo "Antecessor e Sucessor"
// Função : Verificar se o antecessor/sucessor de tal número estão corretos
// Autor : Felipe Goulart
var
numInteiro, antecessor, sucessor, antecessorFinal, sucessorFinal: inteiro
inicio
ESCREVAL ("Olá usuário, seja bem vindo!")
ESCREVAL
ESCREVAL ("Escolha um número inteiro e o escreva aqui: ")
LEIA (numInteiro)
ESCREVAL ("Informe o antecessor do seu número escolhido: ")
LEIA (antecessor)
ESCREVAL ("Informe o sucessor do seu número escolhido: ")
LEIA (sucessor)
ESCREVAL

antecessorFinal <- (numInteiro) - 1
sucessorFinal <- (numInteiro) + 1

se (antecessor=antecessorFinal) entao
   ESCREVAL ("O número antecessor ao seu número inteiro está correto")
senao
   ESCREVAL ("O número antecessor ao seu número inteiro está incorreto")
fimse

se (sucessor=sucessorFinal) entao
   ESCREVAL ("O número sucessor ao seu número inteiro está correto")
senao
   ESCREVAL ("O número sucessor ao seu número inteiro está incorreto")
fimse
fimalgoritmo
