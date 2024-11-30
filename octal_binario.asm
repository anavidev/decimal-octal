	JMP start
table: DB "000001010011100101110111"

start:
	MOV C, 0o2	; variavel de entrada (2 na base octal)

	MOV A, C	; passar valor de C para A para fazer a formula Eo + 3 * dig
	MUL 3
	ADD A, table 	; somar valor de A com o endereco de table

	MOV B, [A]	; mover o endereco de A para B
	MOV [0xE8], B	; mostrar o valor de B no endereco especificado

	INC A		; mover para o proximo endereco
	MOV B, [A]
	MOV [0xE9], B

	INC A
	MOV B, [A]	; mover o endereco de A para B
	MOV [0xEA], B
