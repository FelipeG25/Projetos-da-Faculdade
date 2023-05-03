algoritmo "Errado ou Correto"
// Função : Pedir ao usuário dois números que enquanto ele não acertar a soma dos dois ele ficara tentando novamente até acertar.
// Autor : Felipe Goulart
//Faça um programa que peça ao usuário dois números. Após, enquanto ele não
//digitar o resultado correto da soma desses dois números, mostre na
//tela “tente novamente”, quando acertar “resultado correto!”.
var
num1, num2, soma, somaNumero: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Você ira informar dois números e enquanto não acertar eles, ficará tentando")
ESCREVAL ("novamente.")
ESCREVAL
ESCREVAL ("Informe o primeiro número")
LEIA (num1)
ESCREVAL ("Informe o segundo número")
LEIA (num2)
repita
   ESCREVAL ("Qual a soma deles?")
   LEIA (soma)
   somaNumero <- num1 + num2
   se (soma<>somaNumero) entao
      ESCREVAL
      ESCREVAL ("Você errou, tente novamente.")
   fimse
   se (soma=somaNumero) entao
      ESCREVAL ("Você acertou!")
   fimse
ate (soma=somaNumero)
fimalgoritmo
