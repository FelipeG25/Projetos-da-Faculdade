algoritmo "Rodízio de Carros"
// Função : Informar o último número da placa do carro para o algoritmo.
// Autor : Felipe Goulart
//A prefeitura de “Pedra Lisa” decidiu implantar um sistema de rodízio
//de veículos, e lhe solicitou um algoritmo em que o usuário informe o
//último número da placa de seu carro, para que o programa possa informar
//que dia da semana esse carro não pode ir às ruas, seguindo a tabela abaixo:

//placas da semana                      placas que não podem circular
//segunda                                            0 e 5
//terça                                              1 e 6
//quarta                                             2 e 7
//quinta                                             3 e 8
//sexta                                              4 e 9

var
placaNumero: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Informe o último número da placa do seu carro")
LEIA (placaNumero)
ESCREVAL
escolha (placaNumero)
caso 0, 5
   ESCREVAL ("O seu carro não poderá ir às ruas nas segundas-feiras")
caso 1, 6
   ESCREVAL ("O seu carro não poderá ir às ruas nas terças-feiras")
caso 2, 7
   ESCREVAL ("O seu carro não poderá ir às ruas nas quartas-feiras")
caso 3, 8
   ESCREVAL ("O seu carro não poderá ir às ruas nas quintas-feiras")
caso 4, 9
   ESCREVAL ("O seu carro não poderá ir às ruas nas sextas-feiras")
outrocaso
   ESCREVAL ("Valor não encontrado")
fimescolha
fimalgoritmo

