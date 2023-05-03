algoritmo "Fazemos Fiado"
// Função : Parcelamento de Compras
// Autor : Felipe Goulart
var
valor_total: real
vezes_parceladas: inteiro
valor_mensal: real
inicio
ESCREVAL ("Olá Usuário!")
ESCREVAL ("Por favor, informe o valor total de sua compra e em quantas vezes deseja parcelar")
ESCREVAL
ESCREVAL ("Valor Total da Compra: ")
LEIA (valor_total)
ESCREVAL ("Em Quantas Vezes Deseja Parcelá-la?: ")
LEIA (vezes_parceladas)
valor_mensal <- valor_total / vezes_parceladas
ESCREVAL
ESCREVAL ("Sua Compra foi de R$ ", valor_total)
ESCREVAL ("Você optou por escolher parcelar em ", vezes_parceladas)
ESCREVAL ("Sua parcela mensal será de R$ ", valor_mensal:2:2)
fimalgoritmo
