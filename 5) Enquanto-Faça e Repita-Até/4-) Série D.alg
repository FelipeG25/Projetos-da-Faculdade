algoritmo "Série D"
// Função : Eleger para a presidência do clube.
// Autor : Felipe Goulart
//Você foi contratado pelo JEC (Jaguatirica Esporte Clube) para programar a
//urna eletrônica da eleição da presidência do clube. O programa deve
//dar as seguintes opções de voto:


//  Código             Candidato
//    15                Daniel
//    75                 Jean
//    0              Voto em branco
//Outros valores        Voto nulo

//Nas eleições do JEC, nem sempre todos os sócios comparecem para votar,
//então não tem como saber quantos votos serão contabilizados. Ao final de
//cada voto, o programa deve perguntar ao usuário se ainda existe mais uma
//pessoa para votar, se sim, o usuário deve informar “SIM”, se não,
//informar “NÃO”. Ao final, deverá ser mostrado:

//Quantidade de votos para cada candidato, em branco e nulo;

//E o resultado final da eleição, que pode ser:

//Eleição cancelada: Se não houverem votantes ou se a soma dos votos nulos e brancos exceder a soma dos votos válidos (um voto é considerado válido quando for um voto em algum candidato);

//Empate: se a condição acima for falsa e a soma dos votos para o Daniel seja igual a soma dos votos para a Jean;

//Candidato eleito: se as condições acima forem falsas e a soma dos votos para um dos candidatos seja maior que a do outro.
var
codigo, votoDaniel, votoJean, votoBranco, votoNulo, somaVotosValidos, somaBrancosNulo, somaTotal: inteiro
resposta: caracter
inicio
ESCREVAL ("Seja bem vindo usuário!")
ESCREVAL
ESCREVAL ("Candidatos disponíveis para votação:")
ESCREVAL ("Daniel - 15")
ESCREVAL ("Jean - 75")
ESCREVAL ("Voto em Branco - 0")
ESCREVAL ("Voto Nulo - Outros valores.")
ESCREVAL
votoDaniel <- 0
votoJean <- 0
ESCREVAL ("Existem votantes na eleição? Digite Sim ou Não.")
LEIA (resposta)

enquanto (resposta="Sim") faca

   ESCREVAL
   ESCREVAL ("Digite o código que você deseja")
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
   ESCREVAL ("Eleição cancelada.")
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
ESCREVAL ("A quantidade de votos para Daniel é dê:", votoDaniel)
ESCREVAL
ESCREVAL ("A quantidade de votos para Jean é dê:", votoJean)
ESCREVAL
ESCREVAL ("A quantidade de votos em branco é dê:", votoBranco)
ESCREVAL
ESCREVAL ("A quantidade de votos nulos é dê:", votoNulo)
fimalgoritmo
