.model small
.stack 100h

.data
symbols db '!',13,10
        db '?',13,10
        db '<',13,10
        db '>',13,10
        db '@','$'

.code
MAIN:
    mov ax,@data
    mov ds,ax

    mov dx,offset symbols
    mov ah,09h
    int 21h

    mov ah,4Ch
    int 21h
END MAIN

END