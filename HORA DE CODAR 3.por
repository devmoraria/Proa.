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
    explode()
   }senao se (opcao == 2) {
    divide()
   }senao se (opcao == 3) {
    menos()
   }senao se (opcao==4){
    mediaritmetica()
   }senao se(opcao==5){
    mediadois()
   }senao se(opcao==6){
   	alunos()
   }senao se(opcao==7){
    	media_aluno()
   }senao se(opcao==8){
     sequencia_maluca()
   }senao se(opcao==9){
    	ate110()
   }senao se(opcao==10){
    	intervalo()
   }senao se(opcao==11){
   	tabuada() 	
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
    escreva("===========================================================\n")
    escreva("                     MENU HORA DE CODAR 3          \n")
    escreva("===========================================================\n")
    escreva(" 1 - EXPLOSÃO KABOOM!\n")
    escreva(" 2 - DIVISÃO TOPZEIRA <3\n")
    escreva(" 3 - MENOS 10s\n")
    escreva(" 4 - MÉDIA ARITMÉTICA DOS NÚMEROS INTEIROS ENTRE 15 & 100.\n")
    escreva(" 5 - MÉDIA DE DOIS NÚMEROS\n")
    escreva(" 6 - CALCULAR MÉDIA DE ALUNOS, ACIMA DE 9.5\n")
    escreva(" 7 - MÉDIA DE 6 NOTAS\n")
    escreva(" 8 - NÚMEROS EXISTENTES ATÉ? \n") 
    escreva(" 9 - ATÉ 110\n")
    escreva("10 - NÚMEROS EXISTENTES ENTRE 24 E 42.\n")
    escreva("11 - TABUADA DO NÚMERO DESEJADO :)\n")
    escreva(" 0 - Sair\n")
    escreva("==========================================================\n")
    }
	funcao explode()
	{
		inteiro contador = 30 
		enquanto (contador >=1){
          se (contador >0){
          escreva(contador,"\n")}
          se(contador <=1)
          escreva ("EXPLOSÃO!")
          contador = contador -1 
		}			
		}
	 funcao divide(){
		 real x,y,z
		 escreva ("Digite um número: \n")
		 leia(x)
		 enquanto (x<= 0) {
           escreva("Valor inválido! Digite primeiro valor novamente: ")
           leia(x)}
		 escreva("Digite o segundo número: \n")
		 leia(y)
		 enquanto (y<= 0) {
           escreva("Valor inválido! Digite segundo valor novamente: ")
           leia(y)}
           z=(x/y)
		 escreva ("A divisão é: ",z)	}
	funcao menos(){
		inteiro contador = 10 
		enquanto (contador >=1){
          se (contador >0){
          escreva(contador,"\n")}
          se(contador <=1)
          escreva ("Fim.")
          contador = contador -1
	}
	}
	funcao mediaritmetica()
	{
		real soma,total 
		real media
		soma = 0 
		total = 0
		para (inteiro i =15; i<=100; i++){
			soma=soma+i
			total=total+1}
			media=(soma/total)
			escreva("Soma: ",soma,"\n")
			escreva("Total de números: ",total,"\n")
			escreva("Média: ",media,"\n")				
		}
			funcao mediadois()
	{    real media,soma,total
		inteiro n,n1
		soma = 0 
		total= 0
		escreva("Digite um numero: \n")
		leia(n)
		escreva("Digite outro, maior que o anterior: \n")
		leia(n1)
		enquanto(n1<=n){
		escreva("Número inválido Boroca, tente novamente: \n")
		leia(n1)}
		para (inteiro i=n; i<=n1; i++){
			soma=soma+i
			total=total+1}
			media=(soma/total)
	     escreva("A sua média é: ",media)					
		}
		funcao alunos() {
	inteiro aprovados=0
	 cadeia r
	 real media,n,n1
	faca 
	{    
		escreva("Digite a 1° nota: \n")
		leia(n)
		enquanto(n>10 ou n<0){
		escreva ("Não existe essa opção prof. Tente novamente: \n")
		escreva("Digite a 1° nota:  \n")
		leia(n)}
		escreva("Digite a 2° nota: \n")
		leia(n1)
		enquanto(n1>10 ou n1<0){
		escreva ("Não existe essa opção prof. Tente novamente: \n")
		leia(n1)}
			media=(n+n1)/2 
	     escreva("A sua média é: \n",media,"\n")	
	     se (media>=9.5){
	     aprovados=aprovados+1
	     escreva("Parabéns, você foi aprovado!\n")}
	     senao{
	     escreva("Que peninha, você foi reprovado!\n")	}
	     escreva("Calcular a nota de outro aluno, prof? S/N\n")
	     leia(r)
	       }    enquanto(r=="S" ou r=="s")
	       escreva("Total de Aprovados: ",aprovados)   	
		}   
    funcao media_aluno(){
    real notas[6],n,media,soma
    inteiro i
    soma=0
    para (i=0; i<6; i++){
    escreva("Digite a ", i + 1, " nota: ")
    leia(n)
    enquanto (n < 0 ou n > 10){ 
    escreva("Número inválido! Tente novamente: \n")
    leia(n)}
    notas[i]=n
    soma=soma+n}
    media=soma/6
    escreva("Sua média final é: ",media)
}
    funcao sequencia_maluca(){
    real n
    escreva("Digite um número: ")
    leia(n)
    para (inteiro i =1; i <=n; i++)
    escreva (i,"\n")
}
   funcao ate110(){
    para (inteiro i =101; i<=110; i++)
    escreva (i,"\n")
}
    funcao intervalo(){
    real n
    inteiro i,dentro,fora
    dentro=0
    fora=0
    para (i = 0; i < 10; i++){
    escreva("Digite 10 números: \n")
    leia(n)
    se (n>=24 e n <=42){
    	dentro=dentro+1}
    	senao { fora=fora+1}}
    	escreva("Quantidade dentro do intervalo: ", dentro)
     escreva("\nQuantidade fora do intervalo: ", fora)
}
    funcao tabuada(){
    inteiro n,z
    escreva("Até qual número você quer? \n")
    leia(n)   
    para(z =1; z<=10; z++){
    	escreva(n,"x",z," igual: ",n*z,"\n")
    }
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1985; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
