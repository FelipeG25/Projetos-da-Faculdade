algoritmo "Vai dar Vermelho"
// Função :Executar o balanço financeiro semestral
// Autor : Felipe Goulart
var
bruto1, bruto2, bruto3, bruto4, bruto5, bruto6, brutoTotal: real
gastos1, gastos2, gastos3, gastos4, gastos5, gastos6, gastosTotais: real
saldoFinanceiro: real
inicio
ESCREVAL ("Seja bem vindo!")
ESCREVAL
ESCREVAL ("Informe o valor bruto da empresa nos últimos 06 meses: ")
LEIA (bruto1, bruto2, bruto3, bruto4, bruto5, bruto6)
ESCREVAL ("Informe os gastos da empresa nos últimos 06 meses: ")
LEIA (gastos1, gastos2, gastos3, gastos4, gastos5, gastos6)

brutoTotal <- (bruto1) + (bruto2) + (bruto3) + (bruto4) + (bruto5) + (bruto6)
gastosTotais <- (gastos1) + (gastos2) + (gastos3) + (gastos4) + (gastos5) + (gastos6)
saldoFinanceiro <- brutoTotal - gastosTotais

ESCREVAL ("O ganho bruto da empresa foi de: R$", brutoTotal)
ESCREVAL
ESCREVAL ("Os gastos totais da empresa foram de: R$", gastosTotais)
ESCREVAL
ESCREVAL ("O saldo financeiro foi de: R$", saldoFinanceiro)
ESCREVAL

se (saldoFinanceiro>gastosTotais) entao
   ESCREVAL ("A empresa lucrou nesses 06 meses")
senao
   se (saldoFinanceiro=0) entao
      ESCREVAL ("A empresa não lucrou nesses 06 meses")
   senao
      se (saldoFinanceiro=gastosTotais) entao
         ESCREVAL ("A empresa não teve prejuízo nesses 06 meses")
      senao
         ESCREVAL ("A empresa teve prejuízo nesses 06 meses >:C")
      fimse
   fimse
fimse
fimalgoritmo

