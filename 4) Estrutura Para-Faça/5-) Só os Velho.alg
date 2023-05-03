algoritmo "Só os Velho"
// Função : Informar a idade de 12 pessoas e mostrar quais delas tem 18 anos ou mais.
// Autor : Felipe Goulart
//Faça um programa que peça ao usuário a idade de 12 pessoas e mostre
//na tela quantas dessas pessoas tem 18 anos ou mais.
var
contadora, idade, idadeAlta, quant18: inteiro
inicio
ESCREVAL ("Seja bem vindo(a), usuário(a)!")
ESCREVAL
ESCREVAL ("Informe a idade de 12 pessoas e o algoritmo irá dizer quais delas tem")
ESCREVAL ("18 anos ou mais.")
ESCREVAL
para contadora de 1 ate 12 passo 1 faca
   ESCREVAL ("Informe a idade da", contadora,"º pessoa")
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
      ESCREVAL ("O total de pessoas que tem 18 anos ou mais é:", quant18)
   fimse
fimse
fimalgoritmo
