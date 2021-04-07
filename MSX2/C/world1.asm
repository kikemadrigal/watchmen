  
        output "world1.bin"

    db   #fe               ; ID archivo binario, siempre hay que poner el mismo -1FEh
    dw   INICIO            ; dirección de inicio
    dw   FINAL - 1         ; dirección final
    dw   INICIO             ; dircción del programa de ejecución (para cuando pongas r en bload"nombre_programa", r)

    org #d000 ; o 57344, org se utiliza para decirle al z80 en que posición de memoria RAM empieza nuestro programa en ensamblador

INICIO:
    ret ; el ret es necesario para que vuelva al basic
level0:
    ;200 tiles de ancho x 23 de alto, dejamos 3 tiles en la parte de debajo para el marcador




    db 168,169,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,227
    db 200,201,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,227
    db 224,224,-1,-1,225,225,225,192,193,225,225,225,225,225,225,225,225,225,225,-1,-1,225,225,225,225,192,193,225,225,225,225,225
    db 226,227,-1,-1,258,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,226,227
    db 226,227,-1,-1,258,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,226,227
    db 226,227,-1,-1,258,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,226,227
    db 227,227,-1,-1,258,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,226,227
    db 225,225,225,225,225,225,225,225,225,225,225,-1,-1,225,225,225,192,193,225,225,225,-1,-1,225,225,225,225,225,225,225,225,225
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,226,227
    db 224,224,224,224,224,224,224,224,224,224,224,224,-1,-1,224,224,192,193,224,224,224,224,224,224,-1,-1,224,192,193,224,224,224
    db 226,227,-1,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,258,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,32,33,-1,226,227
    db 224,225,-1,-1,192,193,225,225,225,-1,-1,225,225,225,225,225,225,225,225,-1,-1,225,225,225,192,193,225,225,225,225,225,225
    db 226,227,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224



FINAL: