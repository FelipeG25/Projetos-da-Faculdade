algoritmo "Loja Lolja"
// Fun��o : Informar o valor da pe�a de roupa escolhida
// Autor : Felipe Goulart
//Fa�a um programa que pergunte ao usu�rio se ele pretende comprar uma roupa
//masculina ou feminina. Al�m disso, o usu�rio deve informar que tipo de
//roupa pretende comprar (masculina: cal�a ou su�ter.
//feminina: vestido ou saia), mediante essas informa��es, o valor da pe�a
//dever� ser mostrado, de acordo com a tabela abaixo:
//masculina: Cal�a R$100 e Su�ter R$90
//feminina: Vestido R$80 e Saia R$65
var
feminina, masculina, genero, pecaRoupa: caractere
valorCalca, valorSueter, valorVestido, valorSaia, calca, sueter, vestido, saia: inteiro
inicio
ESCREVAl ("Seja bem vindo a loja Lolja, usu�rio!")
ESCREVAL
ESCREVAL ("Temos cal�a e su�ter para o g�nero masculina e vestido e saia para o")
ESCREVAL ("g�nero feminina")
ESCREVAL
ESCREVAL ("Voc� deseja comprar uma pe�a de roupa feminina ou masculina?")
LEIA (genero)
ESCREVAL
se (genero<>"masculina") E (genero<>"feminina") entao
   ESCREVAL ("G�nero incorreto")
senao
   ESCREVAL ("Que pe�a de roupa voc� deseja comprar?")
   LEIA (pecaRoupa)

   se (pecaRoupa="calca") E (genero="masculina") entao
      calca <- 100
      ESCREVAL ("O valor da sua cal�a � de: R$", calca)
   senao
      se (pecaRoupa="sueter") E (genero="masculina") entao
         sueter <- 90
         ESCREVAL ("O valor do seu su�ter � de: R$", sueter)
      senao
         se (pecaRoupa="vestido") E (genero="feminina") entao
            vestido <- 80
            ESCREVAL ("O valor do seu vestido � de: R$", vestido)
         senao
            se (pecaRoupa="saia") E (genero="feminina") entao
               saia <- 65
               ESCREVAL ("O valor da sua saia � de: R$", saia)
            senao
               ESCREVAL
               ESCREVAL ("Pe�a de roupa n�o encontrada")
            fimse
         fimse
      fimse
   fimse
fimse
fimalgoritmo

//Vari�vel constante porque ele atribui o valor fixo para dentro de uma vari�vel

//Utilizar as aspas para verificar uma vari�vel do tipo caractere
