.data
mensaje: .asciiz "Hola Mundo"  # Definir la cadena a imprimir

.text
.globl main
main:
    # Imprimir la cadena
    li $v0, 4         # Código de syscall para imprimir texto
    la $a0, mensaje   # Cargar la dirección del mensaje
    syscall           # Llamar a la syscall para imprimir
    
    # Finalizar el programa
    li $v0, 10        # Código de syscall para salir del programa
    syscall
