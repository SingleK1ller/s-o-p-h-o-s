section .data
    mensagem db 'Byurv cnen b novfzb, r b novfzb byubh qr ibygn.', 0xA
    tamanho equ $ - mensagem

section .text
    global _start

_start:
    ; sys_write (stdout = 1)
    mov eax, 4          ; syscall número 4 = sys_write
    mov ebx, 1          ; fd = 1 (stdout)
    mov ecx, mensagem   ; ponteiro para a mensagem
    mov edx, tamanho    ; tamanho da mensagem
    int 0x80            ; chamada de sistema

    ; sys_exit
    mov eax, 1          ; syscall número 1 = sys_exit
    xor ebx, ebx        ; código de saída 0
    int 0x80            ; chamada de sistema
