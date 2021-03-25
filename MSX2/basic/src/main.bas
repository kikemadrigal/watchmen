80 defint a-z
90 gosub 11000
100 gosub 11300
1 'Inicializamos el personaje'
130 gosub 5000
1 'Rutina barra espaciadora pulsada
520 strig(0) on:on strig gosub 5200
1 'Mostramos la información en pantalla'
530 'gosub 2900
1 ' ----------------------'
1 '      MAIN LOOP
1 ' ----------------------'
    1 'render player, el update lo hacemos en el sistema de input'
    2000 gosub 5100
    1 'Capturamos las teclas'
    2010 gosub 2500
    2020 gosub 3100
2090 goto 2000
1 ' ----------------------'
1 '    FINAL MAIN LOOP
1 ' ----------------------'





1 'Reproductor de efectos d sonido'
    2300 a=usr2(0)
    2310 if re=1 then PLAY"O5 L8 V4 M8000 A A D F G2 A A A A r60 G E F D C D G R8 A2 A2 A8","o1 v4 c r8 o2 c r8 o1 v6 c r8 o2 v4 c r8 o1 c r8 o2 v6 c r8"
    1 'Tirando el paquete'
    2350 if re=5 then play "l10 o4 v4 g c"
    1 'Paquete cogido'
    2360 if re=6 then play"t250 o5 v12 d v9 e" 
    1 'Pitido normal'
    2370 if re=7 then play "O5 L8 V4 M8000 A A D F G2 A A A A"
    1 'Toque fino'
    2380 if re=8 then PLAY"S1M2000T150O7C32"
    1 'Pasos'
    2390 if re=9 then PLAY"o2 l64 t255 v10 m6500 c"
    2400 if re=10 then sound 6,5:sound 8,16:sound 12,6:sound 13,9
2420 return

1 ' ----------------------'
1 '     INPUT SYSTEM'
1 ' ----------------------'
1 '1 ' 1 Sistema de Input
1 '    1'1 Arriba, 2 arriba derecha, 3 derecha, 4 abajo derecha, 5 abajo, 6 abajo izquierda, 7 izquierda, 8 izquierda arriba
1 '    2500 j=stick(0)
1 '    2520 if j=0 then ps=1
1 '    2530 if j=3 then px=px+pv:ps=4:if co mod 2=0 then ps=ps+1
1 '    2540 if j=7 then px=px-pv:ps=6:if co mod 2=0 then ps=ps+1
1 '    2550 if j=1 then py=py-pv:ps=2:if co mod 2=0 then ps=ps+1
1 '    2560 if j=5 then py=py+pv:ps=2:if co mod 2=0 then ps=ps+1
1 '2590 return

1 '2 Sistema de input'
    1 'Nos guardamos las posiciones del player antes de cambiarlas'
    2500 on stick(0) gosub 2700,2500,2600,2500,2800,2500,2640

    1 'Rutina salto va junto a la línea 120 y subrutina 5200'
    2520 if pa=1 then py=py-pj
    1 '1 '10 es la distancia máxima a la que puede saltar'
    2530 if pa=1 and py<po-10 then pj=-pj
    2540 if pa=1 and py>po then py=po:pj=0:pj=-pj:pa=0:strig(0)on
    1 'Escaneando suelo con point'
    1 '2541 'if point(px+8,py+16+1)<>3 then py=py+pv

    1 'Chequeo contorno con array mapa'
    2590 gosub 3100
    1 'Chequeo escalera-> ver línea 2710

    1 'Chequeo suelo'
    2592 if pa=0 and t5=255 then py=py+pv

    1 'Chequeo limites screen'
    2590 if py>180 then py=180
2599 return
1 're=8 es el efecto de sonido 8 de la rutina de reprodución de sonidos 2300
1 '3 derecha'
    2600 px=px+pv
    2610 swap p(0),p(1):ps=p(1)
    2620 'gosub 2900
    1 '2620 if px mod 2=0 then ps=ps+1
2630 return
1 '7 izquierda'
    2640 px=px-pv
    2650 swap p(2),p(3):ps=p(3)
    2651 'gosub 2900
    1 '2572 if px mod 2=0  then ps=ps+1
2660 return
1 '1 Arriba'
    2700 beep:'gosub 2900:'pset(px+8,py-1),13
    1 '2710 if point(px+8,py-1)=8 or point(px+8,py+16+1)=8 then ps=p(4):py=py-pv
    2710 if t1=2 or t5=2 and pa=0 then ps=p(4):py=py-pv
2750 return
1 '5 abajo'
    2800 beep:'gosub 2900:'pset(px+8,py-1),13
    1 '2810 if point(px+8,py-1)=8 or point(px+8,py+16+1)=8 then ps=p(4):py=py+pv
    2810 if t1=2 or t5=2 and pa=0 then ps=p(4):py=py+pv
2850 return


1 'Variables'

    2900 tx=(px+8)/8:ty=(py-1)/8
    2920 gosub 3100
    2960 PRESET(0,212-16):PRINT#1,"tx: "tx" ty: "ty" t1: "t1" "pa
    2970 tx=(px+8)/8:ty=(py+16+1)/8
    2980 gosub 3100
    2990 PRESET(0,212-8):PRINT#1,"tx: "tx" ty: "ty" t5: "t5" "py
3020 return

1'chequeando contorno sprite personaje
    1 'Chequeando arriba'
    3100 tx=(px+8)/8:ty=(py-1)/8
    1 't1 será el tile de arriba'
    3110 t1=m(ty,tx)
    1 'Chequeando abajo'
    3140 tx=(px+8)/8:ty=(py+16+1)/8
    3150 t5=m(ty,tx)
3190 return




1 'Init player'
    1 'Componente position'
    1 'la posición se define en las pantallas, pw=ancho, ph=alto, pv=velocidad, capturas, etc'
    1 'pj=indica si el salto está activado para desactivar la comprobación del teclado'
    1 'po=player y old'
    1 'pa=player salto activado'
    1 'pj=distancia que recorre cuando el salto está activado'
    1 'pa=salta activdo'
    5000 px=16:py=160:pw=16:ph=16:pv=2:pj=0:po=py:pe=100:pa=0
    5010 dim p(6):p(0)=0:p(1)=1:p(2)=2:p(3)=3:p(4)=4:p(5)=5
    1 'Componente render: Plano 1(para el color) y 0 para el personaje, sprite del 0(para el color) y del 1 al 7 para el personaje'
    5020 pp=0:ps=1
    1 'Componente RPG=player capturas y energía o vida, se define en las pantallas'
    5030 pc=0:pe=0
5040 return


1 'Update player'
1 'pasado al sistema de input'

1 'render player'
    1 'El sprite de nuestro personaje es el 1, plano 0'
    5100 put sprite pp,(px,py),1,ps
    1 'El sprute 0 es el swter de color amarillo, plano 1'
    5110 'put sprite pp+1,(px,py),11,0
5190 return

1 ' Rutina barra espaciadora pulsada'
    1 'Ponemos un sonido de salto'
    5200 re=10: gosub 2300
    1 'Guardamos la posición vieja de y en po'
    1 'pj=2 distancia en pixeles que se le va a sumar o restar en el input system'
    5210 po=py:pj=2:pa=1:strig(0)off
5290 return



1 'Init map'
    11000 dim m(25,31)
11010 return


1 'Guardar_mapa_en_array
    11300 'nada'
    1 'md=mapa dirección, la dirección c001 se la he puesto yo en el archivo binario cuando lo creé'
    1 'El archivo tan solo contiene los datos de la definición de los mapas'
    11305 md=&hd001
    1 'ahora leemos las filas o la posición x
    11310 for f=0 to 25
    1 'ahora leemos las columnas c o la posicion y
        11320 for c=0 to 31
            11330 m(f,c)=peek(md):md=md+1
        11340 next c
    11350 next f
11370 return