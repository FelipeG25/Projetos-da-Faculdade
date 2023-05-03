algoritmo "Loja Lolja"
// Função : Informar o valor da peça de roupa escolhida
// Autor : Felipe Goulart
//Faça um programa que pergunte ao usuário se ele pretende comprar uma roupa
//masculina ou feminina. Além disso, o usuário deve informar que tipo de
//roupa pretende comprar (masculina: calça ou suéter.
//feminina: vestido ou saia), mediante essas informações, o valor da peça
//deverá ser mostrado, de acordo com a tabela abaixo:
//masculina: Calça R$100 e Suéter R$90
//feminina: Vestido R$80 e Saia R$65
var
feminina, masculina, genero, pecaRoupa: caractere
valorCalca, valorSueter, valorVestido, valorSaia, calca, sueter, vestido, saia: inteiro
inicio
ESCREVAl ("Seja bem vindo a loja Lolja, usuário!")
ESCREVAL
ESCREVAL ("Temos calça e suéter para o gênero masculina e vestido e saia para o")
ESCREVAL ("gênero feminina")
ESCREVAL
ESCREVAL ("Você deseja comprar uma peça de roupa feminina ou masculina?")
LEIA (genero)
ESCREVAL
se (genero<>"masculina") E (genero<>"feminina") entao
   ESCREVAL ("Gênero incorreto")
senao
   ESCREVAL ("Que peça de roupa você deseja comprar?")
   LEIA (pecaRoupa)

   se (pecaRoupa="calca") E (genero="masculina") entao
      calca <- 100
      ESCREVAL ("O valor da sua calça é de: R$", calca)
   senao
      se (pecaRoupa="sueter") E (genero="masculina") entao
         sueter <- 90
         ESCREVAL ("O valor do seu suéter é de: R$", sueter)
      senao
         se (pecaRoupa="vestido") E (genero="feminina") entao
            vestido <- 80
            ESCREVAL ("O valor do seu vestido é de: R$", vestido)
         senao
            se (pecaRoupa="saia") E (genero="feminina") entao
               saia <- 65
               ESCREVAL ("O valor da sua saia é de: R$", saia)
            senao
               ESCREVAL
               ESCREVAL ("Peça de roupa não encontrada")
            fimse
         fimse
      fimse
   fimse
fimse
fimalgoritmo

//Variável constante porque ele atribui o valor fixo para dentro de uma variável

//Utilizar as aspas para verificar uma variável do tipo caractere
