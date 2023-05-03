algoritmo "Par Novamente"
// Função : Fazer o algoritmo que se o usuário digitar um número ímpar, ele não podera mais digitar e se ele digitar par, ele poderá digitar quantas vezes quiser.
// Autor : Felipe Goulart
//Faça um algoritmo que peça para o usuário digitar um número.
//Caso o usuário digite um número ímpar, deve ser informado a ele:
//“Você digitou um número ímpar, não tem direito de digitar mais números”.
//Caso o número digitado seja par, o programa deve permitir que o usuário
//digite mais números (quantos quiser), até o momento que ele digitar algum
//número ímpar, informando a mesma frase citada anteriormente. Ao final,
//deve ser informada a quantidade de números que foram digitados.
var
numero, quantidade: inteiro
inicio
ESCREVAL ("Digite um número")
LEIA (numero)
repita
   se (numero MOD 2 = 0) entao
      ESCREVAL ("Digite um número")
      LEIA (numero)
      quantidade <- quantidade + 1
   fimse
ate (numero MOD 2 <> 0)
se (numero MOD 2 <> 0) entao
   quantidade <- quantidade + 1
   ESCREVAL
   ESCREVAL ("Você digitou um número ímpar, não tem o direito de digitar mais números.")
fimse
ESCREVAL
ESCREVAL ("A quantidade de números digitados foi de:", quantidade)
fimalgoritmo

