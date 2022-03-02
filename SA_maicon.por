programa
{
	
	funcao inicio()
	{
		inteiro chapa[ ]={0,1,2,3,4,5,6,10},turma[ ]={1,2,3},voto,cont=0,numero,t1=0,t2=0,t3=0
		inteiro ana1=0,ana2=0,ana3=0,pedro1=0,pedro2=0,pedro3=0,rita1=0,rita2=0,rita3=0,alfredo1=0,alfredo2=0,alfredo3=0
		inteiro regina1=0,regina2=0,regina3=0,ricardo1=0,ricardo2=0,ricardo3=0,nulo=0,branco=0,votvalido=0
		real pval=0.0,pnulo=0.0,pbranco=0.0,ana_soma=0.0,pedro_soma=0.0,rita_soma=0.0,ricardo_soma=0.0,alfredo_soma=0.0,regina_soma=0.0
		
		enquanto(cont<3)
		{
			t1=0
			t2=0
			t3=0
			escreva("Digite '1' para Primeiro ano.\n")
			escreva("Digite '2' para Segundo ano.\n")
			escreva("Digite '3' para Terceiro ano.\n")
			escreva("\nInforme a sua turma : ")
			leia(numero)

			enquanto(numero!=1 e numero!=2 e numero!=3)
	          {
	      		escreva("informe a turma correta : ")
	      	 	leia(numero)
	      	}
	      	para(inteiro i=0;i<3;i++)
	      	{
	      		se(turma[i]==numero)
	      		{
	      			escolha (numero)
	      			{
	      				caso 1:
	      				t1++
	      				pare
	      				caso 2:
	      				t2++
	      				pare
	      				caso 3:
	      				t3++
	      				pare		
	      			} 
				}
			}
	      	escreva("\nDigite '1' para Ana. ")
	      	escreva("\nDigite '2' para Pedro. ")
	      	escreva("\nDigite '3' para Rita. ")
	      	escreva("\nDigite '4' para Afredo. ")
	      	escreva("\nDigite '5' para Regina. ")
	      	escreva("\nDigite '6' para Ricardo. ")
	      	escreva("\nDigite '0' para Nulo. ")
	      	escreva("\nDigite '10' para Branco. \n")
	      	escreva("\nInforme o seu voto : ")
	      	escreva("\n")
	      	leia(voto)
	      	limpa()

	      	para(inteiro i=0;i<8;i++)
	      	{
	      		se(chapa[i]==voto)
	      		{
	      			escolha (voto)
	      			{
	      				caso 0:
	      				nulo++
	      				pare
	      				caso 1:
	      				ana1=ana1+t1
	      				ana2=ana2+t2
	      				ana3=ana3+t3
	      				ana_soma=ana1+ana2+ana3
	      				pare
	      				caso 2:
	      				pedro1=pedro1+t1
	      				pedro2=pedro2+t2
	      				pedro3=pedro3+t3
	      				pedro_soma=pedro1+pedro2+pedro3
	      				pare
	      				caso 3:
	      				rita1=rita1+t1
	      				rita2=rita2+t2
	      				rita3=rita3+t3
	      				rita_soma=rita1+rita2+rita3
	      				pare
	      				caso 4:
	      				alfredo1=alfredo1+t1
	      				alfredo2=alfredo2+t2
	      				alfredo3=alfredo3+t3
	      				alfredo_soma=alfredo1+alfredo2+alfredo3
	      				pare
	      				caso 5:
	      				regina1=regina1+t1
	      				regina2=regina2+t2
	      				regina3=regina3+t3
	      				regina_soma=regina1+regina2+regina3
	      				pare
	      				caso 6:
	      				ricardo1=ricardo1+t1
	      				ricardo2=ricardo2+t2
	      				ricardo3=ricardo3+t3
	      				ricardo_soma=ricardo1+ricardo2+ricardo3
	      				pare
	      				caso 10:
	      				branco++
	      				pare
					}
		
				}
				se(chapa[i]!=voto)
	      		{
	      			enquanto(voto!=1 e voto!=2 e voto!=3 e voto!=4 e voto!=5 e voto!=6 e voto!=0 e voto!=10)
	      			{
	      				escreva("Candidato invalido, informe o numero correto do candidato : ")
	      				leia(voto)
	      			}
	      		}
			}
			cont++
		}
		votvalido=(cont-nulo)-branco
		escreva("Numero total de eleitores : ",cont)
		escreva("\nNumero de votos validos : ",votvalido)
		escreva("\nNumero de votos nulos : ",nulo)
		escreva("\nNumero de votos brancos : ",branco,"\n")
		escreva("\nPorcentagem de votos validos : ")
		escreva("\n",(votvalido*100)/cont,"% Validos   ",(nulo*100)/cont,"% Nulos   ",(branco*100)/cont,"% brancos\n")
		escreva("\nPorcentagem de votos de cada candidato : ")
		escreva("\nAna - ",(ana_soma*100)/cont,"%")
		escreva("\nPedro - ",(pedro_soma*100)/cont,"%")
		escreva("\nRita - ",(rita_soma*100)/cont,"%")
		escreva("\nAlfredo - ",(alfredo_soma*100)/cont,"%")
		escreva("\nRegina - ",(regina_soma*100)/cont,"%")
		escreva("\nRicardo - ",(ricardo_soma*100)/cont,"%\n")
		escreva("\nPorcentagem de votos de cada candidato de acordo com a turma (1,2,3) : ")
		escreva("\nAna : \n",(ana1*100)/ana_soma," - Turma 1\n",(ana2*100)/ana_soma," - Turma 2\n",(ana3*100)/ana_soma," - Turma 3\n")
		escreva("Pedro : \n",(pedro1*100)/pedro_soma," - Turma 1\n",(pedro2*100)/pedro_soma," - Turma 2\n",(pedro3*100)/pedro_soma," - Turma 3\n")
		escreva("Rita : \n",(rita1*100)/rita_soma," - Turma 1\n",(rita2*100)/rita_soma," - Turma 2\n",(rita3*100)/rita_soma," - Turma 3\n")
		escreva("Alfredo : \n",(alfredo1*100)/alfredo_soma," - Turma 1\n",(alfredo2*100)/alfredo_soma," - Turma 2\n",(alfredo3*100)/alfredo_soma," - Turma 3\n")
		escreva("Regina : \n",(regina1*100)/regina_soma," - Turma 1\n",(regina2*100)/regina_soma," - Turma 2\n",(regina3*100)/regina_soma," - Turma 3\n")
		escreva("Ricardo : \n",(ricardo1*100)/ricardo_soma," - Turma 1\n",(ricardo2*100)/ricardo_soma," - Turma 2\n",(ricardo3*100)/ricardo_soma," - Turma 3") 
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3122; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {chapa, 6, 10, 5}-{turma, 6, 38, 5}-{t1, 6, 74, 2}-{ana1, 7, 10, 4}-{ana2, 7, 17, 4}-{ana3, 7, 24, 4}-{ana_soma, 9, 38, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */