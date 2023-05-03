algoritmo "Poste"
// Função : Verificar qual das duas pessoas é a mais alta
// Autor : Felipe Goulart
var
altura_pessoa1, altura_pessoa2: real
inicio
ESCREVAL ("Olá, sejam bem vindos!")
ESCREVAL
ESCREVAL ("Digite a altura da primeira pessoa: ")
LEIA (altura_pessoa1)
ESCREVAL ("Escreva a altura da segunda pessoa: ")
LEIA (altura_pessoa2)

se (altura_pessoa1>altura_pessoa2) entao
ESCREVA ("A primeira pessoa é mais alta que a segunda pessoa")
senao
se (altura_pessoa1=altura_pessoa2) entao
ESCREVA ("As duas pessoas são do mesmo tamanho")
senao
ESCREVA ("A segunda pessoa é mais alta que a primeira pessoa")
fimse
fimse
fimalgoritmo
