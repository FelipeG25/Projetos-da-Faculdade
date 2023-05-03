algoritmo "Trabalho Forçado"
// Função : Calcular as horas trabalhadas em um mês, calcular o salário total do funcionário que deverá ser acrescido das horas extras caso tenham sido trabalhadas.
// Autor : Felipe Goulart
var
horasTrabalhadasUmMes, horasExtrasTrabalhadas: inteiro
valorHora, salarioTotal, salario, salarioExtra, horasExtras, valorHorasExtras: real
inicio
ESCREVAL ("Seja bem vindo, funcionário!")
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
ESCREVAL ("O salário total do funcionário junto das horas extras será de: R$", salarioTotal)
fimalgoritmo
