algoritmo "Protocolo Padr�o"
// Fun��o : Informar a idade, o g�nero e o sal�rio de um grupo de indeterminado de pessoas.
// Autor :  Felipe Goulart.
//Fa�a um algoritmo que pe�a a idade, o sexo e o sal�rio de um grupo
//indeterminado de pessoas. O algoritmo deve encerrar quando o usu�rio
//informar �Fim� para a pergunta �Deseja continuar?�. Ao final, deve ser mostrado:

//a) a m�dia de sal�rio do grupo;
//b) a m�dia de todas as idades;
//c) a quantidade de mulheres com sal�rio at� R$1000,00.
var
resposta: caracter
idade, genero: inteiro
salario, somaSalario, contadoraPessoas, mediaSalario, somaIdade, mediaIdade, qntFeminino: real
inicio
ESCREVAL ("Seja bem vindo, funcion�rio!")
ESCREVAL
ESCREVAL ("Voc� ira informar a sua idade, seu genero e seu sal�rio para o algoritmo informar")
ESCREVAL ("a m�dia de sal�rio do grupo, a m�dia de todas as idades e a quantidade de mulheres")
ESCREVAL ("com sal�rio at� R$1000,00 e para finalizar o algoritmo voc� dever� escrever Fim ao")
ESCREVAL ("final dele.")
ESCREVAL
repita

   ESCREVAL ("Informe a sua idade:")
   LEIA (idade)
   somaIdade <- somaIdade + idade
   ESCREVAL ("Informe o seu g�nero. Digite 1 ou 2.")
   ESCREVAL ("1- para Masculino.")
   ESCREVAL ("2- para Feminino.")
   LEIA (genero)
   contadoraPessoas <- contadoraPessoas + 1
   enquanto (genero<>1) E (genero<>2) faca
      ESCREVAL ("G�nero incorreto ou inexistente.")
      ESCREVAL ("Por gentileza, digite um g�nero v�lido.")
      LEIA (genero)
   fimenquanto
   ESCREVAL ("Por fim, informe o seu sal�rio:")
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
ESCREVAL ("A m�dia de idade das pessoas � d�:", mediaIdade)
ESCREVAL
ESCREVAL ("A m�dia do sal�rio das pessoas � d�: R$", mediaSalario:2:2)
ESCREVAL
ESCREVAL ("A quantidade de mulheres com o sal�rio at� R$1000 � d�:", qntFeminino)
fimalgoritmo
