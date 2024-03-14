programa
{
	inclua biblioteca Texto --> T
	inclua biblioteca Util --> U
	cadeia pausa
	funcao inicio()
	{
		inteiro opc=0
		faca
		{
			limpa()
			escreva("\t*** Menu Principal ***\n")
			escreva("\t======================\n")
			
			escreva("\t[1] Cálculos\n")
			escreva("\t[2] Par e Ímpar\n")
			escreva("\t[3] Comparar números\n")
			escreva("\t[4] Tábuada\n")
			escreva("\t[5] FIM\n")
			escreva("\t======================\n")
			
			escreva("\tDIgite sua opção: ")
			leia(opc)
			
			escolha(opc)
			{ 
				caso 1:
					calculos()
					pare

				caso 2:
					parimpar()
					pare

				caso 3:
					comparar()
					pare

				caso 4:
					tabuada()
					pare

				caso 5:
					pare

				caso contrario:
					escreva("****NÚMERO INVALIDO****")
					U.aguarde(4000)
					pare
			}
			
		}enquanto(opc!=5)
	}
	funcao calculos()
	{
			cadeia vResp
		faca
		{					
			limpa()
			real um,dois,adi,sub,mul,div
			escreva("Olá! Informe um número real por favor.\n")
			leia(um)
			escreva("Informe outro número real por favor...\n")
			leia(dois)
			escreva("Muito bem, vamos as contas!!\n\n")
	
			adi=um+dois
			sub=um-dois
			mul=um*dois
			div=um/dois
	
			escreva("Vamos para a ADIÇÃO: " + um + " + " + dois + " = " + adi)
			escreva("\nVamos para a SUBTRAÇÃO: " + um + " - " + dois + " = " + sub)
			escreva("\nVamos para a MULTIPLICAÇÃO: " + um + " * " + dois + " = " + mul)
			escreva("\nVamos para a DIVISÃO: " + um + " / " + dois + " = " + div)
			
		escreva("\nVocê deseja continuar?(s/n)")
		leia(vResp)
		}enquanto(T.caixa_baixa(vResp)=="sim" ou T.caixa_baixa(vResp)=="s")
	}
	funcao parimpar()	
	{
			inteiro ida,a
		cadeia vResp

	faca
	{
		limpa()
		escreva("Qual sua idade?\n")
		leia(ida)
		a=ida%2 
		se(a==0) 
		{
			escreva("Wow my god!!!, Sua idade é um número par!!")
		}
		senao
		{
			escreva("Wow my god!!!, Sua idade é um número ímpar!!")
		}
		escreva("\nVocê deseja continuar?(s/n)")
		leia(vResp)
		}enquanto(T.caixa_baixa(vResp)=="sim" ou T.caixa_baixa(vResp)=="s")
	}
	funcao comparar()
	{
		real n1,n2
		cadeia vResp
	faca
	{
		limpa()
		escreva("Me informe algum número:\n")
		leia(n1)
		escreva("Me informe um 2º número:\n")
		leia(n2)
	se(n1>n2)
	{
		escreva(n1 + " é maior que " + n2)
	}
	se(n2>n1)
	{
		escreva(n2 + " é maior que " + n1)	
	}
	se(n1==n2)
	{
		escreva("Ambos os números tem tamanho igual!")
	}
		escreva("\nVocê deseja continuar?(s/n)\n")
		leia(vResp)
		}enquanto(T.caixa_baixa(vResp)=="sim" ou T.caixa_baixa(vResp)=="s")
	}
	funcao tabuada()
	{
		inteiro n,i,tab

		limpa()
		escreva("Informe um número para ver a tabuada:\n")
		leia(n)

		para(i=1;i<=10;i++)
		{
		escreva(n + " x " + i + " = " + (n*i))
		escreva("\n")
		U.aguarde(500)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2700; 
 * @DOBRAMENTO-CODIGO = [56, 53, 85, 80, 103];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */