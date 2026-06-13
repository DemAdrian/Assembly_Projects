.model small
.stack 100h

.data
letter1 db "A", 13, 10, "$"
letter2 db "B", 13, 10, "$"
letter3 db "C", 13, 10, "$"
letter4 db "D", 13, 10, "$"
letter5 db "E", 13, 10, "$"
letter6 db "F$"

.code
MAIN:
    mov ax, SEG letter1
    mov ds, ax

    mov dx, OFFSET letter1
    mov ah, 9
    int 21h

    mov dx, OFFSET letter2
    mov ah, 9
    int 21h

    mov dx, OFFSET letter3
    mov ah, 9
    int 21h

    mov dx, OFFSET letter4
    mov ah, 9
    int 21h

    mov dx, OFFSET letter5
    mov ah, 9
    int 21h

    mov dx, OFFSET letter6
    mov ah, 9
    int 21h
    
    mov ax, 4c00h
    int 21h
END MAIN

END