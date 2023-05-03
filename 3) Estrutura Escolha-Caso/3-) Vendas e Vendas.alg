algoritmo "Vendas e Vendas"
// Função : Mostrar a saída de quatro informações: valor do produto, forma de pagamento, se é a prazo ou não e o valor final de venda
// Autor : Felipe Goulart
//Faça um algoritmo para que o usuário insira o valor de um produto e a forma
//de pagamento. O algoritmo deve então calcular o preço de venda,
//do seguinte modo:

//código         forma de pagamento                   regra de negócio

//   1                   cheque                        O usuário deverá selecionar se é a vista ou à prazo, sem alterações no valor
//   2                   cartão de crédito             O usuário deverá selecionar se é a vista ou à prazo, se for a prazo, acrescentará 5% no valor
//   3                   boleto                        Desconto de 12% no valor
//   4                   em dinheiro                   Se o valor for igual ou  superior a R$300 – desconto de 5%
//                                                     Se o valor for inferior a R$300 – sem alteração no valor

//Em todas as situações, ele deve mostrar como saída na tela quatro
//informações: valor do produto, forma de pagamento, se é a prazo ou
//não e o valor final de venda.
var
valorProduto, valorProdutoAcrescimo, valorBoleto, valorDinheiro: real
formaPagamento, escolhe: caractere
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Informe o valor do produto")
LEIA (valorProduto)
ESCREVAL
ESCREVAL ("Formas de Pagamento:")
ESCREVAL ("-Cheque - Sem alterações no valor")
ESCREVAL ("-Cartão de Crédito - A prazo adiciona um acréscimo de 5% no valor")
ESCREVAL ("-Boleto - Desconto de 12% no valor")
ESCREVAL ("-Em Dinheiro - Valor igual ou superior a R$300, desconto de 5%")
ESCREVAL ("-Em Dinheiro - Valor inferior a R$300, sem alterações no valor")
ESCREVAL
ESCREVAL ("Insira a forma de pagamento")
LEIA (formaPagamento)

ESCREVAL

escolha (formaPagamento)
caso "Cheque"
   ESCREVAL ("Você deseja fazer a vista ou a prazo?")
   LEIA (escolhe)
   ESCREVAL
   se (formaPagamento="Cheque") E (escolhe="A prazo") OU (escolhe="A vista") entao
      ESCREVAL ("Sem alteração no valor")
   fimse
caso "Cartao de credito"
   ESCREVAL ("Você deseja fazer a vista ou a prazo?")
   LEIA (escolhe)
   se (escolhe="A prazo") entao
      valorProdutoAcrescimo <- valorProduto + (5 * valorProduto / 100)
      ESCREVAL ("O seu valor com o prazo será de: R$", valorProdutoAcrescimo:2:2)
   senao
      se (escolhe="A vista") entao
         ESCREVAL ("Sem alterações no valor")
      fimse
   fimse
caso "Boleto"
   valorBoleto <- valorProduto - (12 * valorProduto / 100)
   ESCREVAL ("O seu valor no boleto é de: R$", valorBoleto:2:2)
caso "Em dinheiro"
   valorDinheiro <- valorProduto - (5 * valorProduto / 100)
   se (valorProduto>=300) entao
      ESCREVAL ("O seu valor no dinheiro é de: R$", valorDinheiro:2:2)
   fimse
caso "Em dinheiro"
   se (valorProduto<300) entao
      ESCREVAL ("Sem alteração no valor")
   fimse
fimescolha
fimalgoritmo
