algoritmo "Exemplo 1.1"
// Função :
// Autor : Felipe Goulart
var
nomePessoa: vetor [1..5] de caractere
contadora: inteiro
inicio
nomePessoa[1] <- "Estevão Rogério."
nomePessoa[2] <- "Antônio Forte."
nomePessoa[3] <- "Pedro Estacionador."
nomePessoa[4] <- "Carlos Xavier."
nomePessoa[5] <- "Joãozinho Tempestade."

para contadora de 1 ate 5 passo 1 faca
   ESCREVAL ("Digite o nome da ",contadora,"ª pessoa:")
   LEIA (nomepessoa[contadora])
fimpara
ESCREVAL
ESCREVAL ("1ª pessoa: ", nomePessoa[1])
ESCREVAL ("2ª pessoa: ", nomePessoa[2])
ESCREVAL ("3ª pessoa: ", nomePessoa[3])
ESCREVAL ("4ª pessoa: ", nomePessoa[4])
ESCREVAL ("5ª pessoa: ", nomePessoa[5])

ESCREVAL

ESCREVAL ("5ª pessoa: ", nomePessoa[5])
ESCREVAL ("4ª pessoa: ", nomePessoa[4])
ESCREVAL ("3ª pessoa: ", nomePessoa[3])
ESCREVAL ("2ª pessoa: ", nomePessoa[2])
ESCREVAL ("1ª pessoa: ", nomePessoa[1])
fimalgoritmo

//Dá para colocar vários nomes em uma só linha.

