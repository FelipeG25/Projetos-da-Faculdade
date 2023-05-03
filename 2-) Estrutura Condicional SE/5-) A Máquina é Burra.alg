algoritmo "A Máquina é Burra"
// Função : Conseguir um quociente que seja ímpar e maior que 3 e conseguir o resto da divisão com valor par.
// Autor : Felipe Goulart
var
numeroInteiro1, numeroInteiro2, quociente, resto, restoQuociente: inteiro
inicio
ESCREVAL ("Olá usuário, seja bem vindo!")
ESCREVAL
ESCREVAL ("O algoritmo irá propor um desafio para você escolher dois números ")
ESCREVAL ("inteiros onde o algoritmo fará a divisão inteira do primeiro número ")
ESCREVAL ("pelo segundo número e também informará você o valor do resto da divisão.")
ESCREVAL ("Seus objetivos são de conseguir um quociente de valor ímpar e que seja")
ESCREVAL ("maior que 03 e conseguir o valor do resto da divisão com o valor par.")
ESCREVAL
ESCREVAL ("Escolha dois números inteiros: ")
LEIA (numeroInteiro1, numeroInteiro2)
ESCREVAL
quociente <- (numeroInteiro1) \ (numeroInteiro2)
resto <- (numeroInteiro1) MOD (numeroInteiro2)
restoQuociente <- quociente MOD 2

ESCREVAL ("O resto é:", resto)
ESCREVAL ("O quociente é:", quociente)
ESCREVAL ("O resto do quociente é:", restoQuociente)
ESCREVAL
se (resto=0) E (quociente>3) E (restoQuociente<>0) entao
ESCREVAL ("Você venceu o desafio do algoritmo >:D")
senao
ESCREVAL ("Você perdeu o desafio do algoritmo >:C")
fimse
fimalgoritmo
