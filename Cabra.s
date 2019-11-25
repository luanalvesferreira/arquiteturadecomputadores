.data

msgano:			.asciiz "Digite o ano de seu nascimento:\n"	#CRIA UMA MENSSAGEM COMO STRING
msgidade:		.asciiz "Sua idade:\n"						#CRIA UMA MENSSAGEM COMO STRING
nascimento: 	.word 1										#CRIANDO UM INTEIRO
idade: 			.word 1										#CRIANDO UM INTEIRO
		
	.text
	
	
		
		
main:	li $v0, 4 											#CODIGO PARA IMPRIMIR UMA STRING NA TELA
		la $a0, msgano  									#ARMAZENA NO ARGUMENTO A MENSAGEM DECLARADA
		syscall												#CHAMANDO A FUNÇÃO QUE IMPRIME NA TELA
			
		li $s1, 2019 										#INSERE O VALOR DE 2019 NO REGISTRADOR
		
		
		li $v0, 5      										#CODIGO PARA LER INTEIRO
		syscall		   										#CHAMANDO A FUNÇÃO DE LER INTEIRO
		
		sw $v0, nascimento									#ARMAZENA NA VARIAVEL O VALOR LIDO
		
		sub $t0,$s1,$v0										#SUBTRAI O ANO ATUAL E O ANO DE NASCIMENTO
		sw $t0,idade										#ARMAZENA NA VARIAVEL
		
		li $v0, 4 											#CODIGO PARA IMPRIMIR UMA STRING NA TELA
		la $a0, msgidade  									#ARMAZENA NO ARGUMENTO A MENSAGEM DECLARADDA
		syscall												#CHAMANDO A FUNÇÃO QUE IMPRIME NA TELA
		
		
		li $v0, 1											#CODIGO PARA IMPRIMIR INTEIRO
		move $a0, $t0										#JOGA NO ARGUMENTO O VALOR DO ST0
		syscall												#CHAMANDO A FUNÇÃO DE IMPRIMIR INTEIRO

		jr $ra