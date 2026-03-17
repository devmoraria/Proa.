programa
{  
    funcao inicio()
    { 
    	
    real v1, v2, v3, v4, pi  
    cadeia pausa 
    inteiro opcao

     faca {
 

    escreva ("==================================\n")
    escreva (" CALCULADORA DE FORMAS GEOMÉTRICAS \n")
    escreva ("==================================\n")
    
   
     escreva ("\n --- MENU DE CÁLCULO --- \n")
     escreva ("1) Triângulo \n")
     escreva ("2) Trapêzio \n")
     escreva ("3) Paralelograma \n")
     escreva ("4) Quadrado \n")
     escreva ("5) Losângulo \n")
     escreva ("6) Círculo \n")
     escreva ("7) Retângulo \n")
     escreva ("0) Sair. \n")
     escreva (" ESCOLHA UM OPÇÃO: ")
     leia (opcao)
     escolha (opcao) { 
     
     
      
 // ---Triangulo 

  caso 1:{
 escreva ("CALCULANDO O TRIÂNGULO...","\n")  
   escreva ("Qual é a base do triângulo, bro? ")
       leia (v1)
      escreva ("E a altura? ")   
       leia (v2)
        se (v1 > 0 e v2 > 0) {
          v3 = (v1 * v2 /2)
       escreva ("HMMM, então sua area é: ", v3,"\n")
        escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
       senao {
       escreva ( " Números Inválidos, tente acima de 0... \n")
         escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
       pare }

 // ---Trapêzio

  caso 2: {
  escreva ("CALCULANDO O TRAPÉZIO...", "\n")
     escreva ("Qual é a base Maior, meu chapa? ")
     leia (v1)
     escreva ("E a sua base Menor, qual que é? ")
     leia (v2)
     escreva ("A sua altura? ")
      leia (v3) 
       se (v1 > 0 e v2 > 0 e v3 > 0 ) {
      v4 =(v1 + v2)* v3 /2 
       escreva ("Aham, então aréa é está: ", v4,"\n")
        escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
       senao {
       escreva ( " Números Inválidos, tente acima de 0... \n")
         escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
       pare }

 // ---Paralelograma

        caso 3: {
        escreva ("CALCULANDO O PARALELOGRAMA . . . " , "\n")
        escreva (" Qual a sua base? ")
        leia (v1)
        escreva (" Sua altura? " )
        leia (v2)
        se (v1 > 0 e v2 > 0 ){
        v3 = v1 * v2
        escreva (" Sua aréa é essa: ", v3,"\n")
         escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
       senao {
       escreva ( " Números Inválidos, tente acima de 0...\n")
         escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
        pare }
       

 // ---Quadrado

    caso 4:{
    escreva ("CALCULANDO O QUADRADINHO . . . ","\n")
    escreva (" Qual o valor do lado? ")
    leia (v1)
     se (v1 > 0 ) {
    v2 =(v1 * v1)
    escreva (" A aréa do seu quadradinho é essa: " ,v2,"\n")
    escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
    senao {
    	escreva ( " Números Inválidos, tente acima de 0... \n")
    	  escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
    pare }
    
// ---Losângulo

   caso 5: {
    escreva ("CALCULANDO O LOSÂNGULO . . . " , "\n")
    escreva (" Qual o valor da diagonal maior? ")
    leia (v1)
    escreva (" Valor da menor? ")
    leia (v2)
    se (v1 > 0 e v2 > 0 ) {
    v3 = (v1 * v2) /2 
    escreva (" A aréa do seu losângulo é: ",  v3, "\n")
    escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
      senao  {
    	escreva ( " Números Inválidos, tente acima de 0...\n")
    	escreva ( " Pressione ENTER para continuar..")
       leia ( pausa ) 
       limpa ()
    	}
    pare }

// ---Círculo

   caso 6: {
   escreva (" CALCULANDO CÍRCULO . . . " , "\n")
   escreva (" Qual o raio do círculo? ")
   leia (v1)
   pi = 3.14159265
   se (v1 > 0 ) {
   v2 = pi * ( v1 * v1) 
   escreva (" A aréa do seu círculo é: ", v2,"\n")
   escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
   senao {
   	escreva ( " Números Inválidos, tente acima de 0...\n") 
   	  escreva ( " Pressione ENTER para continuar...\n")
       leia ( pausa ) 
       limpa ()}
    pare 
    }

// ---Retângulo

    caso 7: {
     escreva (" CALCULANDO RETÂNGULO . . . \n")
     escreva (" Qual a base do retângulo? ")
     leia (v1)
      escreva (" Qual altura dele? ")
      leia (v2)
      se (v1 > 0 e v2 > 0) {
      v3 = v1 * v2 
       escreva (" A aréa do seu retângulo é: ", v3,"\n")
       escreva ( " Pressione ENTER para continuar...","\n")
       leia ( pausa ) 
       limpa ()
      }  senao {
       escreva (" Números Inválidos, tenta acima de 0...\n")
        leia ( pausa ) 
       limpa ()}
      pare 
    }

// --- Fim do Programa 

    caso 0:
    escreva ("Saindo, tchau tchau!\n")
    pare
    
   caso contrario : 
   	escreva ( " Opção errada, escolha um número de 0 à 7.\n")
   	 escreva ( " Pressione ENTER para continuar...")
   	 leia ( pausa ) 
       limpa ()
   	pare
   }
      } enquanto (opcao != 0 ) 
    } 
}  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
