algoritmo "Na Linha"
// Fun��o :
// Autor : Felipe Goulart.
//Fa�a um programa que pe�a os valores inteiros para uma matriz 3x3 e pe�a
//ao usu�rio qual o n�mero da linha que ele deseja ver os valores e mostre
//na tela somente essa linha.
var
matriz: vetor [1..3,1..3] de inteiro
linhas, colunas, contadora, pesquisaLinha: inteiro
inicio
para linhas de 1 ate 3 passo 1 faca
   para colunas de 1 ate 3 passo 1 faca
      contadora <- contadora + 1
      ESCREVAL ("Informe o ",contadora,"� n�mero:")
      LEIA (matriz[linhas,colunas])
   fimpara
fimpara
ESCREVAL
ESCREVAL ("Qual linha voc� deseja ver?")
ESCREVAL
ESCREVAL ("Informe 1 para a primeira linha.")
ESCREVAL ("Informe 2 para a segunda linha.")
ESCREVAL ("Informe 3 para a terceira linha.")
LEIA (pesquisaLinha)
enquanto (pesquisaLinha<>1) E (pesquisaLinha<>2) E (pesquisaLinha<>3) faca
   ESCREVAL ("Voc� informou um n�mero incorreto, por favor tente novamente:")
   LEIA (pesquisaLinha)
fimenquanto
ESCREVAL
para colunas de 1 ate 3 passo 1 faca
   escreva (matriz[pesquisaLinha,colunas])
fimpara
fimalgoritmo
