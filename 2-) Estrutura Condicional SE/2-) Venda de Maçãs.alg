algoritmo "Vendas de Maçãs"
// Função : Calcular e escrever o custo total da compra
// Autor : Felipe Goulart
var
macas_compradas: real
inicio
ESCREVAL ("Quantas maçãs você gostaria de comprar?: ")
LEIA (macas_compradas)
se (macas_compradas<12) entao
ESCREVAL ("O total será de: R$",macas_compradas * 1.30)
senao
ESCREVAL ("O total será de: R$",macas_compradas * 1.00)
fimse
fimalgoritmo

