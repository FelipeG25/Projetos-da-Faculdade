algoritmo "Operação Matemática"
// Função : Realizar uma conta com a operação que o usuário desejar.
// Autor : Felipe Goulart
//Faça um programa que a partir de dois números, pergunte ao usuário qual a
//operação que ele deseja (+, -, / ou *) e mostre o resultado dessa operação
//com os dois números na tela. A divisão poderá ser feita somente se o
//2º número não for zero.
var
operacao: caracter
num1, num2, resultado: real
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAl
ESCREVAL ("Informe dois números")
LEIA (num1)
LEIA (num2)
ESCREVAL
ESCREVAL ("Você deseja que seja feita qual operação?")
LEIA (operacao)
ESCREVAL

ESCREVAL

escolha (operacao)
caso "+"
   resultado <- (num1) + (num2)
   ESCREVAL ("Sua adição deu: ", resultado)

caso "-"
   resultado <- (num1) - (num2)
   ESCREVAL ("Sua subtração deu: ", resultado)

caso "*"
   resultado <- (num1) * (num2)
   ESCREVAL ("Sua multiplicação deu: ", resultado)

caso "/"
   se (num2=0) E (operacao="/") entao
      ESCREVAL ("A divisão não pode ser feita se o número 2 for 0")
   senao
      resultado <- (num1) / (num2)
      ESCREVAL ("Sua divisão deu: ", resultado:2:2)
   fimse

outrocaso
   ESCREVAL ("Operação inexistente.")
fimescolha
ESCREVAL

ESCREVAL ("A sua conta final é de", num1, operacao, num2," =",resultado)
fimalgoritmo
