algoritmo "Netflix t� cara"
// Fun��o : Recomendar filmes
// Autor : Felipe Goulart
//Desenvolva uma solu��o que apresente op��es para o usu�rio
//assistir na Netflix:

//categoria         subcategoria                op��o
// filmes             suspense              A orf�
//                    a��o                  Batman: O cavaleiro das trevas
//s�ries              drama                 Revenge
//                    com�dia               How I met your mother
//document�rios       investiga��o          Deep Web
//                    ci�ncia               Terra

//Ao final, mostre na tela a op��o que o usu�rio escolheu.
var
codigo, subcategoria: inteiro
inicio
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAL
ESCREVAL ("C�digo de categorias:")
ESCREVAL ("-1 -> Filmes.")
ESCREVAL ("-2 -> S�ries.")
ESCREVAL ("-3 -> Document�rios.")
ESCREVAL
ESCREVAL ("Escreva um c�digo")
LEIA (codigo)

ESCREVAL

escolha (codigo)
caso 1
   ESCREVAL ("Escolha 1 para subcategoria suspense e 2 para subcategoria a��o.")
   LEIA (subcategoria)
   escolha (subcategoria)
   caso 1
      ESCREVAL
      ESCREVAL ("Voc� gostaria de assistir o filme A Orf�?")
   caso 2
      ESCREVAL
      ESCREVAL ("Voc� gostaria de assistir o filme Batman: O Cavaleiro das Trevas?")
   fimescolha
fimescolha

ESCREVAL

escolha (codigo)
caso 2
   ESCREVAL ("Escolha 1 para subcategoria drama e 2 para subcategoria com�dia.")
   LEIA (subcategoria)
   escolha (subcategoria)
   caso 1
      ESCREVAL
      ESCREVAL ("Voc� gostaria de assistir a s�rie Revenge?")
   caso 2
      ESCREVAL
      ESCREVAL ("Voc� gostaria de assistir a s�rie How I Met You Mother?")
   fimescolha
fimescolha

ESCREVAL

escolha (codigo)
caso 3
   ESCREVAL ("Escolha 1 para subcategoria investiga��o e 2 para subcategoria ci�ncia.")
   LEIA (subcategoria)
   escolha (subcategoria)
   caso 1
      ESCREVAL
      ESCREVAL ("Voc� gostaria de assistir ao document�rio Deep Web?")
   caso 2
      ESCREVAL
      ESCREVAL ("Voc� gostaria de assistir ao document�rio Terra?")
   outrocaso
      ESCREVAL ("C�digo n�o encontrado.")
   fimescolha
fimescolha

fimalgoritmo
