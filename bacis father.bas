100 PRINT TAB(26),"FATHER":PRINT
110 PRINT TAB(20);"CREATIVE COMPUTING"
120 PRINT TAB(18);"MORRISTOWN, NEW JERSEY "
130 PRINT:PRINT:PRINT
140 PRINT "WANT TO HAVE A DEBATE WITH YOUR FATHER, EH??":PRINT
150 DIM M$(2)
160 A=2
170 M$(2)="FATHER"
180 PRINT "DO YOU WANT INSTRUCTIONS";
190 INPUT Q1$
200 IF Q1$="YES" THEN 220
210 GOTO 310
220 PRINT "YOU ARE GOING TO PLAY IN A GAME IN WHICH YOU WILL DISCUSS"
230 PRINT "A PROBLEM WITH YOUR ";M$(A);" AND ATTEMPT TO GET HIM TO"
240 PRINT "AGREE WITH YOU IN THREE TRIES."
250 PRINT
260 PRINT "FOR EACH STATEMENT YOU MAKE, I WILL TELL YOU WHAT "
270 PRINT "YOUR ";M$(A);" REPLIED."
280 PRINT
290 PRINT "YOU MUST SELECT YOUR STATEMENT FROM ONE"
300 PRINT "OF THE FOLLOWING SIX."
310 PRINT "**********"
320 PRINT "1.     O.K. I WILL STAY HOME."
330 PRINT "2.     BUT I'D REALLY LIKE TO GO. ALL MY FRIENDS ARE GOING."
340 PRINT "3.     IF ALL MY WORK IS DONE, I SHOULD BE ABLE TO GO."
350 PRINT "4.     IF YOU LET ME GO OUT I'LL BABYSIT ALL NEXT WEEK"
360 PRINT "5.     YOU NEVER LET ME DO WHAT I WANT TO DO."
370 PRINT "6.     I'M GOING ANYWAY!"
380 PRINT "**********"
390 PRINT
400 PRINT "WHEN A QUESTION MARK APPEARS, TYPE THE NUMBER"
410 PRINT "OF YOUR RESPONSE FOLLOWED BY A RETURN."
420 PRINT
430 PRINT "YOU WILL RECEIVE POINTS BASED ON HOW SUCCESSFULL YOU"
440 PRINT "ARE AT CONVINCING YOUR FATHER."
450 PRINT
460 PRINT "THE ISSUE IS:"
470 PRINT "    YOU WANT TO GO OUT SATURDAY NIGHT."
480 PRINT "     YOUR ";M$(A);" OPPOSES THE IDEA."
490 PRINT
500 PRINT "WHEN YOU FIRST BRING UP THE IDEA, YOUR ";M$(A);" STATES:"
510 P1=-1
520 P3=2
530 P5=-1
540 C=1
550 P6=-2
560 X=0
570 I6=0
580 PRINT
590 PRINT "NO, YOU CAN'T GO OUT ON A DATE SAT. NITE AND THAT'S THAT."
600 PRINT "HOW WOULD YOU APPROACH YOUR ";M$(A)
610 PRINT "WHAT WOULD YOU SAY FIRST";:INPUT I1
620 ON I1 GOTO 720,760,1070,1070,750,700
630 PRINT "NO, YOU CAN NOT GO OUT ON A SAT. NIGHT."
640 X=X-2:I6=I6+I1
650 IF I6=I2 THEN 830
660 C=C+1
670 IF C=3 THEN 1040
680 IF I2=6 THEN 840
690 GOTO 780
700 PRINT "YOUR ";M$(A);" SAID:"
710 GOTO 630
720 PRINT "AGREEMENT REACHED"
730 X=X+P1
740 GOTO 1040
750 X=X+P5
760 PRINT "YOUR ";M$(A);" SAID:"
770 PRINT "I DON'T THINK YOU DESERVE TO GO OUT SAT. NITE."
780 PRINT "WHAT IS YOUR REPLY";
790 INPUT I2
800 ON I2 GOTO 720,960,1010,1010,950,700
810 PRINT "YOUR ";M$(A);" SAID:"
820 X=X+P3
830 PRINT "WHAT IS YOUR REPLY";
840 INPUT I3
850 ON I3 GOTO 910,1050,890,890,910,920
860 X=X+P1
870 X=X+P1
880 GOTO 1050
890 X=X+2
900 GOTO 1050
910 X=X-1:GOTO 1050
920 X=X-2
930 PRINT "DISCUSSION ENDED. NO AGREEMENT REACHED."
940 GOTO 1040
950 X=X+P5
960 PRINT "YOUR  ";M$(A);" SAID:"
970 PRINT "NO, I'M SORRY, BUT YOU REALLY DON'T DESERVE TO GO ";
980 PRINT "SAT. NIGHT."
990 PRINT "WHAT IS YOUR REPLY";:INPUT I3
1000 ON I3 GOTO 720,890,1010,1010,870,860
1010 PRINT "YOUR FATHER SAID:"
1020 X=X+P3
1030 PRINT "O.K. IF YOU DO THAT YOU CAN GO OUT SAT. NIGHT "
1040 PRINT
1050 PRINT "ON A SCALE OF -7 TO 4, YOUR SCORE WAS ";X;" POINTS."
1060 GOTO 1120
1070 PRINT "YOUR ";M$(A);" SAID:"
1080 X=X+P3
1090 PRINT "WELL, MAYBE, BUT I DON'T THINK YOU SHOULD GO."
1100 PRINT "WHAT IS YOUR REPLY";:GOTO 790
1110 PRINT
1120 PRINT "IT IS NOW SAT. NIGHT, WHICH DO YOU DO?"
1130 PRINT "     1. GO OUT."
1140 PRINT "     2. STAY HOME."
1150 INPUT Q3
1160 IF Q3 > 1 THEN 1180
1170 GOTO 1220
1180 IF I2 > 1 THEN 1200
1190 GOTO 1220
1200 IF I3 < 5 THEN 1220
1210 GOTO 1230
1220 IF RND(1) > .5 THEN 1250
1230 PRINT "YOUR FATHER CHECKED UP ON YOU."
1240 GOTO 1270
1250 PRINT "YOU FATHER DIDN'T CHECK UP ON YOU."
1260 GOTO 1270
1270 ON Q3 GOTO 1360,1280
1280 PRINT "YOUR SCORE IS NOW ";X;" POINTS."
1290 GOTO 1410
1300 IF I2=3THEN 1330
1310 IF I2=4 THEN 1330
1320 GOTO 1350
1330 X=X+1
1340 GOTO 1280
1350 ON I3 GOTO 1280,1280,1330,1330,1280,1280
1360 IF I1=1 THEN 1390
1370 ON I2 GOTO 1390,1380,1280,1280,1380,1380
1380 ON I3 GOTO 1390,1390,1280,1280,1390,1390
1390 X=X-1
1400 GOTO 1280
1410 ON X+8 GOTO 1420,1420,1420,1420,1450,1450,1450,1450,1470,1500,1500,1500
1420 PRINT "YOU DIDN'T REALLY SUCCEED IN CHANGING YOUR"
1430 PRINT M$(A);"'S IDEAS AT ALL."
1440 GOTO 1510
1450 PRINT "YOU DIDN'T SUCCEED IN CONVINCING YOUR ";M$(A);"."
1460 GOTO 1510
1470 PRINT "YOU CONVINCED YOU ";M$(A);" BUT IT TOOK YOU TOO"
1480 PRINT "MANY TRIES."
1490 GOTO 1510
1500 PRINT "WELL DONE!"
1510 PRINT
1520 T1=T1+1
1530 PRINT "WOULD YOU LIKE TO TRY AGAIN";:INPUT Q5$
1540 IF Q5$="YES" THEN 500
1550 END