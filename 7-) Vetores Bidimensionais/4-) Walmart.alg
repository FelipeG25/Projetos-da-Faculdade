algoritmo "Walmart"
// Fun��o : Mostrar o total de vendas do semestre e o total vendido em cada m�s.
// Autor : Felipe Goulart.
//Fa�a um programa que carregue os valores das vendas de uma loja no
//primeiro semestre de 2018. Considere para tal, uma matriz [6,4], sendo
//que s�o 06 meses e 04 semanas por m�s. Ao final, mostre na tela:

//Total de vendas do semestre
//Total vendido em cada m�s
var
matriz: vetor [1..6,1..4] de inteiro
linhas, colunas, contadora: inteiro
somaSemestre: real
somaMes: vetor [1..6] de inteiro
inicio
para linhas de 1 ate 6 passo 1 faca
   para colunas de 1 ate 4 passo 1 faca
      contadora <- contadora + 1
      ESCREVAL ("Informe os valores do",linhas,"� m�s.")
      ESCREVAL ("Informe os valores da",colunas,"� semana.")
      LEIA (matriz[linhas,colunas])
      somaSemestre <- somaSemestre + matriz[linhas,colunas]
   fimpara
fimpara
ESCREVAL
//para linhas de 1 ate 6 passo 1 faca
//para colunas de 1 ate 4 passo 1 faca
//ESCREVA (matriz[linhas,colunas])
//fimpara
//ESCREVAL ()
//fimpara
ESCREVAL
para linhas de 1 ate 6 passo 1 faca
   para colunas de 1 ate 4 passo 1 faca
      somaMes[linhas] <- somaMes[linhas] + matriz[linhas,colunas]
   fimpara
fimpara
ESCREVAL
para linhas de 1 ate 6 passo 1 faca
ESCREVAL ("A soma do m�s ",linhas,": ",somaMes[linhas],"")
fimpara
ESCREVAL
ESCREVAL ("A soma de vendas totais do semestre � d�: R$", somaSemestre:2:2)
fimalgoritmo
