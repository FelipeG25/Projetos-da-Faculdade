algoritmo "M�mica"
// Fun��o : Fazer um algoritmo de adivinha��o onde o programa gera um n�mero aleat�rio de 1 a 50 e o usu�rio tem 5 chances de acertar
// Autor : Felipe Goulart
//Voc� foi contratado para desenvolver um programa de adivinha��o.
//O programa deve gerar um n�mero aleat�rio entre 1 e 50
//(utilize a fun��o randi() no VisualG) e o usu�rio tem 5 chances para
//tentar adivinhar esse n�mero. Se o usu�rio adivinhar, deve ser mostrado em
//tela: �Voc� ganhou! Adivinhou o n�mero secreto X!�, ou, em caso de n�o
//acertar: �Infelizmente voc� perdeu!�.
var
contadora, numero, numAleatorio: inteiro
verificador: logico
inicio
numAleatorio <- randi (50)
para contadora de 1 ate 5 passo 1 faca
   se (verificador=falso) entao
      ESCREVAL ("", contadora,"� tentativa")
      LEIA (numero)
      se (numero=numAleatorio) entao
         ESCREVAL ("Voc� ganhou! Adivinhou o n�mero secreto", numAleatorio,"")
         verificador <- verdadeiro
      senao
         ESCREVAL ("N�mero incorreto, tente novamente")
      fimse
   fimse
fimpara

ESCREVAL

se (numero<>numAleatorio) entao
   ESCREVAL ("Infelizmente voc� perdeu, o n�mero secreto era ", numAleatorio," ")
fimse
fimalgoritmo
