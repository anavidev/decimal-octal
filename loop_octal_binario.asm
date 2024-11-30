	JMP start
table: DB "000001010011100101110111"

start:
	MOV C, 0o335	; variavel de entrada (335 na base octal)
	MOV D, 0xF0	; endereco de saida

.loop:	MOV A, C	; mover valor de C para A
	AND A, 111b	; 111b = 7 em binario

	MUL 3
	ADD A, table 	
	ADD A, 2	; formula Eo + 3 * dig + 2

	MOV B, [A]	; mover o endereco de A para B
	MOV [D], B	; mostrar o valor de B no endereco especificado

	DEC A
	DEC D
	MOV B, [A]
	MOV [D], B

	DEC A
	DEC D
	MOV B, [A]
	MOV [D], B

	DEC D

	SHR C, 3	; desloca para a direita
	JNZ .loop	; realiza o loop
