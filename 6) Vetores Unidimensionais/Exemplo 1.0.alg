algoritmo "Exemplo 1.1"
// Fun��o :
// Autor : Felipe Goulart
var
nomePessoa: vetor [1..5] de caractere
opcao: inteiro
inicio
nomePessoa[1] <- "Estev�o Rog�rio."
nomePessoa[2] <- "Ant�nio Forte."
nomePessoa[3] <- "Pedro Estacionador."
nomePessoa[4] <- "Carlos Xavier."
nomePessoa[5] <- "Jo�ozinho Tempestade."

ESCREVAL ("De qual pessoa voc� deseja ver o nome?")
LEIA (opcao)

escolha (opcao)
caso 1
   ESCREVAL (nomePessoa[1])
caso 2
   ESCREVAL (nomePessoa[2])
caso 3
   ESCREVAL (nomePessoa[3])
caso 4
   ESCREVAL (nomePessoa[4])
caso 5
   ESCREVAL (nomePessoa[5])
fimescolha
fimalgoritmo

//D� para colocar v�rios nomes em uma s� linha.

