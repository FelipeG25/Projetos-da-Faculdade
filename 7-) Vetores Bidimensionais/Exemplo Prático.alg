algoritmo "Exemplo Prático"
// Função :
// Autor : Felipe Goulart.
var
linhas, colunas, contadora: inteiro
matriz: vetor [1..2,1..3] de caractere
inicio
para linhas de 1 ate 2 passo 1 faca
   para colunas de 1 ate 3 passo 1 faca
      contadora <- contadora + 1
      ESCREVAL ("Informe ",contadora,"º nome")
      LEIA (matriz[linhas,colunas])
   fimpara
fimpara
ESCREVAL
para linhas de 1 ate 2 passo 1 faca
   para colunas de 1 ate 3 passo 1 faca
      ESCREVA (matriz[linhas,colunas], " ")
   fimpara
   ESCREVAL ()
fimpara
fimalgoritmo
