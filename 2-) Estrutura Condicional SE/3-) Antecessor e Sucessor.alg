algoritmo "Antecessor e Sucessor"
// Fun��o : Verificar se o antecessor/sucessor de tal n�mero est�o corretos
// Autor : Felipe Goulart
var
numInteiro, antecessor, sucessor, antecessorFinal, sucessorFinal: inteiro
inicio
ESCREVAL ("Ol� usu�rio, seja bem vindo!")
ESCREVAL
ESCREVAL ("Escolha um n�mero inteiro e o escreva aqui: ")
LEIA (numInteiro)
ESCREVAL ("Informe o antecessor do seu n�mero escolhido: ")
LEIA (antecessor)
ESCREVAL ("Informe o sucessor do seu n�mero escolhido: ")
LEIA (sucessor)
ESCREVAL

antecessorFinal <- (numInteiro) - 1
sucessorFinal <- (numInteiro) + 1

se (antecessor=antecessorFinal) entao
   ESCREVAL ("O n�mero antecessor ao seu n�mero inteiro est� correto")
senao
   ESCREVAL ("O n�mero antecessor ao seu n�mero inteiro est� incorreto")
fimse

se (sucessor=sucessorFinal) entao
   ESCREVAL ("O n�mero sucessor ao seu n�mero inteiro est� correto")
senao
   ESCREVAL ("O n�mero sucessor ao seu n�mero inteiro est� incorreto")
fimse
fimalgoritmo
