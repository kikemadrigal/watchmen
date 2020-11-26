80 defint a-z
90 gosub 11000
100 gosub 11300
130 gosub 5000
520 strig(0) on:on strig gosub 5200
530 gosub 2900
    2000 gosub 5100
    2010 gosub 2500
    2020 gosub 3100
2090 goto 2000
    2300 a=usr2(0)
    2310 if re=1 then PLAY"O5 L8 V4 M8000 A A D F G2 A A A A r60 G E F D C D G R8 A2 A2 A8","o1 v4 c r8 o2 c r8 o1 v6 c r8 o2 v4 c r8 o1 c r8 o2 v6 c r8"
    2350 if re=5 then play "l10 o4 v4 g c"
    2360 if re=6 then play"t250 o5 v12 d v9 e" 
    2370 if re=7 then play "O5 L8 V4 M8000 A A D F G2 A A A A"
    2380 if re=8 then PLAY"S1M2000T150O7C32"
    2390 if re=9 then PLAY"o2 l64 t255 v10 m6500 c"
    2400 if re=10 then sound 6,5:sound 8,16:sound 12,6:sound 13,9
2420 return
    2500 on stick(0) gosub 2700,2500,2600,2500,2800,2500,2640
    2520 if pa=1 then py=py-pj
    2530 if pa=1 and py<po-10 then pj=-pj
    2540 if pa=1 and py>po then py=po:pj=0:pj=-pj:pa=0:strig(0)on
    2590 gosub 3100
    2592 if pa=0 and t5=255 then py=py+pv
    2590 if py>180 then py=180
2599 return
    2600 px=px+pv
    2610 swap p(0),p(1):ps=p(1)
    2620 'gosub 2900
2630 return
    2640 px=px-pv
    2650 swap p(2),p(3):ps=p(3)
2660 return
    2700 beep:'gosub 2900:'pset(px+8,py-1),13
    2710 if t1=2 or t5=2 and pa=0 then ps=p(4):py=py-pv
2750 return
    2800 beep:'gosub 2900:'pset(px+8,py-1),13
    2810 if t1=2 or t5=2 and pa=0 then ps=p(4):py=py+pv
2850 return
    2900 'tx=(px+8)/8:ty=(py-1)/8
    2920 'gosub 3100
    2960 'PRESET(0,212-16):PRINT#1,"tx: "tx" ty: "ty" t1: "t1" "pa
    2970 'tx=(px+8)/8:ty=(py+16+1)/8
    2980 'gosub 3100
    2990 'PRESET(0,212-8):PRINT#1,"tx: "tx" ty: "ty" t5: "t5" "py
3020 return
    3100 tx=(px+8)/8:ty=(py-1)/8
    3110 t1=m(ty,tx)
    3140 tx=(px+8)/8:ty=(py+16+1)/8
    3150 t5=m(ty,tx)
3190 return
    5000 px=16:py=160:pw=16:ph=16:pv=2:pj=0:po=py:pe=100:pa=0
    5010 dim p(6):p(0)=0:p(1)=1:p(2)=2:p(3)=3:p(4)=4:p(5)=5
    5020 pp=0:ps=1
    5030 pc=0:pe=0
5040 return
    5100 put sprite pp,(px,py),1,ps
    5110 'put sprite pp+1,(px,py),11,0
5190 return
    5200 re=10: gosub 2300
    5210 po=py:pj=2:pa=1:strig(0)off
5290 return
    11000 dim m(25,31)
11010 return
    11300 'nada'
    11305 md=&hd001
    11310 for f=0 to 25
        11320 for c=0 to 31
            11330 m(f,c)=peek(md):md=md+1
        11340 next c
    11350 next f
11370 return
