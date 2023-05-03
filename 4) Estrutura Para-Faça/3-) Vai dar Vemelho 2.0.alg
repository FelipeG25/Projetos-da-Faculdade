algoritmo "Vai dar Vermelho 2.0"
// Função : Ver o balanço financeiro do ganho bruto e dos gastos da empresa.
// Autor : Felipe Goulart
//Sua empresa precisa fazer o balanço financeiro semestral, portanto
//faça um algoritmo que peça o ganho bruto e os gastos da empresa para
//cada um dos 06 meses do primeiro semestre de um ano, e que mostre no
//final o ganho bruto semestral, o gasto semestral e o saldo financeiro,
//informando também se a empresa teve lucro, prejuízo ou saldo 0. Você fez
//esse exercício na lista de exercícios condicionais, sem utilizar
//estrutura de repetição. Aqui você deve fazer utilizando e após, fazer a
//comparação das duas soluções a fim de entender as vantagens do
//uso da estrutura para-faça nesse contexto.
var
contadora: inteiro
bruto, brutoTotal, gastos, gastosTotais, saldoFinanceiro: real
inicio
para contadora de 1 ate 6 passo 1 faca
   ESCREVAL ("Qual o ganho bruto do", contadora,"º mês?")
   LEIA (bruto)
   ESCREVAL ("Quais os gastos do", contadora,"º mês?")
   LEIA (gastos)
   brutoTotal <- brutoTotal + bruto
   gastosTotais <- gastosTotais + gastos
fimpara

saldoFinanceiro <- brutoTotal - gastosTotais

se (saldoFinanceiro>gastosTotais) entao
   ESCREVAL ("A empresa lucrou nesses 06 meses")
senao
   se (saldoFinanceiro=0) entao
      ESCREVAL ("A empresa não lucrou nesses 06 meses")
        senao
         ESCREVAL ("A empresa teve prejuízo nesses 06 meses")
      fimse
   fimse

ESCREVAL ("O valor bruto total é de: R$", brutoTotal:2:2)
ESCREVAL
ESCREVAL ("Os gastos totais são de: R$", gastosTotais:2:2)
ESCREVAL
ESCREVAL ("O saldo financeiro da empresa foi de: R$", saldoFinanceiro:2:2)
fimalgoritmo
