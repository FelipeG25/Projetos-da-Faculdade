algoritmo "Reprovado por um d�cimo"
// Fun��o : Pedir ao usu�rio que ele informe a nota que ele tirou na prova para saber se ele precisou de recupera��o ou n�o.
// Autor : Felipe Goulart
//Fa�a um algoritmo que solicite ao usu�rio a nota que ele tirou em uma prova.
//Caso a nota seja menor do que 7, permita que ele fa�a quantas provas de
//recupera��o forem necess�rias at� que ele atinja no m�nimo a nota 7.
//Para isso, pergunte ao usu�rio quanto ele tirou na prova de recupera��o e
//enquanto n�o informar 7 ou mais continua a repeti��o. Ao fim do algoritmo,
//indique se o estudante precisou de recupera��o, e se sim, quantas provas
//precisou fazer.
var
somaPar: inteiro
notaProva: real
inicio
ESCREVAL ("Seja bem vindo, usu�rio.")
ESCREVAL
ESCREVAL ("Informe a sua nota escolar para saber se voc� ir� precisar fazer recupera��o.")
ESCREVAL
ESCREVAL ("Informe a sua nota")
LEIA (notaProva)
ESCREVAL
se (notaProva<7.0) entao
   ESCREVAL ("Voc� ficou de recupera��o e ter� que fazer uma prova para recuperar sua nota.")
senao
   ESCREVAL ("Voc� passou de ano direto.")
fimse
ESCREVAL
enquanto (notaProva<7.0) faca
   ESCREVAL
   ESCREVAL ("Informe a nota da sua recupera��o")
   LEIA (notaProva)
   somaPar <- somaPar + 1
   ESCREVAL ("O estudante precisou fazer", somaPar," recupera��es.")
fimenquanto
fimalgoritmo
