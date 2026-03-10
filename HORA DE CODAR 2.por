programa
{
	funcao inicio()
	{ 
        inteiro opcao

        faca {
            mostrar_menu()
            escreva("Digite uma opcao: ")
            leia(opcao)
    se (opcao == 1) {
    analisa_numero()
   }senao se (opcao == 2) {
    numero_maior()
   }senao se (opcao == 3) {
    numeros_maiores()
   }senao se (opcao == 4) {
    numeros_maiores_soma()
   }senao se (opcao == 5) {
    media()
   }senao se (opcao == 6) {
    menor()
   }senao se (opcao == 7) {
    menos72()
   }senao se (opcao == 8) {
    media_de_10()
   }senao se (opcao == 9) {
    descubra_Idade()
   }senao se (opcao == 10) {
    pesoIdeal()
   }senao se (opcao == 11) {
    calculadoraFinal()
   }senao se (opcao == 0) {
   escreva("\nSaindo... Valeu por testar!\n")
   }senao {
    escreva("\nOpcao invalida. Tente novamente.\n")
   }
    se (opcao != 0) {
    escreva("\n--- Voltando ao menu... ---\n\n")
    }
    } enquanto (opcao != 0)
    }

    funcao mostrar_menu()
    {
    escreva("=====================================\n")
    escreva("          MENU HORA DE CODAR 2       \n")
    escreva("=====================================\n")
    escreva(" 1 - Analisa numero (maior entre dois)\n")
    escreva(" 2 - Numero maior (positivo/zero/negativo)\n")
    escreva(" 3 - Maior entre tres numeros\n")
    escreva(" 4 - Soma dos dois maiores (entre três)\n")
    escreva(" 5 - Média de 6 numeros\n")
    escreva(" 6 - Primeiro, ultimo e maior (4 valores)\n")
    escreva(" 7 - Soma dos menores que 72 (6 valores)\n")
    escreva(" 8 - Média de quatro (0 < n < 10)\n")
    escreva(" 9 - Pode votar este ano (por ano de nascimento)\n")
    escreva("10 - Peso ideal (1-fem, 2-masc)\n")
    escreva("11 - Micro calculadora (1 +, 2 -, 3 /, 4 *)\n")
    escreva(" 0 - Sair\n")
    escreva("=====================================\n")
    }
	
	funcao analisa_numero()
	{
		
	real v,v1
	escreva ("Digite um número: ")
	leia (v)
	escreva ("Digite outro número: ")
	leia (v1)
	se (v > v1) {
	escreva ("Esse é o maior número digitado... ",v,"\n") }
	senao se( v < v1){		
	escreva ("Esse é o maior número digitado... ",v1,"\n")}
	senao 
	escreva ("Seus números são iguais... \n")
       }
       
     funcao numero_maior(){
     real x
	escreva("Diga-me um número my friend...\n")
	leia(x)
	se  (x > 0) escreva ("Seu número é positivo, bebê.\n") 
	senao se ( x == 0) 
	escreva ("Seu número é zero, baby.\n")
	senao 
	escreva ("Pipipi seu numéro é negativo, bb...\n")
       }
	
	funcao numeros_maiores ()		     
{    real y,z,max	 
	escreva ("Digite um número: ")
	leia (max)
	escreva ("Digite outro: ")
	leia (y)
	escreva ("Digite só mais um kkkk: ")
	leia (z)
	se (y > max) max=y
	se (z > max) max=z
	escreva ("Maior é: ",max,"\n")
	}
	
	funcao numeros_maiores_soma()
	{
	real y,z,x,menor,soma
	escreva ("Digite um número: ")
	leia (x)
	menor =x
	escreva ("Digite outro: ")
	leia (y)
	se (y<menor) menor=y
	escreva ("Digite só mais um kkkk: ")
	leia (z)
	se (z<menor) menor=z
	soma = (x+z+y-menor)
	escreva ("A soma dos dois maiores números, é: ",soma,"\n")
	escreva ("E o seu número menor, é: ",menor,"\n")
	}
	
	funcao media()
	{
	escreva ("Opa, escreva 6 números para realizar a média deles.\n")
     real numeros[6],media
	real soma =0.0
	inteiro i
	para (i = 0; i < 6; i++) {
	leia(numeros[i])
	soma = soma + numeros[i]}
	media = soma / 6
	para (i = 0; i < 6; i++) {
	escreva (numeros[i],"\n")
    }escreva ("A sua média é: ",media,"\n")
		         }
	funcao menor()
    {
     real n1, n2, n3, n4, maior
     escreva("Digite um valor: ")
     leia(n1)
     escreva("Digite o mais um valor: ")
     leia(n2)
     escreva("Digite outro valor: ")
     leia(n3)
     escreva("Digite o valor do juízo final: ")
     leia(n4)// Descobrindo o maior valor
     maior = n1
     se (n2 > maior) 
     maior = n2       
     se (n3 > maior) 
     maior = n3
     se (n4 > maior) 
     maior = n4// Exibindo os resultados
     escreva("\nPrimeiro valor: ", n1)
     escreva("\nÚltimo valor: ", n4)
     escreva("\nMaior valor: ", maior)
    }
    funcao menos72()
    {
    real numeros[6]
    real soma
    inteiro i
    soma = 0
    para (i = 0; i < 6; i++)
   {
    escreva("Digite o ", (i + 1), "º número: ")
    leia(numeros[i])
    se (numeros[i] < 72) 
    soma = soma + numeros[i]          
   }        // Exibe todos os valores
    escreva("\nValores informados: ")
    para (i = 0; i < 6; i++)
   {
    escreva(numeros[i])
    se (i < 5) 
    escreva(", ")      
   }  // Exibe a soma
    escreva("\nSoma dos valores inferiores a 72: ", soma)
    }
    funcao media_de_10()
   {real n1,n2,n3,n4,media
    logico validos
    escreva ("Digite o 1° número (entre 0 e 10) ")
    leia (n1)
    escreva ("Digite o 2° número (entre 0 e 10) ")
    leia (n2)
    escreva ("Digite o 3° número (entre 0 e 10) ")
    leia (n3)
    escreva ("Digite o 4° número (entre 0 e 10) ")
    leia (n4)
    validos = (n1 > 0 e n1 < 10) e
    (n2 > 0 e n2 < 10) e
    (n3 > 0 e n3 < 10) e
    (n4 > 0 e n4 < 10)
    se (nao validos){
    escreva ("Números Inválidos, escre um número (entre 0 e 10)\n")
    escreva ("Tente novamente, por gentileza...\n")
    }senao {
    media = (n1+n2+n3+n4) /4
    escreva ("Média igual: ",media,"\n")
    se (media>5){
    escreva ("Você passou no teste!\n")}
    senao
    escreva("Tente Novamente!")
    } 
    }
    funcao descubra_Idade()
    {inteiro anoNasc,anoAtual,idade
    escreva("\nOpa, você nasceu em que ano?\n")
    leia(anoNasc)
    anoAtual = 2026
    idade = (anoAtual-anoNasc)
    se (idade >= 16)
    escreva ("\nVocê pode votar!\n")
    senao
    escreva ("\nEspere mais um pouco, jajá você poderá votar!\n")      
    }
    funcao pesoIdeal()
  { real h,pesoIdeal
    inteiro genero
    logico entradaValida
    faca {
    entradaValida = verdadeiro
    escreva ("Informe sua altura em metros: \n")
    leia(h)
    escreva ("Informe seu genero ao nascer: (1-Feminino 2-Masculino)\n")
    leia(genero)
    se (h<=0){
    escreva ("Informe uma altura real.\n")
    entradaValida=falso}
    se (genero !=1 e genero !=2){
    escreva ("Informe um genêro disponível.\n")
    entradaValida = falso}
    se (nao entradaValida){
    escreva ("Escreva tente novamente.")}}
    enquanto (nao entradaValida)
    se (genero ==1){
    pesoIdeal = (62.1*h) - 44.7
    escreva ("O peso ideal para o corpo feminino é: ",pesoIdeal,"Kg\n")}
    senao{
    pesoIdeal = (72.7*h) - 58
    escreva ("O peso ideal para o corpo masculino é: ",pesoIdeal,"Kg\n")  
      }
    }
    funcao calculadoraFinal()
    {
    inteiro a, b, op
    real resultado
    escreva("Digite o primeiro inteiro: ")
    leia(a)
    escreva("Digite o segundo inteiro: ")
    leia(b)
    escreva("Operacao (1-Adição, 2-Subtração, 3-Divisão, 4-Multiplicação): ")
    leia(op)
    se (op == 1) {
    resultado = a + b
    escreva("Resultado (adição): ", resultado, "\n")
  } senao se (op == 2) {
    resultado = a - b
    escreva("Resultado (subtração): ", resultado, "\n")
   }senao se (op == 3) {
    se (b == 0) {
    escreva("Erro: divisao por zero não é permitida.\n")
  } senao {
    resultado = (a * 1.0) / b
    escreva("Resultado (divisão): ", resultado, "\n")}
   }senao {
    resultado = a * b
    escreva("Resultado (multiplicação): ", resultado, "\n")
        }
    }	         
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */