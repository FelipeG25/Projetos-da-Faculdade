algoritmo "Calculadora Infinita"
// Função : Criar uma calculadora sem limites de execuções.
// Autor : Felipe Goulart
//Crie uma calculadora que permita o cálculo de uma equação, sem limite de execuções definido, da seguinte maneira:
//1. Peça o primeiro valor ,
//2. Peça o cálculo que deseja fazer (entre as 4 operações básicas),
//3. Peça um segundo valor ,
//4. Efetue o cálculo,
//5. Peça se o usuário quer continuar calculando. Se ele responder que sim, volte
//para o passo 2 usando o resultado do cálculo da linha 4 como primeiro valor , se
//disser que não, mostre o resultado final .
//Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2
var
divisao, total, valor1, valor2, resultado: real
operacao, resposta: caractere
inicio
ESCREVAL ("Operações disponíveis")
ESCREVAL ("Soma -> +")
ESCREVAL ("Subtração -> -")
ESCREVAL ("Divisão -> /")
ESCREVAL ("Multiplicação -> *")
ESCREVAL
ESCREVAL ("Informe o primeiro valor")
LEIA (valor1)
repita
   ESCREVAL ("Informe a operação que deseja")
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
      ESCREVAL ("A sua subtração deu", resultado)

   caso "/"
      enquanto (valor2=0) E (operacao="/") faca
         ESCREVAL ("A divisão não pode ser feita se o número 2 for 0.")
         ESCREVAL ("Porfavor, digite um número correto:")
         LEIA (valor2)
      fimenquanto
      resultado <- valor1 / valor2
      ESCREVAL ("A sua divisão deu ", resultado:2:2)


   caso "*"
      resultado <- valor1 * valor2
      ESCREVAL ("A sua multiplicação deu", resultado)
   outrocaso
      ESCREVAL ("Operação inexistente.")
   fimescolha

   valor1 <- resultado

   ESCREVAL
   ESCREVAL ("Você gostaria de continuar calculando?")
   LEIA (resposta)
   ESCREVAL
ate (resposta="Não") OU (resposta="não") OU (resposta="n")
fimalgoritmo
