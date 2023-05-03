algoritmo "Walmart"
// Função : Mostrar o total de vendas do semestre e o total vendido em cada mês.
// Autor : Felipe Goulart.
//Faça um programa que carregue os valores das vendas de uma loja no
//primeiro semestre de 2018. Considere para tal, uma matriz [6,4], sendo
//que são 06 meses e 04 semanas por mês. Ao final, mostre na tela:

//Total de vendas do semestre
//Total vendido em cada mês
var
matriz: vetor [1..6,1..4] de inteiro
linhas, colunas, contadora: inteiro
somaSemestre: real
somaMes: vetor [1..6] de inteiro
inicio
para linhas de 1 ate 6 passo 1 faca
   para colunas de 1 ate 4 passo 1 faca
      contadora <- contadora + 1
      ESCREVAL ("Informe os valores do",linhas,"º mês.")
      ESCREVAL ("Informe os valores da",colunas,"º semana.")
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
ESCREVAL ("A soma do mês ",linhas,": ",somaMes[linhas],"")
fimpara
ESCREVAL
ESCREVAL ("A soma de vendas totais do semestre é dê: R$", somaSemestre:2:2)
fimalgoritmo
