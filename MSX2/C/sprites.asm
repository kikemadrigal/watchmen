        output "sprites.bin"

    db   #fe               ; ID archivo binario, siempre hay que poner el mismo -1FEh
    dw   INICIO            ; dirección de inicio
    dw   FINAL - 1         ; dirección final
    dw   INICIO             ; dircción del programa de ejecución (para cuando pongas r en bload"nombre_programa", r)

    org #d000 ; o 57344, org se utiliza para decirle al z80 en que posición de memoria RAM empieza nuestro programa en ensamblador

INICIO:
    ret ; el ret es necesario para que vuelva al basic


SPRITE_DATA:
    ; 0-
    db 00Fh,00Fh,07Fh,01Fh,028h,067h,077h,037h
    db 037h,003h,007h,00Fh,01Eh,01Fh,038h,03Ch
    db 0F0h,0F0h,0FEh,0E0h,020h,020h,0F8h,0F8h
    db 0F8h,0F8h,0C0h,0F0h,060h,018h,0E0h,0F0h
    ; 1-
    db 00Fh,00Fh,07Fh,007h,004h,004h,01Fh,01Fh
    db 01Fh,01Fh,003h,00Fh,006h,018h,007h,00Fh
    db 0F0h,0F0h,0FEh,0F8h,014h,0E6h,0EEh,0ECh
    db 0ECh,0C0h,0E0h,0F0h,078h,0F8h,01Ch,03Ch
    ; 2-
    db 00Fh,00Fh,07Fh,01Fh,028h,067h,077h,037h
    db 037h,003h,007h,00Fh,01Eh,01Fh,003h,003h
    db 0F0h,0F0h,0FEh,0E0h,020h,020h,0F8h,0F8h
    db 0F8h,0F8h,0C0h,0F0h,060h,018h,0E0h,0F0h
    ; 3-
    db 00Fh,00Fh,07Fh,007h,004h,004h,01Fh,01Fh
    db 01Fh,01Fh,003h,00Fh,006h,018h,007h,00Fh
    db 0F0h,0F0h,0FEh,0F8h,014h,0E6h,0EEh,0ECh
    db 0ECh,0C0h,0E0h,0F0h,078h,0F8h,0C0h,0C0h


COLOR_DATA:
    ; 0-
    db 009h,008h,008h,00Ah,00Ah,00Ah,00Ah,00Ah
    db 00Ah,00Ah,005h,005h,005h,005h,004h,004h
    ; 1-
    db 009h,008h,008h,00Ah,00Ah,00Ah,00Ah,00Ah
    db 00Ah,00Ah,005h,005h,005h,005h,004h,004h
    ; 2-
    db 009h,008h,008h,00Ah,00Ah,00Ah,00Ah,00Ah
    db 00Ah,00Ah,005h,005h,005h,005h,004h,004h
    ; 3-
    db 009h,008h,008h,00Ah,00Ah,00Ah,00Ah,00Ah
    db 00Ah,00Ah,005h,005h,005h,005h,004h,004h

    

FINAL: