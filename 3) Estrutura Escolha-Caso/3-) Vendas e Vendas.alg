algoritmo "Vendas e Vendas"
// Fun��o : Mostrar a sa�da de quatro informa��es: valor do produto, forma de pagamento, se � a prazo ou n�o e o valor final de venda
// Autor : Felipe Goulart
//Fa�a um algoritmo para que o usu�rio insira o valor de um produto e a forma
//de pagamento. O algoritmo deve ent�o calcular o pre�o de venda,
//do seguinte modo:

//c�digo         forma de pagamento                   regra de neg�cio

//   1                   cheque                        O usu�rio dever� selecionar se � a vista ou � prazo, sem altera��es no valor
//   2                   cart�o de cr�dito             O usu�rio dever� selecionar se � a vista ou � prazo, se for a prazo, acrescentar� 5% no valor
//   3                   boleto                        Desconto de 12% no valor
//   4                   em dinheiro                   Se o valor for igual ou  superior a R$300 � desconto de 5%
//                                                     Se o valor for inferior a R$300 � sem altera��o no valor

//Em todas as situa��es, ele deve mostrar como sa�da na tela quatro
//informa��es: valor do produto, forma de pagamento, se � a prazo ou
//n�o e o valor final de venda.
var
valorProduto, valorProdutoAcrescimo, valorBoleto, valorDinheiro: real
formaPagamento, escolhe: caractere
inicio
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAL
ESCREVAL ("Informe o valor do produto")
LEIA (valorProduto)
ESCREVAL
ESCREVAL ("Formas de Pagamento:")
ESCREVAL ("-Cheque - Sem altera��es no valor")
ESCREVAL ("-Cart�o de Cr�dito - A prazo adiciona um acr�scimo de 5% no valor")
ESCREVAL ("-Boleto - Desconto de 12% no valor")
ESCREVAL ("-Em Dinheiro - Valor igual ou superior a R$300, desconto de 5%")
ESCREVAL ("-Em Dinheiro - Valor inferior a R$300, sem altera��es no valor")
ESCREVAL
ESCREVAL ("Insira a forma de pagamento")
LEIA (formaPagamento)

ESCREVAL

escolha (formaPagamento)
caso "Cheque"
   ESCREVAL ("Voc� deseja fazer a vista ou a prazo?")
   LEIA (escolhe)
   ESCREVAL
   se (formaPagamento="Cheque") E (escolhe="A prazo") OU (escolhe="A vista") entao
      ESCREVAL ("Sem altera��o no valor")
   fimse
caso "Cartao de credito"
   ESCREVAL ("Voc� deseja fazer a vista ou a prazo?")
   LEIA (escolhe)
   se (escolhe="A prazo") entao
      valorProdutoAcrescimo <- valorProduto + (5 * valorProduto / 100)
      ESCREVAL ("O seu valor com o prazo ser� de: R$", valorProdutoAcrescimo:2:2)
   senao
      se (escolhe="A vista") entao
         ESCREVAL ("Sem altera��es no valor")
      fimse
   fimse
caso "Boleto"
   valorBoleto <- valorProduto - (12 * valorProduto / 100)
   ESCREVAL ("O seu valor no boleto � de: R$", valorBoleto:2:2)
caso "Em dinheiro"
   valorDinheiro <- valorProduto - (5 * valorProduto / 100)
   se (valorProduto>=300) entao
      ESCREVAL ("O seu valor no dinheiro � de: R$", valorDinheiro:2:2)
   fimse
caso "Em dinheiro"
   se (valorProduto<300) entao
      ESCREVAL ("Sem altera��o no valor")
   fimse
fimescolha
fimalgoritmo
