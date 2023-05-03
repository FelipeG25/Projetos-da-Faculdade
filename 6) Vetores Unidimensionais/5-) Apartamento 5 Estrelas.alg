algoritmo "Apartamento 5 Estrelas"
// Função :
// Autor : Felipe Goulart
//Um síndico de condomínio deseja fazer um pequeno cadastro de todas as
//famílias que moram em seus 4 apartamentos.Para tanto, ele precisa inserir
//no software as seguintes informações: sobrenome da família, apartamento,
//quantidade de moradores e a renda da família. Após inseridas as informações,
//o síndico deve poder pesquisar as famílias digitando o apartamento desejado,
//e o programa deve mostrar todas as informações desta família, e ainda a renda
//média por morador. Ele deve poder realizar essa pesquisa quantas vezes quiser.
//Quando o síndico não quiser ver outra família, o programa deve ser encerrado.
var
apartamento: vetor [1..4] de inteiro
sobrenome: vetor [1..4] de caractere
qntMoradores: vetor [1..4] de inteiro
rendaFamilia: vetor [1..4] de real
media: vetor [1..4] de real
contadora, apartamentoFinal: inteiro
verificador: logico
resposta: caractere
inicio
verificador <- Falso
ESCREVAL ("Seja bem vindo, usuário!")
ESCREVAL
para contadora de 1 ate 4 passo 1 faca
   ESCREVAL
   ESCREVAL ("Informe o número do ",contadora,"ª apartamento.")
   LEIA (apartamento[contadora])
   ESCREVAL ("Informe o sobrenome da ",contadora,"ª família.")
   LEIA (sobrenome[contadora])
   ESCREVAL ("Informe a quantidade de moradores do ",contadora,"ª apartamento.")
   LEIA (qntMoradores[contadora])
   ESCREVAL ("Informe a renda da ",contadora,"ª família.")
   LEIA (rendaFamilia[contadora])
fimpara
ESCREVAL

repita
   ESCREVAL ("Informe o número do apartamento que deseja.")
   LEIA (apartamentoFinal)

   para contadora de 1 ate 4 passo 1 faca
      se (apartamento[contadora] = apartamentoFinal) entao

         verificador <- verdadeiro
         media[contadora] <- rendaFamilia[contadora] / qntMoradores[contadora]
         ESCREVAL ("O sobrenome da família é: ", sobrenome[contadora])
         ESCREVAL ("A quantidade de moradores do apartamento é dê:", qntMoradores[contadora])
         ESCREVAL ("A renda da família é dê: R$", rendaFamilia[contadora]:2:2)
         ESCREVAL ("A média da família é dê: R$", media[contadora]:2:2)
      fimse
   fimpara

   se (verificador = falso) entao
      ESCREVAL ("Apartamento não encontrado, tente de novo.")
   fimse

   ESCREVAL ("Você deseja continuar a ver as informações dos apartamentos?")
   ESCREVAL ("Escreva Sim se deseja continuar ou Não se deseja finalizar.")
   LEIA (resposta)
   verificador <- falso
ate (resposta="Não")
fimalgoritmo

