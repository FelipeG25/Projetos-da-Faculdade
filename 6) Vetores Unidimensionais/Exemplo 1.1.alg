algoritmo "Exemplo 1.1"
// Fun��o :
// Autor : Felipe Goulart
var
nomePessoa: vetor [1..5] de caractere
contadora: inteiro
inicio
nomePessoa[1] <- "Estev�o Rog�rio."
nomePessoa[2] <- "Ant�nio Forte."
nomePessoa[3] <- "Pedro Estacionador."
nomePessoa[4] <- "Carlos Xavier."
nomePessoa[5] <- "Jo�ozinho Tempestade."

para contadora de 1 ate 5 passo 1 faca
   ESCREVAL ("Digite o nome da ",contadora,"� pessoa:")
   LEIA (nomepessoa[contadora])
fimpara
ESCREVAL
ESCREVAL ("1� pessoa: ", nomePessoa[1])
ESCREVAL ("2� pessoa: ", nomePessoa[2])
ESCREVAL ("3� pessoa: ", nomePessoa[3])
ESCREVAL ("4� pessoa: ", nomePessoa[4])
ESCREVAL ("5� pessoa: ", nomePessoa[5])

ESCREVAL

ESCREVAL ("5� pessoa: ", nomePessoa[5])
ESCREVAL ("4� pessoa: ", nomePessoa[4])
ESCREVAL ("3� pessoa: ", nomePessoa[3])
ESCREVAL ("2� pessoa: ", nomePessoa[2])
ESCREVAL ("1� pessoa: ", nomePessoa[1])
fimalgoritmo

//D� para colocar v�rios nomes em uma s� linha.

