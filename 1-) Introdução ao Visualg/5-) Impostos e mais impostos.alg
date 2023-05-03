algoritmo "Impostos e mais impostos"
// Função : Amostra de Valores
// Autor : Felipe Goulart
var
custoCalca, impostoGovero, impostoRepresentante, valorImpostoGoverno, valorImpostoRepresentante, valorCalcaJeans: real
inicio
ESCREVAL ("Seja bem-vindo, usuário!")
ESCREVAL
ESCREVAL ("Adicione o custo de fábrica da calça jeans: ")
LEIA (custoCalca)
ESCREVAL ("Adicione a porcentagem de imposto do governo: ")
LEIA (impostoGovero)
ESCREVAL ("Adicione a porcentagem de imposto do representante: ")
LEIA (impostoRepresentante)
valorImpostoGoverno <- (custoCalca) * (impostoGovero) / 100
valorImpostoRepresentante <- (custoCalca) * (impostoRepresentante) / 100
valorCalcaJeans <- (custoCalca) + (valorImpostoGoverno) + (valorImpostoRepresentante)
ESCREVAL
ESCREVAL ("O valor do custo de vendas da calça jeans será de: R$", valorCalcaJeans:2:2)
ESCREVAL ("O valor do imposto do governo será de: ", valorImpostoGoverno:2:2)
ESCREVAL ("O valor do imposto do representante será de: ", valorImpostoRepresentante:2:2)
fimalgoritmo
//Esse foi o exercício da lista mais complicado que já fiz até agora.
//OBS: Odeio impostos.
