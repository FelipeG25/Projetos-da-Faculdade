algoritmo "Trabalho For�ado"
// Fun��o : Calcular as horas trabalhadas em um m�s, calcular o sal�rio total do funcion�rio que dever� ser acrescido das horas extras caso tenham sido trabalhadas.
// Autor : Felipe Goulart
var
horasTrabalhadasUmMes, horasExtrasTrabalhadas: inteiro
valorHora, salarioTotal, salario, salarioExtra, horasExtras, valorHorasExtras: real
inicio
ESCREVAL ("Seja bem vindo, funcion�rio!")
ESCREVAL
ESCREVAL ("Informe o valor a ser pago por horas trabalhadas:")
LEIA (valorHora)
ESCREVAL ("Informe as horas trabalhadas:")
LEIA (horasTrabalhadasUmMes)

se (horasTrabalhadasUmMes <= 160) entao
salario <- horasTrabalhadasUmMes * valorHora
horasExtras <- 0
fimse

salario <- 160 * valorHora
horasExtrasTrabalhadas <- horasTrabalhadasUmMes - 160
valorHorasExtras <- valorHora + valorHora * 50 / 100
salarioExtra <- valorHorasExtras * horasExtrasTrabalhadas

salarioTotal <- salario + salarioExtra
ESCREVAL
ESCREVAL ("O sal�rio total do funcion�rio junto das horas extras ser� de: R$", salarioTotal)
fimalgoritmo
