algoritmo "Mímica"
// Função : Fazer um algoritmo de adivinhação onde o programa gera um número aleatório de 1 a 50 e o usuário tem 5 chances de acertar
// Autor : Felipe Goulart
//Você foi contratado para desenvolver um programa de adivinhação.
//O programa deve gerar um número aleatório entre 1 e 50
//(utilize a função randi() no VisualG) e o usuário tem 5 chances para
//tentar adivinhar esse número. Se o usuário adivinhar, deve ser mostrado em
//tela: “Você ganhou! Adivinhou o número secreto X!”, ou, em caso de não
//acertar: “Infelizmente você perdeu!”.
var
contadora, numero, numAleatorio: inteiro
verificador: logico
inicio
numAleatorio <- randi (50)
para contadora de 1 ate 5 passo 1 faca
   se (verificador=falso) entao
      ESCREVAL ("", contadora,"º tentativa")
      LEIA (numero)
      se (numero=numAleatorio) entao
         ESCREVAL ("Você ganhou! Adivinhou o número secreto", numAleatorio,"")
         verificador <- verdadeiro
      senao
         ESCREVAL ("Número incorreto, tente novamente")
      fimse
   fimse
fimpara

ESCREVAL

se (numero<>numAleatorio) entao
   ESCREVAL ("Infelizmente você perdeu, o número secreto era ", numAleatorio," ")
fimse
fimalgoritmo
