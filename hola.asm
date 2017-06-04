section .data ; 

;10 manda al inicio de la linea y 13 es un /n -> se puede representar en hex
;equ directiva def simbolos como constante
;db puede ser cambiado durante la ejecucion del programa directiva de datos
;len longitud del mensaje

;db byte
;dw palabra
;dd palabra doble
;dq palabra cuadruple 
;dt diez byte

;mov transalada los datos >> mov <DESTINO>, <ORIGEN>
; <ORIGEN>, <DESTINO> no pueden ser operandos de memoria
;interrupcines 

msg db "Hola!!", 0xA,0xD
len equ $ - msg

section .text ;cuerpo
global _start

_start:
	mov eax, 4 ; llama al sistema (sys_write)
	mov ebx, 1 ;stdout salida en pantalla
	mov ecx, msg ;msg en pantalla
	mov edx, len; long de mensaje
	int 0x80 ;llamada al sistema de interrupcion 
	mov eax, 1;sys_exit
	int 0x80