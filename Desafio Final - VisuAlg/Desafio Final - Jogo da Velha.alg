algoritmo "Jogo da Velha"
// Função : Desafio Final.
// Autor : Felipe Goulart.
var
matriz: vetor [1..3,1..3] de caractere
linhas, colunas, posicao, contadora: inteiro
jogadas: caractere
posicaoJogada, vencedor: logico
inicio
matriz [1,1] <- "1"
matriz [1,2] <- "2"
matriz [1,3] <- "3"
matriz [2,1] <- "4"
matriz [2,2] <- "5"
matriz [2,3] <- "6"
matriz [3,1] <- "7"
matriz [3,2] <- "8"
matriz [3,3] <- "9"
ESCREVAL ("Sejam vindos!")
ESCREVAL
ESCREVAL ("Olá jogadores, sejam bem vindos ao Jogo da Velha.")
ESCREVAL ("Vocês terão 9 jogadas, onde o X começa primeiro")
ESCREVAL ("e depois será a vez da O.")
ESCREVAL
repita
   contadora <- contadora + 1
   ESCREVAL ("|",matriz[1,1],"|",matriz[1,2],"|",matriz[1,3],"|")
   ESCREVAL ("|",matriz[2,1],"|",matriz[2,2],"|",matriz[2,3],"|")
   ESCREVAL ("|",matriz[3,1],"|",matriz[3,2],"|",matriz[3,3],"|")
   ESCREVAL

   se (contadora MOD 2 = 0) entao
      jogadas <- "O"
   senao
      jogadas <- "X"
   fimse

   repita
      ESCREVAL ("Jogador ",jogadas," escolha uma posição para jogar.")
      LEIA (posicao)
   ate (posicao >= 1) E (posicao <= 9)



   repita
      posicaoJogada <- falso

      se (posicao = 1) entao
         se (matriz[1,1] = "X") OU (matriz[1,1] = "O") entao
            posicaoJogada <- verdadeiro
         fimse
      senao
         se (posicao = 2) entao
            se (matriz[1,2] = "X") OU (matriz[1,2] = "O") entao
               posicaoJogada <- verdadeiro
            fimse
         senao
            se (posicao = 3) entao
               se (matriz[1,3] = "X") OU (matriz[1,3] = "O") entao
                  posicaoJogada <- verdadeiro
               fimse
            senao
               se (posicao = 4) entao
                  se (matriz[2,1] = "X") OU (matriz[2,1] = "O") entao
                     posicaoJogada <- verdadeiro
                  fimse
               senao
                  se (posicao = 5) entao
                     se (matriz[2,2] = "X") OU (matriz[2,2] = "O") entao
                        posicaoJogada <- verdadeiro
                     fimse
                  senao
                     se (posicao = 6) entao
                        se (matriz[2,3] = "X") OU (matriz[2,3] = "O") entao
                           posicaoJogada <- verdadeiro
                        fimse
                     senao
                        se (posicao = 7) entao
                           se (matriz[3,1] = "X") OU (matriz[3,1] = "O") entao
                              posicaoJogada <- verdadeiro
                           fimse
                        senao
                           se (posicao = 8) entao
                              se (matriz[3,2] = "X") OU (matriz[3,2] = "O") entao
                                 posicaoJogada <- verdadeiro
                              fimse
                           senao
                              se (posicao = 9) entao
                                 se (matriz[3,3] = "X") OU (matriz[3,3] = "O") entao
                                    posicaoJogada <- verdadeiro
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      se (posicaoJogada = verdadeiro) entao
         ESCREVAL ("Posição já escolhida.")
         ESCREVAL ("Porfavor, escolha outra:")
         repita
            ESCREVAL ("Escolha uma posição para jogar.")
            LEIA (posicao)
         ate (posicao >= 1) E (posicao <= 9)
      fimse

   ate (posicaoJogada = falso)

   escolha (posicao)
   caso 1
      matriz[1,1] <- jogadas
   caso 2
      matriz[1,2] <- jogadas
   caso 3
      matriz[1,3] <- jogadas
   caso 4
      matriz[2,1] <- jogadas
   caso 5
      matriz[2,2] <- jogadas
   caso 6
      matriz[2,3] <- jogadas
   caso 7
      matriz[3,1] <- jogadas
   caso 8
      matriz[3,2] <- jogadas
   caso 9
      matriz[3,3] <- jogadas
   fimescolha

   se (matriz[1,1] = matriz[1,2]) E (matriz[1,2] = matriz[1,3]) entao
      vencedor <- verdadeiro
   senao
      se (matriz[2,1] = matriz[2,2]) E (matriz[2,2] = matriz[2,3]) entao
         vencedor <- verdadeiro
      senao
         se (matriz[3,1] = matriz[3,2]) E (matriz[3,2] = matriz[3,3]) entao
            vencedor <- verdadeiro
         senao
            se (matriz[1,1] = matriz[2,1]) E (matriz[2,1] = matriz[3,1]) entao
               vencedor <- verdadeiro
            senao
               se (matriz[1,2] = matriz[2,2]) E (matriz[2,2] = matriz[3,2]) entao
                  vencedor <- verdadeiro
               senao
                  se (matriz[1,3] = matriz[2,3]) E (matriz[2,3] = matriz[3,3]) entao
                     vencedor <- verdadeiro
                  senao
                     se (matriz[1,1] = matriz[2,2]) E (matriz[2,2] = matriz[3,3]) entao
                        vencedor <- verdadeiro
                     senao
                        se (matriz[1,3] = matriz[2,2]) E (matriz[2,2] = matriz[3,1]) entao
                           vencedor <- verdadeiro
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

   se (vencedor = verdadeiro) entao
      ESCREVAL ("O jogo acabou, o vencedor é ",jogadas,".")
   senao
      se (contadora = 9) entao
         ESCREVAL ("O jogo deu velha.")
      fimse
   fimse

ate (contadora = 9) OU (vencedor = verdadeiro)
fimalgoritmo
