algoritmo "Netflix tá cara"
// Função : Recomendar filmes
// Autor : Felipe Goulart
//Desenvolva uma solução que apresente opções para o usuário
//assistir na Netflix:

//categoria         subcategoria                opção
// filmes             suspense              A orfã
//                    ação                  Batman: O cavaleiro das trevas
//séries              drama                 Revenge
//                    comédia               How I met your mother
//documentários       investigação          Deep Web
//                    ciência               Terra

//Ao final, mostre na tela a opção que o usuário escolheu.
var
codigo, subcategoria: inteiro
inicio
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
ESCREVAL ("Código de categorias:")
ESCREVAL ("-1 -> Filmes.")
ESCREVAL ("-2 -> Séries.")
ESCREVAL ("-3 -> Documentários.")
ESCREVAL
ESCREVAL ("Escreva um código")
LEIA (codigo)

ESCREVAL

escolha (codigo)
caso 1
   ESCREVAL ("Escolha 1 para subcategoria suspense e 2 para subcategoria ação.")
   LEIA (subcategoria)
   escolha (subcategoria)
   caso 1
      ESCREVAL
      ESCREVAL ("Você gostaria de assistir o filme A Orfã?")
   caso 2
      ESCREVAL
      ESCREVAL ("Você gostaria de assistir o filme Batman: O Cavaleiro das Trevas?")
   fimescolha
fimescolha

ESCREVAL

escolha (codigo)
caso 2
   ESCREVAL ("Escolha 1 para subcategoria drama e 2 para subcategoria comédia.")
   LEIA (subcategoria)
   escolha (subcategoria)
   caso 1
      ESCREVAL
      ESCREVAL ("Você gostaria de assistir a série Revenge?")
   caso 2
      ESCREVAL
      ESCREVAL ("Você gostaria de assistir a série How I Met You Mother?")
   fimescolha
fimescolha

ESCREVAL

escolha (codigo)
caso 3
   ESCREVAL ("Escolha 1 para subcategoria investigação e 2 para subcategoria ciência.")
   LEIA (subcategoria)
   escolha (subcategoria)
   caso 1
      ESCREVAL
      ESCREVAL ("Você gostaria de assistir ao documentário Deep Web?")
   caso 2
      ESCREVAL
      ESCREVAL ("Você gostaria de assistir ao documentário Terra?")
   outrocaso
      ESCREVAL ("Código não encontrado.")
   fimescolha
fimescolha

fimalgoritmo
