algoritmo "Poste"
// Fun��o : Verificar qual das duas pessoas � a mais alta
// Autor : Felipe Goulart
var
altura_pessoa1, altura_pessoa2: real
inicio
ESCREVAL ("Ol�, sejam bem vindos!")
ESCREVAL
ESCREVAL ("Digite a altura da primeira pessoa: ")
LEIA (altura_pessoa1)
ESCREVAL ("Escreva a altura da segunda pessoa: ")
LEIA (altura_pessoa2)

se (altura_pessoa1>altura_pessoa2) entao
ESCREVA ("A primeira pessoa � mais alta que a segunda pessoa")
senao
se (altura_pessoa1=altura_pessoa2) entao
ESCREVA ("As duas pessoas s�o do mesmo tamanho")
senao
ESCREVA ("A segunda pessoa � mais alta que a primeira pessoa")
fimse
fimse
fimalgoritmo
