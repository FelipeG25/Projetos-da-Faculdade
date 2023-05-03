algoritmo "Xadrez Enade"
// Função :
// Autor : Felipe Goulart.
//Considerando o tabuleiro 4 x 4 ilustrado acima, contendo a indicação da ordem das casas, construa um único algoritmo que:

//A. calcule, armazene em uma estrutura e escreva em ordem a quantidade de grãos de trigo em cada casa do tabuleiro;
//B. calcule, armazene em uma variável e escreva a quantidade total de grãos de trigo presentes no tabuleiro.
//Utilize vetores para armazenar os valores de cada posição do tabuleiro.
//As questões A e B devem ser demonstradas no código do programa.
var
matriz: vetor [1..4,1..4] de real
linhas, colunas: inteiro
primeiraCasa, ultimaCasa, soma: real
inicio
primeiraCasa <- 0.5
ultimaCasa <- primeiraCasa
para linhas de 1 ate 4 faca
   para colunas de 1 ate 4 faca
      matriz[linhas,colunas] <- ultimaCasa * 2
      ultimaCasa <- matriz[linhas,colunas]
      soma <- soma + matriz[linhas,colunas]
   fimpara
fimpara
para linhas de 1 ate 4 faca
   para colunas de 1 ate 4 faca
      ESCREVA (matriz[linhas,colunas])
   fimpara
   ESCREVAL ()
fimpara
ESCREVAL
ESCREVAL ("A soma de todos os grãos é dê:",soma)
fimalgoritmo
