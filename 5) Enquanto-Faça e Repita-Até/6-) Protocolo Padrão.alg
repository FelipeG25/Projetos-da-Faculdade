algoritmo "Protocolo Padrão"
// Função : Informar a idade, o gênero e o salário de um grupo de indeterminado de pessoas.
// Autor :  Felipe Goulart.
//Faça um algoritmo que peça a idade, o sexo e o salário de um grupo
//indeterminado de pessoas. O algoritmo deve encerrar quando o usuário
//informar “Fim” para a pergunta “Deseja continuar?”. Ao final, deve ser mostrado:

//a) a média de salário do grupo;
//b) a média de todas as idades;
//c) a quantidade de mulheres com salário até R$1000,00.
var
resposta: caracter
idade, genero: inteiro
salario, somaSalario, contadoraPessoas, mediaSalario, somaIdade, mediaIdade, qntFeminino: real
inicio
ESCREVAL ("Seja bem vindo, funcionário!")
ESCREVAL
ESCREVAL ("Você ira informar a sua idade, seu genero e seu salário para o algoritmo informar")
ESCREVAL ("a média de salário do grupo, a média de todas as idades e a quantidade de mulheres")
ESCREVAL ("com salário até R$1000,00 e para finalizar o algoritmo você deverá escrever Fim ao")
ESCREVAL ("final dele.")
ESCREVAL
repita

   ESCREVAL ("Informe a sua idade:")
   LEIA (idade)
   somaIdade <- somaIdade + idade
   ESCREVAL ("Informe o seu gênero. Digite 1 ou 2.")
   ESCREVAL ("1- para Masculino.")
   ESCREVAL ("2- para Feminino.")
   LEIA (genero)
   contadoraPessoas <- contadoraPessoas + 1
   enquanto (genero<>1) E (genero<>2) faca
      ESCREVAL ("Gênero incorreto ou inexistente.")
      ESCREVAL ("Por gentileza, digite um gênero válido.")
      LEIA (genero)
   fimenquanto
   ESCREVAL ("Por fim, informe o seu salário:")
   LEIA (salario)
   somaSalario <- somaSalario + salario
   se (genero=2) E (salario<=1000) entao
      qntFeminino <- qntFeminino + 1
   fimse
   ESCREVAL
   ESCREVAL ("Deseja continuar? Digite Sim para continuar e Fim para terminar.")
   LEIA (resposta)
ate (resposta="Fim")

mediaIdade <- somaIdade / contadoraPessoas
mediaSalario <- somaSalario / contadoraPessoas

ESCREVAL
ESCREVAL ("A média de idade das pessoas é dê:", mediaIdade)
ESCREVAL
ESCREVAL ("A média do salário das pessoas é dê: R$", mediaSalario:2:2)
ESCREVAL
ESCREVAL ("A quantidade de mulheres com o salário até R$1000 é dê:", qntFeminino)
fimalgoritmo
