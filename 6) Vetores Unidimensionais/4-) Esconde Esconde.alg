algoritmo "Esconde Esconde"
// Fun��o : Informar um valor inteiro e ele mostrar a posi��o em que foi encontrado ou se n�o foi encontrado.
// Autor : Felipe Goulart
//Fa�a uma solu��o que alimente um vetor com 10 valores inteiros e tamb�m
//que solicite ao usu�rio a entrada de dados de um valor inteiro qualquer.
//A solu��o dever� fazer uma busca do valor, informado pelo usu�rio, no vetor
//e imprima a posi��o em que este foi encontrado ou se n�o foi encontrado.
var
vetorInteiro: vetor [1..10] de inteiro
valor, contadora: inteiro
achou: logico
inicio
achou <- falso
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAL
ESCREVAL ("Informe qualquer valor inteiro")
para contadora de 1 ate 10 passo 1 faca
   LEIA (vetorInteiro[contadora])
fimpara
ESCREVAL
ESCREVAL ("Agora informe um valor aleat�rio.")
LEIA (valor)
ESCREVAL
para contadora de 1 ate 10 passo 1 faca
   se (valor=vetorInteiro[contadora]) entao
      ESCREVAL ("O valor ",valor," foi encontrado e est� na posi��o ",contadora,"")
      achou <- verdadeiro
   fimse
fimpara
se (achou=falso) entao
   ESCREVAL ("O valor ",valor," n�o foi encontrado.")
fimse
fimalgoritmo
