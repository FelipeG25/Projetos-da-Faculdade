algoritmo "S� os Velho"
// Fun��o : Informar a idade de 12 pessoas e mostrar quais delas tem 18 anos ou mais.
// Autor : Felipe Goulart
//Fa�a um programa que pe�a ao usu�rio a idade de 12 pessoas e mostre
//na tela quantas dessas pessoas tem 18 anos ou mais.
var
contadora, idade, idadeAlta, quant18: inteiro
inicio
ESCREVAL ("Seja bem vindo(a), usu�rio(a)!")
ESCREVAL
ESCREVAL ("Informe a idade de 12 pessoas e o algoritmo ir� dizer quais delas tem")
ESCREVAL ("18 anos ou mais.")
ESCREVAL
para contadora de 1 ate 12 passo 1 faca
   ESCREVAL ("Informe a idade da", contadora,"� pessoa")
   LEIA (idade)
   se (idade>=18) entao
      quant18 <- quant18 + 1
   fimse
fimpara
ESCREVAL
se (quant18=12) entao
   ESCREVAL ("Todas as pessoas tem mais de 18 anos")
senao
   se (quant18=0) entao
      ESCREVAL ("Todas as pessoas tem menos de 18 anos")
   senao
      ESCREVAL ("O total de pessoas que tem 18 anos ou mais �:", quant18)
   fimse
fimse
fimalgoritmo
