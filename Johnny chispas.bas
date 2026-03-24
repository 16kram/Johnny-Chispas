   1 REM *** JOHNNY CHISPAS ***
   2 REM * \*2008 Esteban P.A. *
   3 REM ***  PETABYTE SOFT ***
   4 REM
   5 PRINT AT 0,0;
  10 LOAD "" CODE
 900 REM pant inicio
 905 POKE 23607,251
 910 BORDER 0: PAPER 0: INK 6: CLS : LET frame=0: LET m$="                           \*2008 PETABYTE SOFTWARE     AYUDA A JOHNNY CHISPAS A SUSTITUIR TODAS LAS BOMBILLAS FUNDIDAS E INTENTA LLEGAR AL CUARTO DE MAQUINAS PARA REPARAR EL SISTEMA DE CLIMATIZACION...     SORTEA LOS ENEMIGOS Y VIGILA LA TEMPERATURA...    PULSE UNA TECLA PARA COMENZAR...                    ": LET cont=LEN m$
 920 PRINT AT 1,9; INK 5;"JOHNNY CHISPAS";AT 5,11; INK 4;"CONTROLES";AT 12,10; INK 6;"Q - SALTAR";AT 10,10;"P - DERECHA";AT 8,10;"O - IZQUIERDA"
 930 POKE 23607,248: PRINT AT 2,6; INK 2;"GIGIGIGIGIGIGIGIGIGI";AT 3,6;"HJHJHJHJHJHJHJHJHJHJ": FOR n=4 TO 12 STEP 2: PRINT AT n,6; INK 2;"GI";AT n+1,6;"HJ";AT n,24;"GI";AT n+1,24;"HJ": NEXT n: PRINT AT 14,6; INK 2;"GIGIGIGIGIGIGIGIGIGI";AT 15,6;"HJHJHJHJHJHJHJHJHJHJ"
 935 PRINT AT 0,0; INK 1;"#";AT 1,0;"$": POKE 23607,251
 940 FOR n=1 TO cont-21 STEP 0.7
 945 PRINT AT 19,5; INK 3;m$(n TO n+21)
 950 IF frame=1 THEN PRINT AT 0,23; INK 6;"\a\b";AT 1,23;"\c\d";AT 0,7;"\g\h";AT 1,7;"\i\j": POKE 23607,248: PRINT AT 19,2; INK 4;"...";AT 19,27;"///": POKE 23607,251: GO TO 965
 960 IF frame=4 THEN PRINT AT 0,23; INK 6;"\a\b";AT 1,23;"\e\f";AT 1,7;"\k\l";AT 19,2;"   ";AT 19,27;"   "
 965 LET frame=frame+1: IF frame>6 THEN LET frame=0
 990 IF INKEY$<>"" THEN GO TO 1000
 991 NEXT n
 992 LET PANT=0
 993 CLS : GO SUB 4000+(PANT*100): BEEP .01,10: BEEP .01,20: FOR N=0 TO 99: IF INKEY$<>"" THEN BEEP .01,10: BEEP .01,20: CLS : GO TO 900
 994 NEXT N: LET PANT=PANT+1: IF PANT<9 THEN GO TO 993
 995 CLS
 999 GO TO 900
1000 LET pant=0: LET vidas=3
1005 BORDER 0: PAPER 0: INK 0: CLS : GO SUB 4000+(pant*100): GO SUB 3900
1010 REM rutina del juego
1030 IF e=1 THEN PRINT AT q,w; INK 3; OVER 1;c$
1040 IF e2=1 THEN PRINT AT k,l; INK 5; OVER 1;f$
1042 IF m=1 THEN POKE 23607,248: PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"E": POKE 23607,251
1043 IF v=8000 THEN POKE 23607,248: PRINT AT f,g; INK 4; OVER 1;g$: POKE 23607,251
1045 FOR n=0 TO 6: PRINT AT y,x; INK n; OVER 1;a$;AT y+1,x; INK n;b$: BEEP .01,(n+20)-(n*2): NEXT n
1050 IF ATTR (y,x+2)<>2 AND ATTR (y+1,x+2)<>2 AND ATTR (y-1,x+2)<>2 AND IN 57342=190 AND (s=0 OR s>1) THEN PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$: LET x=x+1: LET h=0: GO SUB 2000: PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$
1060 IF ATTR (y,x-1)<>2 AND ATTR (y+1,x-1)<>2 AND ATTR (y-1,x-1)<>2 AND IN 57342=189 AND (s=0 OR s>1) THEN PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$: LET x=x-1: LET h=1: GO SUB 2000: PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$
1070 IF s=0 AND IN 64510=190 THEN LET s=8
1080 IF s>4 THEN PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$: LET y=y-1: LET s=s-1: GO SUB 2000: PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$
1090 IF s>0 AND s<5 AND ATTR (Y+2,X+1)<>2 AND ATTR (y+2,x)<>2 THEN PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$: LET y=y+1: LET s=s-1: GO SUB 2000: PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$
1100 IF ATTR (y+2,x)<>2 AND ATTR (y+2,x+1)<>2 AND s=0 THEN PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$: LET s=1: LET y=y+1: PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$
1110 IF ATTR (y+2,x)=2 OR ATTR (y+2,x+1)=2 AND s<4 THEN LET s=0
1120 IF ATTR (y-1,x)=2 OR ATTR (y-1,x+1)=2 THEN LET s=1
1130 IF ATTR (y-1,x-1)=1 OR ATTR (y-1,x)=1 OR ATTR (y-1,x+1)=1 OR ATTR (y-1,x+2)=1 THEN GO SUB 3500
1140 INK 2: PLOT 12,J: LET J=J+A: IF J>20 THEN GO TO 3000
1200 IF e=1 THEN GO SUB 2500
1210 IF e2=1 THEN GO SUB 2600
1220 IF e3=1 THEN GO SUB 2700
1230 IF m=1 THEN GO SUB 2800
1400 GO TO 1050
2000 IF c=0 AND h=0 THEN LET a$="\a\b": LET b$="\c\d": LET c=1: RETURN
2005 IF c=0 AND h=1 THEN LET a$="\g\h": LET b$="\i\j": LET c=1: RETURN
2010 IF c=1 AND h=0 THEN LET a$="\a\b": LET b$="\e\f": LET c=0: RETURN
2015 IF c=1 AND h=1 THEN LET a$="\g\h": LET b$="\k\l": LET c=0
2100 RETURN
2490 REM rutina de movimiento del enemigo 1
2500 IF z=0 THEN PRINT AT q,w; INK 3; OVER 1;c$: LET w=w+1: PRINT AT q,w; INK 3; OVER 1;c$: IF w>dw THEN PRINT AT q,w; INK 3; OVER 1;c$: LET z=1: LET c$=d$: PRINT AT q,w; INK 3; OVER 1;c$
2510 IF z=1 THEN PRINT AT q,w; INK 3; OVER 1;c$: LET w=w-1: PRINT AT q,w; INK 3; OVER 1;c$: IF w<iw THEN PRINT AT q,w; INK 3; OVER 1;c$: LET z=0: LET c$=e$: PRINT AT q,w; INK 3; OVER 1;c$
2520 IF x>=w-1 AND x<=(w+1) AND y+1=q THEN GO TO 3000
2550 RETURN
2590 REM rutina de movimiento del enemigo 2
2600 PRINT AT k,l; INK 5; OVER 1;f$: LET k=k+1: PRINT AT k,l; INK 5; OVER 1;f$
2610 IF k>dk THEN PRINT AT k,l; INK 5; OVER 1;f$: LET f$="\r": PRINT AT k,l; INK 5; OVER 1;f$: BEEP .01,40: PRINT AT k,l; INK 5; OVER 1;f$: LET f$="\q": LET k=uk: PRINT AT k,l; INK 5; OVER 1;f$
2620 IF (y=k OR k-1=y) AND (x=l OR x+1=l) THEN GO TO 3000
2640 RETURN
2699 REM rutina del enemigo 3
2700 GO TO v
2705 POKE 23607,248
2710 LET ce3=ce3-1
2720 IF ce3<4 THEN PRINT AT f,g-2; INK 4; OVER 1;"..";AT f,g+2;"//"
2725 POKE 23607,251
2730 IF ce3<4 AND y>(f-2) AND y<(f+2) AND x>(g-4) AND x<(g+4) THEN GO TO 3000
2740 IF ce3<1 THEN LET ce3=ce3m
2790 RETURN
2799 REM rutina enemigo 4
2800 POKE 23607,248
2805 IF r=0 THEN PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"E": LET o=o-1: PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"E"
2810 IF r=1 THEN PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"F": LET o=o+1: PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"F"
2820 IF o<i THEN LET r=1: PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"E": PRINT AT o,p; OVER 1; INK 1; BRIGHT 1;"F"
2830 IF o>u THEN LET r=0: PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"F": PRINT AT o,p; INK 1; OVER 1; BRIGHT 1;"E"
2840 IF (y=o OR y=o-1) AND (x=p OR x+1=p) THEN GO TO 3000
2850 IF y>15 THEN GO TO 3000
2880 POKE 23607,251
2890 RETURN
2990 REM una vida menos
3010 FOR n=0 TO 6
3015 BEEP .01,(n+10)*3
3020 PRINT AT y,x; OVER 1; INK n;a$;AT y+1,x; OVER 1;b$
3030 NEXT n
3040 LET vidas=vidas-1
3050 IF vidas=0 THEN GO TO 8500
3090 GO TO 1005
3490 REM incrementa puntos
3500 LET puntos=puntos+1: PRINT AT 20,24; INK 7; BRIGHT 1;"\s";puntos
3510 IF puntos<bl THEN PRINT AT y-1,x-1; INK 6;" \s  ": BEEP .01,20
3520 IF puntos>=bl THEN PRINT AT puy,pux; INK 1;" ";AT puy+1,pux;" ";AT puy+2,pux;" ": BEEP .1,10: BEEP .1,20: IF puy+1=y AND pux=x+2 THEN FOR n=0 TO 6: PRINT AT y,x; INK n; OVER 1;a$;AT y+1,x;b$: BEEP .01,n*3: NEXT n: LET pant=pant+1: GO TO 1005
3590 RETURN
3890 REM marcadores y vidas
3900 POKE 23607,248: PRINT AT 12,1; INK 2;AT 21,1;"(";AT 20,1;")";AT 19,1;CHR$ 39:: POKE 23607,251
3910 PRINT AT 20,24; INK 7;"\s0";AT 20,28; INK 7;"\a\b";vidas: POKE 23607,248: PRINT AT 20,2; INK 2;"p": POKE 23607,251: PRINT AT 20,4; INK 5;t$
3980 RETURN
4000 REM pantallas
4005 REM pantalla 0
4010 LET y=15: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=16: LET w=20: LET e=1: LET z=1: LET iw=10: LET dw=20: LET e3=0: LET bl=8
4020 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=1: LET k=6: LET l=22: LET uk=k: LET dk=10: LET f$="\q": LET puntos=0: LET pux=31: LET puy=2: LET J=2: LET A=0.1: LET t$="    EL VESTUARIO"
4025 LET m=0: LET v=2705
4030 POKE 23607,248: PRINT AT 0,0; INK 2;" ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !";AT 17,0;" ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !";AT 18,0;"! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ": FOR n=1 TO 16: PRINT AT n,0; INK 2;"!";AT n,31;" ": NEXT n
4035 PRINT AT 12,1; INK 2;" ! ! ! ! ! ! ! ! ! ! !";AT 13,21;" !";AT 16,25; INK 2;" ! ! !";AT 15,27;" ! !";AT 5,21;" ! ! ! ! !";AT 10,27;" ! !";AT 7,8;" ! ! ! ! ! !";AT 6,18;" ! !";AT 8,1;" !";AT 9,1;" ! !";AT 10,1;" ! !";AT 11,1;" ! ! !";AT 7,1; INK 6;CHR$ 34;AT 1,1;"#";AT 2,1;"$";AT 3,22;"%";AT 4,22;"&"
4038 PRINT AT 1,5; INK 3;"1";AT 10,10; INK 6;"2424242424";AT 11,10;"3434343434": POKE 23607,251
4040 PRINT AT 13,6; INK 1;"\s";AT 13,12;"\s";AT 13,18; INK 1;"\s";AT 11,29; INK 1;"\s";AT 6,28;"\s";AT 8,14;"\s";AT 1,14;"\s";AT 1,24;"\s"
4099 RETURN
4100 REM pantalla 1
4105 LET y=8: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=16: LET w=20: LET e=0: LET z=1: LET iw=10: LET dw=20: LET e3=1: LET f=8: LET g=20: LET ce3=11: LET ce3m=ce3: LET bl=4
4110 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=0: LET k=8: LET l=10: LET uk=8: LET dk=10: LET f$="\q": LET puntos=0: LET pux=31: LET puy=7: LET J=2: LET A=0.3: LET t$="   LOS CONTADORES"
4115 LET m=0: LET v=2705
4120 POKE 23607,248: FOR N=0 TO 5 STEP 2: PRINT AT N,0; INK 2;" ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !";AT N+1,0;"! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ": NEXT N: PRINT AT 10,0; INK 2;" ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !";AT 11,0;"! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! "
4125 FOR N=6 TO 9: PRINT AT N,31; INK 2;"!": NEXT N: PRINT AT 8,15; INK 6;"*,";AT 9,15;"+-";AT 8,10;"*,";AT 9,10;"+-"
4127 PRINT AT f,g; INK 6;"*,";AT f+1,g;"+-"
4130 POKE 23607,251: FOR N=2 TO 5: PRINT AT N,10; INK 0;"            ": NEXT N: PRINT AT 6,0; INK 2;" ";AT 7,0;" ";AT 8,0;" ";AT 9,0;" "
4135 POKE 23607,248: PRINT AT 2,15; INK 3;"0";AT 3,15;"1": POKE 23607,251
4140 PRINT AT 6,4; INK 1;"\s";AT 6,8;"\s";AT 6,24;"\s";AT 6,28;"\s"
4180 RETURN
4199 REM pantalla 2
4200 LET y=16: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=16: LET w=20: LET e=0: LET z=1: LET iw=10: LET dw=20: LET e3=1: LET f=6: LET g=20: LET ce3=11: LET ce3m=ce3: LET bl=6
4210 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=1: LET k=4: LET l=6: LET uk=k: LET dk=7: LET f$="\q": LET puntos=0: LET pux=31: LET puy=5: LET j=2: LET a=0.1: LET t$=" NAVE MANTENIMIENTO"
4215 LET m=0: LET v=2705
4220 POKE 23607,248
4225 PRINT AT 0,0; INK 2;"56565656565656565656565656565656";AT 1,0;"65656565656565656565656565656565";AT 18,0;"56565656565656565656565656565656";AT 2,0;"5656";AT 3,0;"656";AT 4,0;"56";AT 5,0;"6";AT 12,0;"5656";AT 9,6;"56";AT 2,6; INK 3;"0";AT 3,6;"1"
4230 PRINT AT 17,10; INK 1;"7888878888788887888878";AT 15,8; INK 2;" !";AT 16,8;" !";AT 17,8;" !";AT 15,11; INK 4;"9;=?";AT 16,11;":\#201\@";AT 15,27;"9;=?";AT 16,27;":\#201\@";AT 8,11; INK 2;"A";AT 8,30;"B"
4240 PRINT AT 7,20; INK 6;"CD"
4250 POKE 23607,251
4255 FOR n=9 TO 14: PRINT AT n,10; INK 2;" "; INK 3;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::": NEXT n: PRINT AT 8,12; INK 2;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::"
4257 PRINT AT 10,12; PAPER 3; INK 7;"\::\::\::\::\::\:: \::\::\::\:: \::\::\::\::\::\::";AT 11,12;"\::\::\::\::\::\:: \::\::\::\:: \::\::\::\::\::\::";AT 12,12;"\::\::\::\::\::\:: \::\::\::\:: \::\::\::\::\::\::";AT 13,19;"\::\::\::\::";AT 14,19;"\::\::\::\::"
4260 FOR n=2 TO 16: PRINT AT n,0; INK 2; OVER 1;" ";AT n,31;" ": NEXT n
4270 PRINT AT 6,1; INK 1;"\s";AT 13,2;"\s";AT 4,3;"\s";AT 2,12;"\s";AT 2,20;"\s";AT 2,28;"\s";AT 14,31; INK 1;"\: ";AT 14,10; INVERSE 1;"\: "
4295 RETURN
4299 REM pantalla 3
4300 LET y=6: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=7: LET w=15: LET e=1: LET z=1: LET iw=14: LET dw=17: LET e3=1: LET f=6: LET g=10: LET ce3=11: LET ce3m=ce3: LET bl=5
4310 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=0: LET k=4: LET l=6: LET uk=k: LET dk=7: LET f$="\q": LET puntos=0: LET pux=31: LET puy=5: LET j=2: LET a=0.2: LET t$=" NAVE MANTENIMIENTO"
4315 LET m=0: LET v=2705
4320 POKE 23607,248
4330 PRINT AT 15,1; INK 4;"9;=?";AT 16,1;":\#201\@";AT 15,17;"9;=?";AT 16,17;":\#201\@";AT 8,1; INK 2;"A";AT 8,22;"A";AT 8,20;"B";AT 15,22; INK 4;"9;=?";AT 16,22;":\#201\@"
4340 PRINT AT 17,0; INK 1;"87888878888788887888878888788878";AT 7,10; INK 6;"CD";AT 7,31;"C";AT 18,0; INK 2;"56565656565656565656565656565656"
4350 PRINT AT 0,0; INK 2;"56565656565656565656565656565656";AT 1,0;"65656565656565656565656565656565"
4360 POKE 23607,251
4370 FOR n=9 TO 14: PRINT AT n,0; INK 2;" "; INK 3;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\:: \::\::\::\::\::\::\::\::\::\::": NEXT n: PRINT AT 8,2; INK 2;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::";AT 8,23;"\::\::\::\::\::\::\::\::\::"
4375 PRINT AT 10,2; PAPER 3; INK 7;"\::\::\::\::\::\:: \::\::\::\:: \::\::\::\::\::\::";AT 11,2;"\::\::\::\::\::\:: \::\::\::\:: \::\::\::\::\::\::";AT 12,2;"\::\::\::\::\::\:: \::\::\::\:: \::\::\::\::\::\::";AT 13,9;"\::\::\::\::";AT 14,9;"\::\::\::\::"; INK 1; PAPER 0;AT 14,0;"\ :";AT 14,21;"\::"
4377 PRINT AT 10,23; PAPER 3; INK 7;"\::\::\::\::\::\:: \::\::";AT 11,23;"\::\::\::\::\::\:: \::\::";AT 12,23;"\::\::\::\::\::\:: \::\::";AT 13,30;"\::\::";AT 14,30;"\::\::"
4380 FOR n=2 TO 6: PRINT AT n,0; INK 2;" ";AT n,31;" ": NEXT n: PRINT AT 2,4; INK 1;"\s";AT 2,10;"\s";AT 2,16;"\s";AT 2,22;"\s";AT 2,28;"\s"
4390 RETURN
4399 REM pantalla 4
4400 LET y=6: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=11: LET w=23: LET e=1: LET z=1: LET iw=21: LET dw=25: LET e3=0: LET f=6: LET g=10: LET ce3=11: LET ce3m=ce3: LET bl=4
4410 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=0: LET k=4: LET l=6: LET uk=k: LET dk=7: LET f$="\q": LET puntos=0: LET pux=31: LET puy=2: LET j=2: LET a=0.2: LET t$=" NAVE MANTENIMIENTO"
4415 LET m=0: LET v=2705
4420 POKE 23607,248
4430 PRINT AT 15,6; INK 4;"9;=?";AT 16,6;":\#201\@";AT 8,9; INK 2;"B"
4440 PRINT AT 17,0; INK 1;"87888878888788887888878888788878";AT 7,0; INK 6;"D";AT 18,0; INK 2;"56565656565656565656565656565656"
4450 PRINT AT 0,0; INK 2;"56565656565656565656565656565656";AT 1,0;"65656565656565656565656565656565"
4455 PRINT AT 2,14; INK 2;"565656";AT 3,15;"5656";AT 15,12;" ! ! !";AT 14,15;" ! !";AT 13,16;" ! !";AT 12,17;" ! ! ! ! ! ! ! ";AT 7,20;" ! ! !";AT 8,25;" !";AT 11,30;" !";AT 6,19;" !";AT 5,29;" ! ";AT 4,17; INK 3;"0";AT 5,17;"1";AT 13,20; INK 4;"#";AT 14,20;"$"
4457 FOR N=6 TO 10: PRINT AT N,31; INK 2;"5": NEXT N
4460 POKE 23607,251
4470 FOR n=9 TO 14: PRINT AT n,0; INK 3;"\::\::\::\::\::\::\::\::\::\::": NEXT n: PRINT AT 8,0; INK 2;"\::\::\::\::\::\::\::\::\::"
4475 PRINT AT 10,0; PAPER 3; INK 7;"\::\:: \::\::\::\::\::\::";AT 11,0;"\::\:: \::\::\::\::\::\::";AT 12,0;"\::\:: \::\::\::\::\::\::";AT 13,0;"\::\::";AT 14,0;"\::\::"; INK 2; PAPER 0;AT 14,10;"\: "
4480 FOR n=2 TO 6: PRINT AT n,0; INK 2;" ";AT n+6,10;" ": NEXT n: PRINT AT 16,10; INK 2;" ";AT 15,10;" "
4485 PRINT AT 2,2; INK 1;"\s";AT 2,6;"\s";AT 2,10;"\s";AT 2,23;"\s"
4490 RETURN
4499 REM pantalla 5
4500 LET y=12: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=14: LET w=14: LET e=1: LET z=1: LET iw=13: LET dw=15: LET e3=0: LET f=6: LET g=10: LET ce3=11: LET ce3m=ce3: LET bl=4
4510 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=0: LET k=4: LET l=6: LET uk=k: LET dk=7: LET f$="\q": LET puntos=0: LET pux=31: LET puy=9: LET j=2: LET a=0.1: LET t$="      LA CLOACA"
4515 LET o=16: LET p=10: LET r=0: LET u=15: LET i=10: LET m=1: LET v=2705
4520 POKE 23607,248
4530 PRINT AT 18,0; INK 2;"56565656565656565656565656565656";AT 16,0;" ! !";AT 17,0;"! !";AT 15,0;"! ! !";AT 14,0;" ! ! !";AT 15,12; INK 2;"565656";AT 15,22;"56";AT 15,27;"56565"
4540 FOR N=0 TO 2 STEP 2: PRINT AT N,0; INK 2;" ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !": NEXT N: PRINT AT 1,0; INK 2;"! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ";AT 3,0; INK 2;" ! ! !";AT 4,0;" ! !";AT 5,0;" !";AT 9,23;" ! !";AT 12,30;" !";AT 6,9;" ! ! ! ! !";AT 7,6;" ! !";AT 8,5;" !";AT 9,4;" !"
4545 PRINT AT 7,14; INK 4;"0";AT 8,14;"1"
4560 POKE 23607,251
4570 PRINT AT 16,4; INK 1; BRIGHT 1;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::";AT 17,3;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::"
4575 FOR N=6 TO 13: PRINT AT N,0; INK 2;" ";AT N-3,31;" ": NEXT N
4580 PRINT AT 3,20; INK 1;"\s";AT 3,29;"\s";AT 3,10;"\s";AT 5,2;"\s"
4585 POKE 23607,248: PRINT AT 17,5; INK 1; BRIGHT 1; OVER 1;CHR$ 34: POKE 23607,251
4590 RETURN
4599 REM Pantalla 6
4600 LET y=13: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=14: LET w=14: LET e=1: LET z=1: LET iw=13: LET dw=15: LET e3=0: LET f=6: LET g=10: LET ce3=11: LET ce3m=ce3: LET bl=4
4610 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=0: LET k=4: LET l=6: LET uk=k: LET dk=7: LET f$="\q": LET puntos=0: LET pux=31: LET puy=5: LET j=2: LET a=0.1: LET t$="      LA CLOACA"
4615 LET o=16: LET p=10: LET r=0: LET u=15: LET i=10: LET m=1: LET v=2705
4620 POKE 23607,248
4630 PRINT AT 18,0; INK 2;"56565656565656565656565656565656";AT 0,0;"56565656565656565656565656565656"
4635 PRINT AT 16,30; INK 3;"GI";AT 17,30;"HJ";AT 14,30;"GI";AT 15,30;"HJ";AT 12,24;"OQGIGIKM";AT 13,24;"PRHJHJLN";AT 14,24;"GI";AT 15,24;"HJ"
4636 PRINT AT 9,24; INK 2;"SU";AT 10,24;"TV"
4638 PRINT AT 15,0; INK 2;"565656";AT 15,12;"565656";AT 8,24;"56565656";AT 12,17;"5656";AT 9,12;"56";AT 6,8;"56";AT 6,19;"56";AT 1,25;"5656565"
4660 POKE 23607,251
4670 PRINT AT 16,0; INK 1; BRIGHT 1;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::";AT 17,0;"\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::"
4680 PRINT AT 1,4; INK 1;"\s";AT 1,12;"\s";AT 1,20;"\s";AT 2,28;"\s"
4690 FOR n=9 TO 14: PRINT AT n,0; INK 2;" ";AT n-7,31;" ": NEXT n
4695 RETURN
4699 REM Pantalla 7
4700 LET y=14: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=14: LET w=14: LET e=0: LET z=1: LET iw=13: LET dw=15: LET e3=1: LET f=16: LET g=15: LET ce3=13: LET ce3m=20: LET bl=5
4710 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=1: LET k=4: LET l=6: LET uk=k: LET dk=7: LET f$="\q": LET puntos=0: LET pux=31: LET puy=14: LET j=2: LET a=0.1: LET t$="      LA OFICINA"
4715 LET o=16: LET p=10: LET r=0: LET u=15: LET i=10: LET m=0: LET V=8000: LET b=0: LET po=0: LET g$="[\\"
4720 POKE 23607,248
4730 PRINT AT 0,0; INK 2;"56565656565656565656565656565656";AT 17,0;"GIGIGIGIGIGIGIGIGIGIGIGIGIGIGIGIGI";AT 18,0;"HJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJ";AT 6,10;"56565656565656";AT 12,10;"5656565656565656";AT 10,20; INK 6;"%";AT 11,20;"&"
4740 PRINT AT 4,12; INK 6;"WY4WY4WY4WY";AT 5,12;"XZ4XZ4XZ4XZ"
4750 PRINT AT 13,24; INK 2;"GI";AT 14,24;"HJ";AT 15,24;"GI";AT 16,24;"HJ";AT 7,17;"GI";AT 8,17;"HJ";AT 9,17;"56";AT 10,17;"GI";AT 11,17;"HJ";AT 1,30; INK 2;"GI";AT 2,30;"HJ";AT 3,30;"56";AT 4,30;"GI";AT 5,30;"HJ";AT 6,30;"56";AT 7,30;"GI";AT 8,30;"HJ";AT 9,28;"5656"
4755 PRINT AT 10,13; INK 6;"*,";AT 11,13;"+-";AT 13,9; INK 2;"56";AT 16,0;"! ! !";AT 9,5;"56";AT 1,0;"GI";AT 2,0;"HJ";AT 3,0;"56";AT 4,0;"GI";AT 5,0;"HJ";AT 6,0;"56";AT 7,0;"GI";AT 8,0;"HJ";AT 9,0;"56";AT 10,0;"GI";AT 11,0;"HJ";AT 12,0;"56";AT 1,2; INK 5;"#";AT 2,2;"$"
4758 PRINT AT 1,6; INK 3;"0";AT 2,6;"1"
4760 POKE 23607,251
4770 PRINT AT 2,7; INK 2;" ";AT 14,0;" ";AT 11,31;" ";AT 13,31;" ";AT 15,31;" "
4780 PRINT AT 1,16; INK 1;"\s";AT 7,13;"\s";AT 7,21;"\s";AT 1,26;"\s";AT 13,18;"\s"
4790 RETURN
4799 REM Pantalla 8
4800 LET y=11: LET x=1: LET c=1: LET h=0: LET s=0: LET d=2: LET t=6: LET q=14: LET w=14: LET e=0: LET z=1: LET iw=13: LET dw=15: LET e3=1: LET f=0: LET g=0: LET ce3=13: LET ce3m=20: LET bl=5
4810 LET a$="\a\b": LET b$="\c\d": LET c$="\m\n": LET d$="\m\n": LET e$="\p\o": LET e2=0: LET k=4: LET l=18: LET uk=k: LET dk=11: LET f$="\q": LET puntos=0: LET pux=31: LET puy=14: LET j=2: LET a=0.2: LET t$="EL CUARTO DE CLIMA"
4815 LET o=16: LET p=10: LET r=0: LET u=15: LET i=10: LET m=0: LET V=8100: LET b=0: LET po=0: LET g$="[\\"
4820 POKE 23607,248
4830 PRINT AT 0,0; INK 2;"56565656565656565656565656565656";AT 17,0;"GIGIGIGIGIGIGIGIGIGIGIGIGIGIGIGIGI";AT 18,0;"HJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJ";AT 1,31;"5";AT 13,0;"GIGIGI";AT 14,0;"HJHJHJ";AT 15,0;"IGI";AT 16,0;"JHJ";AT 13,15;"GIGIKM";AT 14,15;"HJHJLN";AT 15,15;"GIGIGI";AT 16,15;"HJHJHJ";AT 16,9;" !"
4835 PRINT AT 10,8; INK 2;"5656";AT 9,0;"656565656": FOR N=1 TO 7 STEP 2: PRINT AT N,0; INK 2;"GI";AT N+1,0;"HJ": NEXT N: PRINT AT 1,2; INK 4;"#";AT 2,2;"$"
4840 PRINT AT 11,27; INK 1; BRIGHT 1;"_\`_\`";AT 13,27;"abab";AT 15,28;"cc": FOR n=1 TO 9: PRINT AT n,30; INK 3;"0": NEXT n: PRINT AT 1,18; INK 3;"0";AT 2,18;"1"
4845 PRINT AT 15,4; INK 3; BRIGHT 1;"df";AT 16,4;"eg";AT 15,15;"df";AT 16,15;"eg"
4850 PRINT AT 7,2; INK 6;"hj";AT 8,2;"ik"
4860 POKE 23607,251
4870 FOR N=10 TO 16: PRINT AT N,26; INK 1; BRIGHT 1; OVER 1;"\::\::\::\::\::\::": NEXT N
4875 PRINT AT 10,25; INK 2;" ";AT 12,25;" ";AT 15,25;" ";AT 9,26;"    ";AT 6,29;" ";AT 3,29;" ";AT 11,0;" "
4880 PRINT AT 1,10; INK 6;"\s";AT 1,25;"\s";AT 11,10; INK 1;"\s"
4895 RETURN
7998 STOP
7999 REM Enemigo 5
8000 POKE 23607,248
8020 PRINT AT f,g; INK 4; OVER 1;g$
8021 LET b=b+1
8022 IF b=1 THEN LET g$="[\\"
8023 IF b=2 THEN LET g$="]^"
8024 IF b>1 THEN LET b=0
8025 IF po=0 THEN LET g=g+1: PRINT AT f,g; INK 4; OVER 1;g$: IF g>(ce3m) THEN LET po=1: PRINT AT f,g; INK 4; OVER 1;g$
8030 IF po=1 THEN LET g=g-1: PRINT AT f,g; INK 4; OVER 1;g$: IF g<(ce3) THEN LET po=0
8050 POKE 23607,251
8060 IF y+1=f AND x>(g-2) AND x<(g+3) THEN GO TO 3000
8099 RETURN
8100 REM enemigo 6
8105 POKE 23607,248
8120 IF g<10 AND f=0 THEN PRINT AT 15,6; INK 4; BRIGHT 1;"lnlnlnlnl": LET f=1: GO TO 8131
8130 IF g<10 AND f=1 THEN PRINT AT 15,6; INK 4; BRIGHT 1;"momomomom": LET f=0
8140 IF g=9 THEN PRINT AT 15,6; INK 0;"444444444"
8160 IF Y>13 AND X>4 AND X<14 AND G<10 THEN POKE 23607,251: GO TO 3000
8170 IF Y=7 AND X=3 AND B=0 THEN BEEP .01,1: BEEP .01,10: BEEP .01,25: BEEP .01,8: LET B=1: PRINT AT 21,14; INK 4; BRIGHT 1;"qr"
8172 IF b=1 AND y=15 AND x=23 THEN FOR n=0 TO 10: BEEP .01,n: BEEP .01,n-8: NEXT n: GO TO 9000
8175 LET g=g+1: IF g>20 THEN LET g=0
8180 POKE 23607,251
8190 RETURN
8500 REM fin de juego
8505 POKE 23607,251
8507 PRINT AT y,x; INK 6; OVER 1;a$;AT y+1,x;b$
8510 FOR n=0 TO 20
8520 FOR m=0 TO 7
8530 PRINT AT 20,3; INK m;"     FIN DE JUEGO    "
8535 IF n>3 AND INKEY$<>"" THEN GO TO 900
8540 NEXT m
8550 NEXT n
8590 GO TO 900
9000 REM juego acabado
9005 POKE 23607,251: CLS
9010 PRINT AT 2,10; INK 2; FLASH 1;"FELICIDADES!!";AT 5,6; FLASH 0;"HAS CONSEGUIDO REPARAR";AT 6,3;"LA MAQUINA DE CLIMATIZACION";AT 7,7;"Y HAS CAMBIADO TODAS";AT 8,11;"LAS BOMBILLAS";AT 10,9;"SIR CLIVE TU JEFE";AT 11,2;"TE ACABA DE AUMETAR EL SUELDO"
9040 POKE 23607,248
9050 PRINT AT 20,0; INK 1; BRIGHT 1;"GIGIGIGIGIGIGIGIGIGIGIGIGIGIGIGI";AT 21,0;"HJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJ"
9060 PRINT AT 18,14; INK 6;"hj";AT 19,14;"ik";AT 18,16;"\g\h";AT 19,16;"\i\j";AT 3,0; INK 3;"SU";AT 4,0;"TV";AT 0,15; INK 6; BRIGHT 1;"\s";AT 18,4; INK 3;"*,44*,";AT 19,4;"+-44+-";AT 18,25; INK 4;"242424";AT 19,25;"343434"
9075 FOR N=0 TO 40: BEEP .01,N: BEEP .01,n-12: NEXT N
9080 POKE 23607,60: IF INKEY$="" THEN GO TO 9080
9085 CLS
9090 GO TO 900
