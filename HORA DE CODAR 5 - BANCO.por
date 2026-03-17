programa
{
	
   	real saldo = 150.00// Float 
   	cadeia nome, senha_cadastrada, login_tentativa

	funcao inicio() {


		inteiro opcao 
          
		escreva("Olá. tudo bem? Aqui é o Banco PROA. Eu me chamo Galak, será um prazer te atender, aliás, poderia me informar o seu nome, por gentileza.\n")
          leia(nome)
          escreva("Então ",nome," é mais que um prazer te ter aqui, notei que não há um cadastro com este nome, vamos cria-la :)\n")
          escreva("Loading...")
          escreva("Por gentileza, insira uma senha com 4 caracteres ")
          leia(senha_cadastrada)
          
          


	}
          funcao menu(){

          inteiro opcao
          
		escreva("1. Ver saldo\n")
		escreva("2. Fazer depósito\n")
		escreva("3. Fazer saque\n")
		escreva("4. Fazer transfêrencia\n")
		escreva("5. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    		se (opcao == 1) {
    			verSaldo()
    		} senao se (opcao == 2) {
			fazerDeposito()
    		} senao se (opcao == 3) {
			fazerSaque()
    		} senao se (opcao == 4) {
		  	transf()		  
    		} senao se (opcao == 5) {
			sair()
    		} senao {
			erro()
    		}

	}

	funcao verSaldo(){
	    escreva("Seu saldo atual é: ", saldo, "\n")
	    inicio()
	}
	
	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
		} senao {
			saldo = saldo - saque
			verSaldo()
		}
	}

	funcao transf(){

          real trans
          escreva("Qual o valor para transferência? ")
          leia(trans)
          se (trans <=0){
          	escreva("Por favor, insira um número válido.")
          	transf()}
          	senao{
          		saldo= saldo-trans
          		verSaldo()
          	}
          }
	
	funcao erro() {
		escreva("Opção Inválida")
		inicio()
	}

	funcao sair(){
		escreva ("Foi um prazer ter você aqui, ",nome," esperamos que volte logo!")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
