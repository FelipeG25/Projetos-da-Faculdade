algoritmo "Reprovado por um décimo"
// Função : Pedir ao usuário que ele informe a nota que ele tirou na prova para saber se ele precisou de recuperação ou não.
// Autor : Felipe Goulart
//Faça um algoritmo que solicite ao usuário a nota que ele tirou em uma prova.
//Caso a nota seja menor do que 7, permita que ele faça quantas provas de
//recuperação forem necessárias até que ele atinja no mínimo a nota 7.
//Para isso, pergunte ao usuário quanto ele tirou na prova de recuperação e
//enquanto não informar 7 ou mais continua a repetição. Ao fim do algoritmo,
//indique se o estudante precisou de recuperação, e se sim, quantas provas
//precisou fazer.
var
somaPar: inteiro
notaProva: real
inicio
ESCREVAL ("Seja bem vindo, usuário.")
ESCREVAL
ESCREVAL ("Informe a sua nota escolar para saber se você irá precisar fazer recuperação.")
ESCREVAL
ESCREVAL ("Informe a sua nota")
LEIA (notaProva)
ESCREVAL
se (notaProva<7.0) entao
   ESCREVAL ("Você ficou de recuperação e terá que fazer uma prova para recuperar sua nota.")
senao
   ESCREVAL ("Você passou de ano direto.")
fimse
ESCREVAL
enquanto (notaProva<7.0) faca
   ESCREVAL
   ESCREVAL ("Informe a nota da sua recuperação")
   LEIA (notaProva)
   somaPar <- somaPar + 1
   ESCREVAL ("O estudante precisou fazer", somaPar," recuperações.")
fimenquanto
fimalgoritmo
