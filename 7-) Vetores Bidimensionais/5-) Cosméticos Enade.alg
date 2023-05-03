algoritmo "Cosméticos Enade"
// Função :
// Autor : Felipe Goulart.
var
matrizEstante: vetor [1..5,1..5] de inteiro
produtos: vetor [0..5] de caractere
linhas, colunas, contadora: inteiro
contador: vetor [0..5] de inteiro
//Aqui eu atribuí 6 tipos de variáveis, a que eu mais usei foi as variáveis do tipo inteiro.
//Eu usei matrizEstante como uma matriz de 5x5, como pedia o exercício. Também usei as variáveis
//linhas, colunas e contadora e um vetor definido como contador de 0 a 5.
//Todas as variáveis que eu falei a cima foram definidas como valor inteiro.
//Eu usei no exercício uma variável do tipo vetor definida como produtos de 0 a 5 como caractere.
inicio
produtos[0] <- "Vazio"
produtos[1] <- "Xampu"
produtos[2] <- "Condicionador"
produtos[3] <- "Hidratante"
produtos[4] <- "Tintura"
produtos[5] <- "Demaquilante"
//Aqui eu atribuí a variável produtos de 0 a 5 para cada tipo de item que mostrava no exercício.
ESCREVAL ("Seja bem vindo ao Cosméticos Enade!")
ESCREVAL
ESCREVAL ("Produtos a serem inseridos na estante:")
ESCREVAL ("0-Vazio.")
ESCREVAL ("1-Xampu.")
ESCREVAL ("2-Condicionador.")
ESCREVAL ("3-Hidratante.")
ESCREVAL ("4-Tintura.")
ESCREVAL ("5-Demaquilante.")
//Acima eu fiz um menu para o usuário não se perder quando ver o código
//e também para auxiliar quando forem utilizar o código.
ESCREVAL
para linhas de 1 ate 5 passo 1 faca
   para colunas de 1 ate 5 passo 1 faca
      ESCREVAL ("Insira o produto na posição [",linhas, ",", colunas," ] da estante.")
      LEIA (matrizEstante[linhas,colunas])
      //Aqui eu usei duas estruturas para-faça, ambos para lerem a linha e a coluna da matriz 5x5 e pedi para
      //o usuário inserir o produto na posição em que ele quisesse que o produto ficasse.
      enquanto (matrizEstante[linhas,colunas] <> 0) E (matrizEstante[linhas,colunas] <> 1) E (matrizEstante[linhas,colunas] <> 2) E (matrizEstante[linhas,colunas] <> 3) E (matrizEstante[linhas,colunas] <> 4) E (matrizEstante[linhas,colunas] <> 5) faca
         ESCREVAL ("O produto que você informou é inválido ou não existe.")
         ESCREVAL ("Por favor tente novamente:")
         LEIA (matrizEstante[linhas,colunas])
      fimenquanto
      //Aqui eu utilizei a estrutura enquanto-faça para servir como um verificador, para saber
      //se o usuário informar um número de produto incorreto, ele só ira continuar
      //a rodar o programa se o usuário informar um número correto.
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
      //Logo a cima eu utilizei a estrutura escolha-caso para caso um número de 0 a 5
      //for escolhido, ele contar e mostrar ao final quantos números de 0 a 5 foram digitados pelo usuário.
   fimpara
fimpara
//Aqui eu fecho as duas estruturas para-faça.
ESCREVAL
para contadora de 0 ate 5 passo 1 faca
   ESCREVAL ("O produto ",produtos[contadora]," contêm ",contador[contadora],".")
fimpara
//Aqui eu utilizei uma estrutura para-faça para mostrar a quantidade de cada produto
//que o usuário escolheu lá encima onde o código vai informar o nome do produto e a
//quantidade escolhida pelo usuário.
fimalgoritmo
