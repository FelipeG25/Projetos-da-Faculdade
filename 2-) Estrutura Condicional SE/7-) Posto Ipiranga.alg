algoritmo "Posto Ipiranga"
// Fun��o : Saber qual o pre�o total do combust�vel com ou sem desconto.
// Autor : Felipe Goulart
//Um posto est� vendendo combust�veis com a seguinte tabela de descontos:
//�lcool: at� 20 litros, desconto de 3% por litro. Acima de 20 litros, desconto de 5% por litro
//Gasolina: at� 20 litros, desconto de 4% por litro. Acima de 20 litros, desconto de 6% por litro
//Escreva um algoritmo que leia o n�mero de litros vendidos e o tipo de
//combust�vel (codificado da seguinte forma: A-�lcool, G-gasolina), calcule
//e imprima o valor a ser pago pelo cliente sabendo-se que o pre�o do
//litro da gasolina � R$ 3,30 e o pre�o do litro do �lcool � R$ 2,90.
var
combustivel: caractere
litros, custo, total, A, G, precoA, precoG: real
inicio
ESCREVAL ("Seja bem vindo ao posto Meia Milha Andada")
ESCREVAL

ESCREVAL ("Digite A para �lcool e G para Gasolina:")
LEIA (combustivel)

precoA <- 2.90
precoG <- 3.30

se (combustivel = "A") ou (combustivel =  "G") entao
   ESCREVAL ("Digite quantos litros voc� deseja abastecer:")
   LEIA (litros)

   se (litros < 0) entao
      escreva ("Voc� informou uma quantidade de litros menor zero")
   senao
      se (litros<=20) E (combustivel="A") entao
         total <- litros * (precoA * (1-(3/100)))
      senao
         se (litros>20) E (combustivel="A") entao
            total <- litros * (precoA * (1-(5/100)))
         senao
            se (litros<=20) E (combustivel="G") entao
               total <- litros * (precoG * (1-(4/100)))
            senao
               se (litros>20) E (combustivel="G") entao
                  total <- litros * (precoG * (1-(6/100)))
               fimse
            fimse
         fimse
         ESCREVAL
         ESCREVAL ("O pre�o a pagar �: R$", total:2:2)
      fimse

   senao
      escreval ("O combust�vel informado n�o existe")
   fimse


fimalgoritmo

