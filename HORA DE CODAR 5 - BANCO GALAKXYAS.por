programa
{
	inclua biblioteca Calendario --> cal
	
	// Variáveis Mestres
	real saldo = 0.0
	cadeia nome
	cadeia senha_conta = "3589" // Senha padrão inicial
	logico conta_ativa = falso

	funcao inicio() 
	{inteiro escolha_inicial
		
		escreva("================================================\n")
		escreva("          BEM-VINDO AO BANCO GALAKSYAS :)       \n")
		escreva("================================================\n")
		escreva("1. Entrar em conta existente\n")
		escreva("2. Criar nova conta\n")
		escreva("Escolha uma opção: ")
		leia(escolha_inicial)
		escolha(escolha_inicial)
		{caso 1:
		 logarExistente()
		 pare
		 caso 2:
		 criarConta()
		 pare
		 caso contrario:
		 escreva("Opção inválida. Reiniciando...\n")
		 inicio()}}
	      funcao logarExistente(){
		 escreva("\nInforme o seu nome: ")
		 leia(nome)
		 se (validarAcesso()) {
		 saldo = 150.0 // Usuários já começam com saldo 150
		 conta_ativa = verdadeiro
		 escreva("\nOlá ", nome, ", é um prazer ter você de volta por aqui!\n")
		 menu()}
		 senao {
		 logarExistente()}}
	      funcao criarConta(){
		 escreva("\n--- CADASTRO ---\n")
		 escreva("Informe o seu nome: ")
		 leia(nome)
		 escreva("Crie uma senha para sua nova conta: ")
		 leia(senha_conta)	
		 saldo = 0.0 // Contas novas zeradas
		 conta_ativa = verdadeiro	
		 escreva("\nConta criada com sucesso! Olá ", nome, ", é um prazer ter você por aqui!\n")
		 menu()}
	      funcao menu() {
	      inteiro opcao	
		 escreva("\n--- MENU PRINCIPAL ---\n")
		 escreva("1. Saldo\n")
		 escreva("2. Extrato\n")
		 escreva("3. Saque\n")
		 escreva("4. Depósito\n")
		 escreva("5. Transferência\n")
		 escreva("6. Sair\n")
		 escreva("Escolha uma opção: ")
		 leia(opcao)
		 escolha (opcao) {
		 caso 1: verSaldo() pare
		 caso 2: verExtrato() pare
		 caso 3: fazerSaque() pare
		 caso 4: fazerDeposito() pare
		 caso 5: fazerTransferencia() pare
		 caso 6: sair() pare
		 caso contrario: erro()}}
	// Validando o Acesso <3
	funcao logico validarAcesso() 
	{	cadeia senha_digitada
		escreva("Digite a senha de acesso: ")
		leia(senha_digitada)
		se (senha_digitada == senha_conta) {
		retorne verdadeiro} senao {escreva("Senha incorreta!\n")
		retorne falso}}
          funcao logico horarioPermitido() 
     	{inteiro hora_atual = cal.hora_atual(falso)
		se (hora_atual >= 22 ou hora_atual < 6) {
			escreva("\n[ACESSO BLOQUEADO] Saques e transferências permitidos apenas das 06h às 22h.\n")
			retorne falso}
		retorne verdadeiro}

	// Transações :)
	funcao verSaldo() 
	{
		se (validarAcesso()) {
			escreva("\n[SALDO] Seu saldo atual é: R$ ", saldo, "\n")} senao {verSaldo() }
		menu()
	}

	funcao verExtrato()
	{se (validarAcesso()) {
			escreva("\n--- EXTRATO RECENTE ---\n")
			se (saldo == 0) {
			escreva("- Sem movimentações recentes.\n")} senao {
			escreva("- Saldo base de conta existente: ",saldo,"\n")
			}
			escreva("------------------------------------------\n")} senao {
			verExtrato()}
		menu()}
	funcao fazerSaque() 
	{
		se (horarioPermitido()) {
		se (validarAcesso()) {
		real valor_saque
		escreva("Qual o valor para saque? ")
		leia(valor_saque)
		se (valor_saque <= 0 ou valor_saque > saldo) {
		escreva("Operação não autorizada.\n")
	   } senao {
	     saldo = saldo - valor_saque
		escreva("Saque realizado!\n")}
	   } senao {
		fazerSaque()}}
		menu()}
	funcao fazerDeposito() 
	{real valor_deposito
		escreva("Qual o valor para depósito? ")
		leia(valor_deposito)
		se (valor_deposito <= 0) {
		escreva("Operação não autorizada.\n")}
		senao {
		saldo = saldo + valor_deposito
		escreva("Depósito realizado com sucesso!\n")}
		menu()
	}funcao fazerTransferencia()
	{se (horarioPermitido()) {
	se (validarAcesso()) {
	inteiro numero_conta
	real valor_trans
     escreva("Informe o número da conta de destino: ")
	leia(numero_conta)			
	escreva("Qual o valor da transferência? ")
	leia(valor_trans)
	se (valor_trans <= 0 ou valor_trans > saldo) {
	escreva("Operação não autorizada.\n")
   } senao {
     saldo = saldo - valor_trans
	escreva("Transferência concluída!\n")}} senao {
	fazerTransferencia()}}
	menu()}
	funcao erro() 
	{escreva("\nOpção Inválida!\n")
	menu()}
     funcao sair() {
     escreva("\n", nome, ", foi um prazer ter você por aqui!\n")}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3959; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
