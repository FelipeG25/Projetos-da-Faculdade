algoritmo "Sem Tempo Irm�o"
// Fun��o : Rel�gio Cronometrado
// Autor : Felipe Goulart
var
hora, minutos, segundos: inteiro
segundos_totais, horas_segundos, minutos_segundos: real
inicio
ESCREVAL ("Seja bem-vindo, usu�rio!")
ESCREVAL
ESCREVAL ("Insira uma quantidade de hora: ")
LEIA (hora)
ESCREVAL ("Insira uma quantidade de minutos: ")
LEIA (minutos)
ESCREVAL ("Insira uma quantidade de segundos: ")
LEIA (segundos)
ESCREVAL
ESCREVAL ("O rel�gio mostra o seguinte hor�rio:", hora,":", minutos,":", segundos)
horas_segundos <- (hora) * 3600
minutos_segundos <- (minutos) * 60
segundos_totais <- (horas_segundos) + (minutos_segundos) + (segundos)
ESCREVAL
ESCREVAL ("A quantidade totais de segundos que possue esse hor�rio �: ", segundos_totais)
fimalgoritmo
