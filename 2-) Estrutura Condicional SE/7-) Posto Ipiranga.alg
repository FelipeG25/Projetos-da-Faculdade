algoritmo "Posto Ipiranga"
// Função : Saber qual o preço total do combustível com ou sem desconto.
// Autor : Felipe Goulart
//Um posto está vendendo combustíveis com a seguinte tabela de descontos:
//Álcool: até 20 litros, desconto de 3% por litro. Acima de 20 litros, desconto de 5% por litro
//Gasolina: até 20 litros, desconto de 4% por litro. Acima de 20 litros, desconto de 6% por litro
//Escreva um algoritmo que leia o número de litros vendidos e o tipo de
//combustível (codificado da seguinte forma: A-álcool, G-gasolina), calcule
//e imprima o valor a ser pago pelo cliente sabendo-se que o preço do
//litro da gasolina é R$ 3,30 e o preço do litro do álcool é R$ 2,90.
var
combustivel: caractere
litros, custo, total, A, G, precoA, precoG: real
inicio
ESCREVAL ("Seja bem vindo ao posto Meia Milha Andada")
ESCREVAL

ESCREVAL ("Digite A para Álcool e G para Gasolina:")
LEIA (combustivel)

precoA <- 2.90
precoG <- 3.30

se (combustivel = "A") ou (combustivel =  "G") entao
   ESCREVAL ("Digite quantos litros você deseja abastecer:")
   LEIA (litros)

   se (litros < 0) entao
      escreva ("Você informou uma quantidade de litros menor zero")
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
         ESCREVAL ("O preço a pagar é: R$", total:2:2)
      fimse

   senao
      escreval ("O combustível informado não existe")
   fimse


fimalgoritmo

