algoritmo "Exemplo 3"
// Fun��o :
// Autor : Felipe Goulart
var
nome: vetor [1..4] de caractere
altura: vetor [1..4] de real
contadora, maior: inteiro
inicio
maior <- 4
para contadora de 1 ate 4 passo 1 faca
   ESCREVAL ("Digite o nome de ", contadora,"� pessoa")
   LEIA (nome[contadora])
   ESCREVAL ("Digite a altura de ", nome[contadora],":")
   LEIA (altura[contadora])
   se (altura[contadora] >= altura[maior]) entao
      maior <- contadora
   fimse
fimpara
ESCREVAL ("A pessoa mais alta � ", nome[maior],", com altura de ", altura[maior])
fimalgoritmo

//Na linha 9 (maior <- 4) o quatro ser� substitu�do pelo n�mero da pessoa que tiver a maior altura.
