algoritmo "A própria Lamborghini"
// Função : Calcular o salário do vendedor
// Autor : Felipe Goulart
var
nome_vendedor: caractere
carros_vendidos, total_vendas, comissao_carros, comissao_vendas, salario_total_vendedor: real
inicio
ESCREVAL ("Olá, vendedor!")
ESCREVAL
ESCREVAL ("Nome do vendedor: ")
LEIA (nome_vendedor)
ESCREVAL ("Nº de carros vendidos: ")
LEIA (carros_vendidos)
ESCREVAL ("Valor total de vendas da loja: ")
LEIA (total_vendas)
comissao_carros <- 50 * (carros_vendidos)
comissao_vendas <- 0.05 * (total_vendas)
salario_total_vendedor <- 500 + (comissao_carros) + (comissao_vendas)
ESCREVAL
ESCREVAL ("Comissão ganha pelos carros vendidos: R$", comissao_carros)
ESCREVAL ("Comissão ganha pelo total de vendas da loja: R$", comissao_vendas)
ESCREVAL ("Salário total do vendedor: R$", salario_total_vendedor)
fimalgoritmo
