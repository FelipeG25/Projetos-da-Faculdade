algoritmo "semnome"
// Função :
// Autor : Felipe Goulart
var
contadora, qtdepessoas: inteiro
alturaatual, alturamaxima: real
inicio
ESCREVAL ("Quantas pessoas estão no grupo?")
LEIA (qtdepessoas)
para contadora de 1 ate qtdepessoas passo 1 faca
ESCREVAL ("Qual a altura da ", contadora," segunda pessoa?")
LEIA (alturaatual)
se (alturaatual>alturamaxima) entao
alturamaxima <- alturaatual
fimse
fimpara
ESCREVAL ("A pessoa mais alta tem ", alturamaxima,"m de altura")
fimalgoritmo
