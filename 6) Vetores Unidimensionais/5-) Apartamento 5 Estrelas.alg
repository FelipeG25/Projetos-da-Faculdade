algoritmo "Apartamento 5 Estrelas"
// Fun��o :
// Autor : Felipe Goulart
//Um s�ndico de condom�nio deseja fazer um pequeno cadastro de todas as
//fam�lias que moram em seus 4 apartamentos.Para tanto, ele precisa inserir
//no software as seguintes informa��es: sobrenome da fam�lia, apartamento,
//quantidade de moradores e a renda da fam�lia. Ap�s inseridas as informa��es,
//o s�ndico deve poder pesquisar as fam�lias digitando o apartamento desejado,
//e o programa deve mostrar todas as informa��es desta fam�lia, e ainda a renda
//m�dia por morador. Ele deve poder realizar essa pesquisa quantas vezes quiser.
//Quando o s�ndico n�o quiser ver outra fam�lia, o programa deve ser encerrado.
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
ESCREVAL ("Seja bem vindo, usu�rio!")
ESCREVAL
para contadora de 1 ate 4 passo 1 faca
   ESCREVAL
   ESCREVAL ("Informe o n�mero do ",contadora,"� apartamento.")
   LEIA (apartamento[contadora])
   ESCREVAL ("Informe o sobrenome da ",contadora,"� fam�lia.")
   LEIA (sobrenome[contadora])
   ESCREVAL ("Informe a quantidade de moradores do ",contadora,"� apartamento.")
   LEIA (qntMoradores[contadora])
   ESCREVAL ("Informe a renda da ",contadora,"� fam�lia.")
   LEIA (rendaFamilia[contadora])
fimpara
ESCREVAL

repita
   ESCREVAL ("Informe o n�mero do apartamento que deseja.")
   LEIA (apartamentoFinal)

   para contadora de 1 ate 4 passo 1 faca
      se (apartamento[contadora] = apartamentoFinal) entao

         verificador <- verdadeiro
         media[contadora] <- rendaFamilia[contadora] / qntMoradores[contadora]
         ESCREVAL ("O sobrenome da fam�lia �: ", sobrenome[contadora])
         ESCREVAL ("A quantidade de moradores do apartamento � d�:", qntMoradores[contadora])
         ESCREVAL ("A renda da fam�lia � d�: R$", rendaFamilia[contadora]:2:2)
         ESCREVAL ("A m�dia da fam�lia � d�: R$", media[contadora]:2:2)
      fimse
   fimpara

   se (verificador = falso) entao
      ESCREVAL ("Apartamento n�o encontrado, tente de novo.")
   fimse

   ESCREVAL ("Voc� deseja continuar a ver as informa��es dos apartamentos?")
   ESCREVAL ("Escreva Sim se deseja continuar ou N�o se deseja finalizar.")
   LEIA (resposta)
   verificador <- falso
ate (resposta="N�o")
fimalgoritmo

