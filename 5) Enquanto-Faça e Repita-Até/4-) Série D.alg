algoritmo "S�rie D"
// Fun��o : Eleger para a presid�ncia do clube.
// Autor : Felipe Goulart
//Voc� foi contratado pelo JEC (Jaguatirica Esporte Clube) para programar a
//urna eletr�nica da elei��o da presid�ncia do clube. O programa deve
//dar as seguintes op��es de voto:


//  C�digo             Candidato
//    15                Daniel
//    75                 Jean
//    0              Voto em branco
//Outros valores        Voto nulo

//Nas elei��es do JEC, nem sempre todos os s�cios comparecem para votar,
//ent�o n�o tem como saber quantos votos ser�o contabilizados. Ao final de
//cada voto, o programa deve perguntar ao usu�rio se ainda existe mais uma
//pessoa para votar, se sim, o usu�rio deve informar �SIM�, se n�o,
//informar �N�O�. Ao final, dever� ser mostrado:

//Quantidade de votos para cada candidato, em branco e nulo;

//E o resultado final da elei��o, que pode ser:

//Elei��o cancelada: Se n�o houverem votantes ou se a soma dos votos nulos e brancos exceder a soma dos votos v�lidos (um voto � considerado v�lido quando for um voto em algum candidato);

//Empate: se a condi��o acima for falsa e a soma dos votos para o Daniel seja igual a soma dos votos para a Jean;

//Candidato eleito: se as condi��es acima forem falsas e a soma dos votos para um dos candidatos seja maior que a do outro.
var
codigo, votoDaniel, votoJean, votoBranco, votoNulo, somaVotosValidos, somaBrancosNulo, somaTotal: inteiro
resposta: caracter
inicio
ESCREVAL ("Seja bem vindo usu�rio!")
ESCREVAL
ESCREVAL ("Candidatos dispon�veis para vota��o:")
ESCREVAL ("Daniel - 15")
ESCREVAL ("Jean - 75")
ESCREVAL ("Voto em Branco - 0")
ESCREVAL ("Voto Nulo - Outros valores.")
ESCREVAL
votoDaniel <- 0
votoJean <- 0
ESCREVAL ("Existem votantes na elei��o? Digite Sim ou N�o.")
LEIA (resposta)

enquanto (resposta="Sim") faca

   ESCREVAL
   ESCREVAL ("Digite o c�digo que voc� deseja")
   LEIA (codigo)
   escolha (codigo)
   caso 15
      votoDaniel <- votoDaniel + 1
   caso 75
      votoJean <- votoJean + 1
   caso 0
      votoBranco <- votoBranco + 1
   outrocaso
      votoNulo <- votoNulo + 1
   fimescolha
   ESCREVAL
   ESCREVAL ("Existe mais alguem para votar?")
   LEIA (resposta)

fimenquanto

ESCREVAL
somaVotosValidos <- votoJean + votoDaniel
somaBrancosNulo <- votoBranco + votoNulo
somaTotal <- somaVotosValidos + somaBrancosNulo

se (somaBrancosNulo>somaVotosValidos) OU (somaTotal=0) entao
   ESCREVAL ("Elei��o cancelada.")
senao
   se (votoDaniel=votoJean) entao
      ESCREVAL ("Empate.")
   senao
      se (votoDaniel>votoJean) OU (votoJean>votoDaniel) entao
         ESCREVAL ("Candidato eleito.")
      fimse
   fimse
fimse

ESCREVAL
ESCREVAL ("A quantidade de votos para Daniel � d�:", votoDaniel)
ESCREVAL
ESCREVAL ("A quantidade de votos para Jean � d�:", votoJean)
ESCREVAL
ESCREVAL ("A quantidade de votos em branco � d�:", votoBranco)
ESCREVAL
ESCREVAL ("A quantidade de votos nulos � d�:", votoNulo)
fimalgoritmo
