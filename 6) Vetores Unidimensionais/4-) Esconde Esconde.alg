algoritmo "Esconde Esconde"
// Função : Informar um valor inteiro e ele mostrar a posição em que foi encontrado ou se não foi encontrado.
// Autor : Felipe Goulart
//Faça uma solução que alimente um vetor com 10 valores inteiros e também
//que solicite ao usuário a entrada de dados de um valor inteiro qualquer.
//A solução deverá fazer uma busca do valor, informado pelo usuário, no vetor
//e imprima a posição em que este foi encontrado ou se não foi encontrado.
var
vetorInteiro: vetor [1..10] de inteiro
valor, contadora: inteiro
achou: logico
inicio
achou <- falso
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Informe qualquer valor inteiro")
para contadora de 1 ate 10 passo 1 faca
   LEIA (vetorInteiro[contadora])
fimpara
ESCREVAL
ESCREVAL ("Agora informe um valor aleatório.")
LEIA (valor)
ESCREVAL
para contadora de 1 ate 10 passo 1 faca
   se (valor=vetorInteiro[contadora]) entao
      ESCREVAL ("O valor ",valor," foi encontrado e está na posição ",contadora,"")
      achou <- verdadeiro
   fimse
fimpara
se (achou=falso) entao
   ESCREVAL ("O valor ",valor," não foi encontrado.")
fimse
fimalgoritmo
