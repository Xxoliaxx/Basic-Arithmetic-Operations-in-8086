data segment
    a dw 1fh
    b dw 20h
    d dw 0fffh
    c dw ?
data ends

code segment
assume cs:code, ds:data
start: 
    mov ax, data
    mov ds, ax
    mov ax, a
    mov bx, b
    sub bx, ax
    mov bx, ax

    mov ax, data
    mov ds, ax
    mov ax, a
    mov bx, b
    add bx, ax
    mov bx, ax

    mov ax, data
    mov ds, ax
    mov ax, a
    mov bx, b
    mul bx

    mov ax, data
    mov ds, ax
    mov ax, a
    mov bx, b
    div bx

    mov ax, data
    mov ds, ax
    mov ax, a
    mov bx, d
    mul bx
    mov word ptr c, ax
    mov word ptr c+1, bx

    int 3
code ends

end start
