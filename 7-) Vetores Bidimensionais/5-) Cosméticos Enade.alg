algoritmo "Cosm�ticos Enade"
// Fun��o :
// Autor : Felipe Goulart.
var
matrizEstante: vetor [1..5,1..5] de inteiro
produtos: vetor [0..5] de caractere
linhas, colunas, contadora: inteiro
contador: vetor [0..5] de inteiro
//Aqui eu atribu� 6 tipos de vari�veis, a que eu mais usei foi as vari�veis do tipo inteiro.
//Eu usei matrizEstante como uma matriz de 5x5, como pedia o exerc�cio. Tamb�m usei as vari�veis
//linhas, colunas e contadora e um vetor definido como contador de 0 a 5.
//Todas as vari�veis que eu falei a cima foram definidas como valor inteiro.
//Eu usei no exerc�cio uma vari�vel do tipo vetor definida como produtos de 0 a 5 como caractere.
inicio
produtos[0] <- "Vazio"
produtos[1] <- "Xampu"
produtos[2] <- "Condicionador"
produtos[3] <- "Hidratante"
produtos[4] <- "Tintura"
produtos[5] <- "Demaquilante"
//Aqui eu atribu� a vari�vel produtos de 0 a 5 para cada tipo de item que mostrava no exerc�cio.
ESCREVAL ("Seja bem vindo ao Cosm�ticos Enade!")
ESCREVAL
ESCREVAL ("Produtos a serem inseridos na estante:")
ESCREVAL ("0-Vazio.")
ESCREVAL ("1-Xampu.")
ESCREVAL ("2-Condicionador.")
ESCREVAL ("3-Hidratante.")
ESCREVAL ("4-Tintura.")
ESCREVAL ("5-Demaquilante.")
//Acima eu fiz um menu para o usu�rio n�o se perder quando ver o c�digo
//e tamb�m para auxiliar quando forem utilizar o c�digo.
ESCREVAL
para linhas de 1 ate 5 passo 1 faca
   para colunas de 1 ate 5 passo 1 faca
      ESCREVAL ("Insira o produto na posi��o [",linhas, ",", colunas," ] da estante.")
      LEIA (matrizEstante[linhas,colunas])
      //Aqui eu usei duas estruturas para-fa�a, ambos para lerem a linha e a coluna da matriz 5x5 e pedi para
      //o usu�rio inserir o produto na posi��o em que ele quisesse que o produto ficasse.
      enquanto (matrizEstante[linhas,colunas] <> 0) E (matrizEstante[linhas,colunas] <> 1) E (matrizEstante[linhas,colunas] <> 2) E (matrizEstante[linhas,colunas] <> 3) E (matrizEstante[linhas,colunas] <> 4) E (matrizEstante[linhas,colunas] <> 5) faca
         ESCREVAL ("O produto que voc� informou � inv�lido ou n�o existe.")
         ESCREVAL ("Por favor tente novamente:")
         LEIA (matrizEstante[linhas,colunas])
      fimenquanto
      //Aqui eu utilizei a estrutura enquanto-fa�a para servir como um verificador, para saber
      //se o usu�rio informar um n�mero de produto incorreto, ele s� ira continuar
      //a rodar o programa se o usu�rio informar um n�mero correto.
      escolha (matrizEstante[linhas,colunas])
      caso 0
         contador[0] <- contador[0] + 1
      caso 1
         contador[1] <- contador[1] + 1
      caso 2
         contador[2] <- contador[2] + 1
      caso 3
         contador[3] <- contador[3] + 1
      caso 4
         contador[4] <- contador[4] + 1
      caso 5
         contador[5] <- contador[5] + 1
      fimescolha
      //Logo a cima eu utilizei a estrutura escolha-caso para caso um n�mero de 0 a 5
      //for escolhido, ele contar e mostrar ao final quantos n�meros de 0 a 5 foram digitados pelo usu�rio.
   fimpara
fimpara
//Aqui eu fecho as duas estruturas para-fa�a.
ESCREVAL
para contadora de 0 ate 5 passo 1 faca
   ESCREVAL ("O produto ",produtos[contadora]," cont�m ",contador[contadora],".")
fimpara
//Aqui eu utilizei uma estrutura para-fa�a para mostrar a quantidade de cada produto
//que o usu�rio escolheu l� encima onde o c�digo vai informar o nome do produto e a
//quantidade escolhida pelo usu�rio.
fimalgoritmo
