algoritmo "Vai dar Vermelho 2.0"
// Fun��o : Ver o balan�o financeiro do ganho bruto e dos gastos da empresa.
// Autor : Felipe Goulart
//Sua empresa precisa fazer o balan�o financeiro semestral, portanto
//fa�a um algoritmo que pe�a o ganho bruto e os gastos da empresa para
//cada um dos 06 meses do primeiro semestre de um ano, e que mostre no
//final o ganho bruto semestral, o gasto semestral e o saldo financeiro,
//informando tamb�m se a empresa teve lucro, preju�zo ou saldo 0. Voc� fez
//esse exerc�cio na lista de exerc�cios condicionais, sem utilizar
//estrutura de repeti��o. Aqui voc� deve fazer utilizando e ap�s, fazer a
//compara��o das duas solu��es a fim de entender as vantagens do
//uso da estrutura para-fa�a nesse contexto.
var
contadora: inteiro
bruto, brutoTotal, gastos, gastosTotais, saldoFinanceiro: real
inicio
para contadora de 1 ate 6 passo 1 faca
   ESCREVAL ("Qual o ganho bruto do", contadora,"� m�s?")
   LEIA (bruto)
   ESCREVAL ("Quais os gastos do", contadora,"� m�s?")
   LEIA (gastos)
   brutoTotal <- brutoTotal + bruto
   gastosTotais <- gastosTotais + gastos
fimpara

saldoFinanceiro <- brutoTotal - gastosTotais

se (saldoFinanceiro>gastosTotais) entao
   ESCREVAL ("A empresa lucrou nesses 06 meses")
senao
   se (saldoFinanceiro=0) entao
      ESCREVAL ("A empresa n�o lucrou nesses 06 meses")
        senao
         ESCREVAL ("A empresa teve preju�zo nesses 06 meses")
      fimse
   fimse

ESCREVAL ("O valor bruto total � de: R$", brutoTotal:2:2)
ESCREVAL
ESCREVAL ("Os gastos totais s�o de: R$", gastosTotais:2:2)
ESCREVAL
ESCREVAL ("O saldo financeiro da empresa foi de: R$", saldoFinanceiro:2:2)
fimalgoritmo
