algoritmo "Soma de Matrizes"
// Função : Mostrar os valores de uma matriz 2x3 e ao final fazer a soma de todos os elementos dentro da matriz.
// Autor : Felipe Goulart.
//Faça um programa que peça os valores de uma matriz 2x3 e ao final, mostre
//na tela o total da soma de todos os elementos dessa matriz.
var
matriz: vetor [1..2,1..3] de inteiro
linhas, colunas, contadora, soma: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Você ira informar os valoras de uma matriz de 2x3 e ao final do código")
ESCREVAL ("será feito a soma de todos os números dentro dessa matriz.")
ESCREVAL
para linhas de 1 ate 2 passo 1 faca
   para colunas de 1 ate 3 passo 1 faca
      contadora <- contadora + 1
      ESCREVAL ("Informe o ",contadora,"º número:")
      LEIA (matriz[linhas,colunas])
      soma <- soma + matriz[linhas,colunas]
   fimpara
fimpara
ESCREVAL
para linhas de 1 ate 2 passo 1 faca
   para colunas de 1 ate 3 passo 1 faca
      ESCREVA (matriz[linhas,colunas])
   fimpara
   ESCREVAL ()
fimpara
ESCREVAL
ESCREVAL ("A soma final de todos os números é dê:", soma)
fimalgoritmo
