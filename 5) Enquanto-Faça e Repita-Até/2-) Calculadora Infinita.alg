algoritmo "Calculadora Infinita"
// Fun��o : Criar uma calculadora sem limites de execu��es.
// Autor : Felipe Goulart
//Crie uma calculadora que permita o c�lculo de uma equa��o, sem limite de execu��es definido, da seguinte maneira:
//1. Pe�a o primeiro valor ,
//2. Pe�a o c�lculo que deseja fazer (entre as 4 opera��es b�sicas),
//3. Pe�a um segundo valor ,
//4. Efetue o c�lculo,
//5. Pe�a se o usu�rio quer continuar calculando. Se ele responder que sim, volte
//para o passo 2 usando o resultado do c�lculo da linha 4 como primeiro valor , se
//disser que n�o, mostre o resultado final .
//Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2
var
divisao, total, valor1, valor2, resultado: real
operacao, resposta: caractere
inicio
ESCREVAL ("Opera��es dispon�veis")
ESCREVAL ("Soma -> +")
ESCREVAL ("Subtra��o -> -")
ESCREVAL ("Divis�o -> /")
ESCREVAL ("Multiplica��o -> *")
ESCREVAL
ESCREVAL ("Informe o primeiro valor")
LEIA (valor1)
repita
   ESCREVAL ("Informe a opera��o que deseja")
   LEIA (operacao)
   ESCREVAL ("Informe o segundo valor")
   LEIA (valor2)
   ESCREVAL

   escolha (operacao)
   caso "+"
      resultado <- valor1 + valor2
      ESCREVAL ("A sua soma deu", resultado)

   caso "-"
      resultado <- valor1 - valor2
      ESCREVAL ("A sua subtra��o deu", resultado)

   caso "/"
      enquanto (valor2=0) E (operacao="/") faca
         ESCREVAL ("A divis�o n�o pode ser feita se o n�mero 2 for 0.")
         ESCREVAL ("Porfavor, digite um n�mero correto:")
         LEIA (valor2)
      fimenquanto
      resultado <- valor1 / valor2
      ESCREVAL ("A sua divis�o deu ", resultado:2:2)


   caso "*"
      resultado <- valor1 * valor2
      ESCREVAL ("A sua multiplica��o deu", resultado)
   outrocaso
      ESCREVAL ("Opera��o inexistente.")
   fimescolha

   valor1 <- resultado

   ESCREVAL
   ESCREVAL ("Voc� gostaria de continuar calculando?")
   LEIA (resposta)
   ESCREVAL
ate (resposta="N�o") OU (resposta="n�o") OU (resposta="n")
fimalgoritmo
