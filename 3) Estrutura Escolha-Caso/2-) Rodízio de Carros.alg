algoritmo "Rod�zio de Carros"
// Fun��o : Informar o �ltimo n�mero da placa do carro para o algoritmo.
// Autor : Felipe Goulart
//A prefeitura de �Pedra Lisa� decidiu implantar um sistema de rod�zio
//de ve�culos, e lhe solicitou um algoritmo em que o usu�rio informe o
//�ltimo n�mero da placa de seu carro, para que o programa possa informar
//que dia da semana esse carro n�o pode ir �s ruas, seguindo a tabela abaixo:

//placas da semana                      placas que n�o podem circular
//segunda                                            0 e 5
//ter�a                                              1 e 6
//quarta                                             2 e 7
//quinta                                             3 e 8
//sexta                                              4 e 9

var
placaNumero: inteiro
inicio
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAL
ESCREVAL ("Informe o �ltimo n�mero da placa do seu carro")
LEIA (placaNumero)
ESCREVAL
escolha (placaNumero)
caso 0, 5
   ESCREVAL ("O seu carro n�o poder� ir �s ruas nas segundas-feiras")
caso 1, 6
   ESCREVAL ("O seu carro n�o poder� ir �s ruas nas ter�as-feiras")
caso 2, 7
   ESCREVAL ("O seu carro n�o poder� ir �s ruas nas quartas-feiras")
caso 3, 8
   ESCREVAL ("O seu carro n�o poder� ir �s ruas nas quintas-feiras")
caso 4, 9
   ESCREVAL ("O seu carro n�o poder� ir �s ruas nas sextas-feiras")
outrocaso
   ESCREVAL ("Valor n�o encontrado")
fimescolha
fimalgoritmo

