algoritmo "Par Novamente"
// Fun��o : Fazer o algoritmo que se o usu�rio digitar um n�mero �mpar, ele n�o podera mais digitar e se ele digitar par, ele poder� digitar quantas vezes quiser.
// Autor : Felipe Goulart
//Fa�a um algoritmo que pe�a para o usu�rio digitar um n�mero.
//Caso o usu�rio digite um n�mero �mpar, deve ser informado a ele:
//�Voc� digitou um n�mero �mpar, n�o tem direito de digitar mais n�meros�.
//Caso o n�mero digitado seja par, o programa deve permitir que o usu�rio
//digite mais n�meros (quantos quiser), at� o momento que ele digitar algum
//n�mero �mpar, informando a mesma frase citada anteriormente. Ao final,
//deve ser informada a quantidade de n�meros que foram digitados.
var
numero, quantidade: inteiro
inicio
ESCREVAL ("Digite um n�mero")
LEIA (numero)
repita
   se (numero MOD 2 = 0) entao
      ESCREVAL ("Digite um n�mero")
      LEIA (numero)
      quantidade <- quantidade + 1
   fimse
ate (numero MOD 2 <> 0)
se (numero MOD 2 <> 0) entao
   quantidade <- quantidade + 1
   ESCREVAL
   ESCREVAL ("Voc� digitou um n�mero �mpar, n�o tem o direito de digitar mais n�meros.")
fimse
ESCREVAL
ESCREVAL ("A quantidade de n�meros digitados foi de:", quantidade)
fimalgoritmo

