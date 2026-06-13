.model small
.stack 100h

.data
msg db '=============================================',13,10
    db 'HELLO!',13,10
    db 'THIS IS',13,10
    db 'LABORATORY 8',13,10
    db '=============================================','$'

.code
MAIN:
    mov ax,@data
    mov ds,ax

    mov dx, OFFSET msg
    mov ah,09h
    int 21h

    mov ah,4Ch
    int 21h
END MAIN

END