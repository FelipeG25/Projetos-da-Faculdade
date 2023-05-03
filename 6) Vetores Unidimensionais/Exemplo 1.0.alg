algoritmo "Exemplo 1.1"
// Função :
// Autor : Felipe Goulart
var
nomePessoa: vetor [1..5] de caractere
opcao: inteiro
inicio
nomePessoa[1] <- "Estevão Rogério."
nomePessoa[2] <- "Antônio Forte."
nomePessoa[3] <- "Pedro Estacionador."
nomePessoa[4] <- "Carlos Xavier."
nomePessoa[5] <- "Joãozinho Tempestade."

ESCREVAL ("De qual pessoa você deseja ver o nome?")
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

//Dá para colocar vários nomes em uma só linha.

