algoritmo "Opera��o Matem�tica"
// Fun��o : Realizar uma conta com a opera��o que o usu�rio desejar.
// Autor : Felipe Goulart
//Fa�a um programa que a partir de dois n�meros, pergunte ao usu�rio qual a
//opera��o que ele deseja (+, -, / ou *) e mostre o resultado dessa opera��o
//com os dois n�meros na tela. A divis�o poder� ser feita somente se o
//2� n�mero n�o for zero.
var
operacao: caracter
num1, num2, resultado: real
inicio
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAl
ESCREVAL ("Informe dois n�meros")
LEIA (num1)
LEIA (num2)
ESCREVAL
ESCREVAL ("Voc� deseja que seja feita qual opera��o?")
LEIA (operacao)
ESCREVAL

ESCREVAL

escolha (operacao)
caso "+"
   resultado <- (num1) + (num2)
   ESCREVAL ("Sua adi��o deu: ", resultado)

caso "-"
   resultado <- (num1) - (num2)
   ESCREVAL ("Sua subtra��o deu: ", resultado)

caso "*"
   resultado <- (num1) * (num2)
   ESCREVAL ("Sua multiplica��o deu: ", resultado)

caso "/"
   se (num2=0) E (operacao="/") entao
      ESCREVAL ("A divis�o n�o pode ser feita se o n�mero 2 for 0")
   senao
      resultado <- (num1) / (num2)
      ESCREVAL ("Sua divis�o deu: ", resultado:2:2)
   fimse

outrocaso
   ESCREVAL ("Opera��o inexistente.")
fimescolha
ESCREVAL

ESCREVAL ("A sua conta final � de", num1, operacao, num2," =",resultado)
fimalgoritmo
