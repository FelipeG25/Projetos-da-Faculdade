algoritmo "Impostos e mais impostos"
// Fun��o : Amostra de Valores
// Autor : Felipe Goulart
var
custoCalca, impostoGovero, impostoRepresentante, valorImpostoGoverno, valorImpostoRepresentante, valorCalcaJeans: real
inicio
ESCREVAL ("Seja bem-vindo, usu�rio!")
ESCREVAL
ESCREVAL ("Adicione o custo de f�brica da cal�a jeans: ")
LEIA (custoCalca)
ESCREVAL ("Adicione a porcentagem de imposto do governo: ")
LEIA (impostoGovero)
ESCREVAL ("Adicione a porcentagem de imposto do representante: ")
LEIA (impostoRepresentante)
valorImpostoGoverno <- (custoCalca) * (impostoGovero) / 100
valorImpostoRepresentante <- (custoCalca) * (impostoRepresentante) / 100
valorCalcaJeans <- (custoCalca) + (valorImpostoGoverno) + (valorImpostoRepresentante)
ESCREVAL
ESCREVAL ("O valor do custo de vendas da cal�a jeans ser� de: R$", valorCalcaJeans:2:2)
ESCREVAL ("O valor do imposto do governo ser� de: ", valorImpostoGoverno:2:2)
ESCREVAL ("O valor do imposto do representante ser� de: ", valorImpostoRepresentante:2:2)
fimalgoritmo
//Esse foi o exerc�cio da lista mais complicado que j� fiz at� agora.
//OBS: Odeio impostos.
