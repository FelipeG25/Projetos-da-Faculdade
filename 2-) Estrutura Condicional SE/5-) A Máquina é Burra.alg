algoritmo "A M�quina � Burra"
// Fun��o : Conseguir um quociente que seja �mpar e maior que 3 e conseguir o resto da divis�o com valor par.
// Autor : Felipe Goulart
var
numeroInteiro1, numeroInteiro2, quociente, resto, restoQuociente: inteiro
inicio
ESCREVAL ("Ol� usu�rio, seja bem vindo!")
ESCREVAL
ESCREVAL ("O algoritmo ir� propor um desafio para voc� escolher dois n�meros ")
ESCREVAL ("inteiros onde o algoritmo far� a divis�o inteira do primeiro n�mero ")
ESCREVAL ("pelo segundo n�mero e tamb�m informar� voc� o valor do resto da divis�o.")
ESCREVAL ("Seus objetivos s�o de conseguir um quociente de valor �mpar e que seja")
ESCREVAL ("maior que 03 e conseguir o valor do resto da divis�o com o valor par.")
ESCREVAL
ESCREVAL ("Escolha dois n�meros inteiros: ")
LEIA (numeroInteiro1, numeroInteiro2)
ESCREVAL
quociente <- (numeroInteiro1) \ (numeroInteiro2)
resto <- (numeroInteiro1) MOD (numeroInteiro2)
restoQuociente <- quociente MOD 2

ESCREVAL ("O resto �:", resto)
ESCREVAL ("O quociente �:", quociente)
ESCREVAL ("O resto do quociente �:", restoQuociente)
ESCREVAL
se (resto=0) E (quociente>3) E (restoQuociente<>0) entao
ESCREVAL ("Voc� venceu o desafio do algoritmo >:D")
senao
ESCREVAL ("Voc� perdeu o desafio do algoritmo >:C")
fimse
fimalgoritmo
