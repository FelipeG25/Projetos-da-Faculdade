algoritmo "Prova Surpresa"
// Fun��o :
// Autor : Felipe Goulart
//Fa�a um programa que pe�a o gabarito de uma prova com 10 quest�es para o aluno,
//sendo que ele deve informar a, b, c ou d como resposta para cada quest�o.
//Ao final, em um outro vetor, voc� pedir� ao professor que informe as
//respostas corretas dessa prova. Ao final, mostre na tela quantos pontos o
//aluno atingiu nessa prova, considerando que cada quest�o vale 1 ponto.
var
gabarito: vetor [1..10] de caractere
contadora, pontosTotais: inteiro
respostaProva: vetor [1..10] de caractere
inicio
ESCREVAL ("Seja bem vindo, estudante!")
ESCREVAL
ESCREVAL ("Voc� fez uma prova e agora ter� que passar as suas respostas para o gabarito.")
ESCREVAL
para contadora de 1 ate 10 passo 1 faca
   ESCREVAL ("Informe a resposta da ",contadora,"� quest�o:")
   LEIA (gabarito[contadora])
   enquanto (gabarito[contadora]<>"a") E (gabarito[contadora]<>"b") E (gabarito[contadora]<>"c") E (gabarito[contadora]<>"d") faca
      ESCREVAL ("Op��o inv�lida, porfavor digite uma op��o v�lida (a,b,c,d),")
      LEIA (gabarito[contadora])
   fimenquanto
fimpara
ESCREVAL
para contadora de 1 ate 10 passo 1 faca
   ESCREVAL ("Informe a corre��o da ",contadora,"� quest�o.")
   LEIA (respostaProva[contadora])
   enquanto (respostaProva[contadora]<>"a") E (respostaProva[contadora]<>"b") E (respostaProva[contadora]<>"c") E (respostaProva[contadora]<>"d") faca
      ESCREVAL ("Op��o inv�lida, porfavor digite uma op��o v�lida (a,b,c,d),")
      LEIA (respostaProva[contadora])
   fimenquanto
fimpara
ESCREVAL
para contadora de 1 ate 10 passo 1 faca
   se (gabarito[contadora]) = (respostaProva[contadora]) entao
      pontosTotais <- pontosTotais + 1
   fimse
fimpara
ESCREVAL ("O aluno(a) acertou um total de:",pontosTotais," pontos.")
fimalgoritmo
