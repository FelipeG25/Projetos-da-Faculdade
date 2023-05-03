algoritmo "Exemplo 3"
// Função :
// Autor : Felipe Goulart
var
nome: vetor [1..4] de caractere
altura: vetor [1..4] de real
contadora, maior: inteiro
inicio
maior <- 4
para contadora de 1 ate 4 passo 1 faca
   ESCREVAL ("Digite o nome de ", contadora,"ª pessoa")
   LEIA (nome[contadora])
   ESCREVAL ("Digite a altura de ", nome[contadora],":")
   LEIA (altura[contadora])
   se (altura[contadora] >= altura[maior]) entao
      maior <- contadora
   fimse
fimpara
ESCREVAL ("A pessoa mais alta é ", nome[maior],", com altura de ", altura[maior])
fimalgoritmo

//Na linha 9 (maior <- 4) o quatro será substituído pelo número da pessoa que tiver a maior altura.
