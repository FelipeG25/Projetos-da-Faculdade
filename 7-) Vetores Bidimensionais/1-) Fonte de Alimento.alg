algoritmo "Fonte de Alimento"
// Função : Fazer uma matriz 2x2 e mostrar ela ao final do algoritmo.
// Autor : Felipe Goulart.
//Faça um algoritmo que alimente uma matriz 2x2 e mostre em tela a matriz
//ao final.
var
matriz: vetor [1..2,1..2] de inteiro
linhas, colunas: inteiro
inicio
para linhas de 1 ate 2 passo 1 faca
   para colunas de 1 ate 2 passo 1 faca
      ESCREVAL ("Informe um número")
      LEIA (matriz[linhas,colunas])
   fimpara
fimpara
ESCREVAL
para linhas de 1 ate 2 passo 1 faca
   para colunas de 1 ate 2 passo 1 faca
      ESCREVA (matriz[linhas,colunas], " ")
   fimpara
   ESCREVAL ()
fimpara
fimalgoritmo
