
1 'Inicilizamos dispositivo: 003B, inicilizamos teclado: 003E'
10 defusr=&h003B:a=usr(0):defusr1=&h003E:a=usr1(0):defusr2=&H90:a=usr2(0)
20 defusr3=&H41:defusr4=&H44
1 ' color letra negro, fondo letra: azul claro, borde blanco, quitamos las letras que aparecen abajo'
30 color 1,15,15:key off:defint a-z
40 screen 5,2,0
50 open "grp:" as #1
60 'print #1,"Loading xbasic"
70 'bload"xbasic.bin",r
80 'print #1,"Loading sprites"
1 'Cargamos los sprites'
90 gosub 10000
100 'print #1,"Loading tilemap word 0"
110 'dim mf(512,9):gosub 11100
120 print "Cargando tilset en page 1"
130 bload"tileset.bin",s,32768
140 print "Cargando mapa en RAM"
150 bload "world0.bin",r
1 'Metemos en el buffer y en la VRAM'
160 print "Creando page 0"
170 gosub 11300
500 'print #1,"Loading game"
510 load"game.bas",r



1 '---------------------------------------------------------'
1 '------------------------Carga de srites------------------'
1 '---------------------------------------------------------'


1 ' Patrones:'
1 'Plano 0. Player--sprites del 1 al 7'
1 'Rutina cargar sprites con datas basic'
    10000 RESTORE
    1 ' vamos a meter 5 definiciones de sprites nuevos que serán 4 para el personaje y uno para la bola'
    10010 FOR I=0 TO 5:SP$=""
        10020 FOR J=1 TO 32:READ A$
            10025 SP$=SP$+CHR$(VAL("&H"+A$))
        10030 NEXT J
        10040 SPRITE$(I)=SP$
    10050 NEXT I
    10060 return 
    10120 DATA 0F,0F,7F,1F,28,67,77,37
    10130 DATA 37,03,07,0F,1F,1F,38,3C
    10140 DATA F0,F0,FE,E0,20,20,F8,F8
    10150 DATA F8,F8,C0,FC,E0,F8,E0,F0

    10160 DATA 0F,0F,7F,1F,28,67,77,37
    10170 DATA 37,03,07,0F,1F,1F,07,07
    10180 DATA F0,F0,FE,E0,20,20,F8,F8
    10190 DATA F8,F8,C0,FC,E0,F8,38,BC

    10200 DATA 0F,0F,7F,07,04,04,1F,1F
    10210 DATA 1F,1F,03,3F,07,1F,07,0F
    10220 DATA F0,F0,FE,F8,14,E6,EE,EC
    10230 DATA EC,C0,E0,F0,F8,F8,1C,3C

    10240 DATA 0F,0F,7F,07,04,04,1F,1F
    10250 DATA 1F,1F,03,3F,07,1F,1C,3D
    10260 DATA F0,F0,FE,F8,14,E6,EE,EC
    10270 DATA EC,C0,E0,F0,F8,F8,E0,E0

    10280 DATA 00,07,1F,0F,0F,0F,07,03
    10290 DATA 03,03,1F,17,07,07,06,06
    10300 DATA 00,E0,F8,F0,F0,F0,E0,C0
    10310 DATA D0,D0,F0,E0,E0,E0,70,70

    10320 DATA 00,07,1F,0F,0F,0F,07,03
    10330 DATA 13,13,1F,07,07,07,0C,0C
    10340 DATA 00,E0,F8,F0,F0,F0,E0,C0
    10350 DATA C0,C0,F8,E8,E0,E0,60,60
11590 return



1 '1 'Cargar mapa de disco y meterlo en la VRAM sin buffer
1 '    11300 md=&hd001
1 '        11350 for f=0 to 25
1 '        1 'ahora leemos las columnas c
1 '            11360 for c=0 to 31
1 '                1 'Obtenemos el valor que representa al tile de la fila y la columna'
1 '                11370 tn=peek(md):md=md+1
1 '                11380 if tn >=0 and tn <32 then copy (tn*8,0*8)-((tn*8)+8,(0*8)+8),1 to (c*8,f*8),0,tpset
1 '                11510 next c
1 '        11520 next f 
1 '11570 return


1 'Guardar_mapa_en_array
    11300 dim  m(25,31)
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
    1 'Pintamos el mapa'
    11360 gosub 11500
11370 return

1 'Render map, pintar mapa
    11500 cls
    11510 for f=0 to 25
    1 ' ahora leemos las columnas c
        11520 for c=0 to 31
            11530 tn= m(f,c)
            11540 if tn >=0 and tn <32 then copy (tn*8,0*8)-((tn*8)+8,(0*8)+8),1 to (c*8,f*8),0,tpset
        11560 next c
    11570 next f
8650 return