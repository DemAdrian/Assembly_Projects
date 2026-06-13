.model small
.stack 100h

.data
fname db "Demy", 13, 10, "$"
mname db "Adrian", 13, 10, "$"
lastName db "Moya", 13, 10, "$"
studentnum db "202403902", 13, 10, "$"
course db "BSCS 2-3$"

.code
MAIN:
    mov ax, SEG fname
    mov ds, ax

    mov dx, OFFSET fname
    mov ah, 9
    int 21h

    mov dx, OFFSET mname
    mov ah, 9
    int 21h

    mov dx, OFFSET lastName
    mov ah, 9
    int 21h

    mov dx, OFFSET studentnum
    mov ah, 9
    int 21h

    mov dx, OFFSET course
    mov ah, 9
    int 21h
    
    mov ax, 4c00h
    int 21h
END MAIN

END