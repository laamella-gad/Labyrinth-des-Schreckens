

;desschreckens.prg ==0801==
    1 poke45,peek(174):poke46,peek(175):clr
    2 printchr$(147)
    3 poke198,0
    4 poke53265,peek(53265)or16
    5 rem
    6 poke53280,6:poke53281,6
    7 gosub 210
   10 print"{clr}{down}       labyrinth des schreckens"
   20 print"{down}{down}written by thomas werner"
   40 print"{down}willkommen abenteurer!"
   50 print"{down}die aufgabe dieses adventures ist,"
   60 print"{down}einen schatz zu finden."
   70 print"{down}die befehlssaetze bestehen aus einem"
   80 print"{down}verb und einem nomen."
   90 print"{down}z.b.: nimm flasche  sprich hallo"
  100 print"{down}lege axt  schau  inventur  stop"
  105 print"{down}{down}       [ eine taste druecken ]"
  106 geta$:ifa$=""then106
  110 print"{clr}{down}zum gehen in eine bestimmte richtung"
  120 print"{down}geben sie den anfangsbuchstaben der"
  130 print"{down}entsprechenden himmelsrichtung ein."
  140 print"{down}richtungen:     n"
  150 print"               w+o"
  160 print"                s"
  165 print"{down}ausserdem: h= hoch  r= runter"
  170 print"{down}{down}    happy adventuring!"
  180 print"{down}{down}      [ eine taste druecken ! ]"
  190 geta$:ifa$=""then190
  200 goto1000
  210 print"{down}oh! labyrinth des schreckens!"
  220 print"von thomas werner"
  230 print"hilfe, hilfe";
  240 dimco$(22)
  245 dimpn(17,5)
  250 dimpl$(17)
  255 dimit$(22)
  260 dimin(22,2)
  265 dimsp(8,63)
  266 dimws(3)
  270 restore
  280 print".";
  285 fori=1to22
  290 readco$(i)
  295 next
  300 fori=1to17
  305 readpl$(i)
  306 readpn(i,1)
  307 readpn(i,2)
  308 readpn(i,3)
  309 readpn(i,4)
  310 readpn(i,5)
  315 print".";
  320 next
  330 fori=1to22
  335 readit$(i)
  340 readin(i,1)
  345 readin(i,2)
  346 print".";
  350 nexti
  360 fori=1to8
  365 forc=1to63
  370 readsp(i,c)
  375 print".";
  380 next
  390 next
  400 datayoho,plugh,sprich,nimm,lege,iss,trink,druecke,schau
  405 datagrabe,klettere,gebe,oeffne,wirf,inventur,n,s,o,w,h,r,stop
  410 datain einer sackgasse,0,3,0,0,3
  420 datain der schatzkammer,0,4,0,0,3
  425 dataim 'rumraum',1,5,0,0,3
  430 datain der spiegelhalle,0,6,0,0,3
  435 datain der hoehle des schreckens,3,9,0,0,3
  440 datain einem geheimzimmer,0,0,0,11,1
  445 dataan einem sonnigen strand,0,0,8,0,4
  450 dataan einem meeresstrand,0,10,9,7,4
  455 datain einer hoehle,5,0,0,8,3
  460 datain einer muffigen hoehle,8,13,11,0,3
  465 dataim zwergenkorridor,0,0,6,10,3
  470 datain der baumkrone,0,0,0,0,5
  475 dataim geheimgang,10,16,0,0,3
  480 dataim garten,0,17,0,0,2
  485 dataauf einem staubigen dachboden,0,0,0,0,1
  490 datain einem kleinen zimmer,0,0,17,0,1
  495 dataim treppenhaus,14,0,0,16,1
  500 data"yoho /dort steht:'yoho'",1,0
  505 dataschat/ein schatz,2,1
  510 dataplugh/'plugh',2,0
  515 datarum  /eine sprudelnde rumquelle,3,0
  520 dataspieg/ein spiegel,4,0
  525 datamampf/ein abenteurermampfer,5,0
  530 dataschra/ein schrank,6,0
  535 datakiste/eine kiste,0,0
  540 dataerdnu/erdnuesse,0,1
  545 datastein/ein stein,8,1
  550 dataschil/ein schild,9,0
  555 datazwerg/ein grimmiger zwerg,11,0
  560 datanest /ein nest,12,0
  565 datalampe/eine brennende taschenlampe,12,1
  570 databaum /ein grosser baum,14,0
  575 dataflasc/eine leere flasche,0,1
  580 dataflasc/eine flasche rum,0,1
  585 dataschau/eine schaufel,15,1
  590 databild /ein bild,16,1
  595 dataknopf/ein knopf,0,0
  600 datagehei/ein geheimgang,0,0
  605 datatrepp/eine treppe,17,0
  610 rem schatz
  615 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,127,255,128
  620 data64,0,128,64,0,128,32,0,64,32,0,64,16,128,160,31,127,96
  625 data26,43,48,28,80,168,30,128,68,31,255,254,15,255,254
  630 data7,255,254,3,255,254,1,255,254
  635 rem bild
  646 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  647 data0,0,0,0,0,0,255,255,255,128,254,1,135,57,193
  648 data128,84,1,128,146,5,130,0,11,133,0,21,136,129,233
  650 data 138,134,17,138,136,33,255,255,255
  655 rem quelle
  660 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  665 data0,0,0,0,247,0,3,8,128,4,198,64,25,41,32,34,48,160,18,48,160,16,48
  675 data16,12,0,112,3,128,128,0,127,0
  680 rem ab mam 1
  685 data0,0,0,0,0,0,1,2,0,2,133,0,0,72,0,0,72,0,0,252,0
  690 data1,254,0,3,19,0,15,243,192,31,255,224,15,255,192
  695 data 3,153,128,0,102,128,3,255,0,1,255,128,0,62,0
  700 data0,127,0,0,127,0,31,255,252,127,255,254
  710 rem ab mam 2
  715 data127,255,254,111,255,246,111,255,246,111,255,246
  720 data111,255,246,111,255,246,111,255,246,111,255,246
  725 data111,255,246,111,255,246,111,255,246,243,255,207,249,255,159
  730 data169,129,149,169,129,149,1,129,128,193,129,131,113,129,142
  735 data255,129,255,127,195,254,255,195,255
  740 rem zwerg
  745 data0,7,0,0,30,0,0,62,0,0,126,0,0,90,0,0,126,0,0,66,0,0,126,0,0,24,0
  750 data1,255,128,1,126,128,1,126,128,49,127,0,51,126,0
  755 data63,126,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,255,0
  760 rem flasche
  765 data0,0,0,0,56,0,0,40,0,0,40,0,0,40,0,0,40,0,0,40,0
  770 data0,68,0,0,130,0,0,130,0,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0
  775 data1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,255,0
  780 rem lampe
  785 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60
  790 data0,0,68,255,255,132,128,0,4,128,0,4,128,0,4,255,255,196
  795 data0,121,36,0,0,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  800 return
 1000 ap=16:sv=0:v=53281:k=0:sg=0:gg=0
 1100 pokev+17,peek(v+17)and239:onpn(ap,5)gosub50000,51000,52000,53000,54000
 1110 ifin(1,1)=apthenprint"{home}{down}{rght}yoho"
 1120 ifin(3,1)=apthenprint"{home}{down}{rght}plugh"
 1130 ifin(5,1)<>apthen1160
 1140 print"{home}{down}{down}":printtab(15)"UCCCCI":fori=1to6
 1145 printtab(15)"B    B"
 1150 next:printtab(15)"JCCCCK"
 1160 ifin(8,1)<>apthen1200
 1170 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{yel}{rvon}  {CBM-P}{CBM-P}{CBM-P}":print"{rvon} {CBM-N}M  M":print"{rvon} {CBM-N} M  M"
 1180 print"{rvon}  M O{CBM-Y}P"
 1190 print"{rvon}   ML{CBM-P}{SHIFT-@}{pur}"
 1200 ifin(9,1)=apthenprint"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"spc(10)"{brn}{CBM-+}{CBM-+}{pur}"
 1210 ifin(10,1)=apthenprint"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"spc(14)"{blk}Q{pur}"
 1220 ifin(11,1)<>apthen1300
 1225 print"{home}{down}{down}{down}{down}"
 1230 printtab(10)"UCCCCCCCCCCCCCCCCCI"
 1240 printtab(10)"Bachtung !!       B"
 1250 printtab(10)"BfleischfressenderB"
 1260 printtab(10)"BabenteurermampferB"
 1270 printtab(10)"JCCCCCCCCCCCCCCCCCK"
 1300 ifin(18,1)<>apthen1325
 1310 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{blk}"spc(16)"{CBM-L}{CBM-@}{CBM-@}{CBM-@}{CBM-@}OM"
 1320 printtab(16)"{CBM-L}{CBM-T}{CBM-T}{CBM-T}{CBM-T}LN{pur}"
 1325 fori=1to3:ws(i)=0:next
 1330 i=0:ifin(2,1)=aptheni=i+1:ws(2)=1
 1340 ifin(4,1)=aptheni=i+1:ws(1)=3
 1350 ifin(6,1)=aptheni=i+2:ws(1)=4:ws(2)=5
 1360 ifin(12,1)=aptheni=i+1:ws(1)=6
 1370 ifin(14,1)=aptheni=i+1:ws(3)=8
 1380 ifin(16,1)=aporin(17,1)=aptheni=i+1:ws(2)=7
 1390 ifin(19,1)=aptheni=i+1:ws(1)=2
 1400 ifi=0then2000
 1410 v=53248:ifi=1andws(1)<>0thenpokev+21,4
 1411 ifi=1andws(2)<>0thenpokev+21,8
 1412 ifi=1andws(3)<>0thenpokev+21,16
 1420 ifi=2andws(1)<>0andws(2)<>0thenpokev+21,12
 1421 ifi=2andws(1)<>0andws(3)<>0thenpokev+21,20
 1422 ifi=2andws(2)<>0andws(3)<>0thenpokev+21,24
 1430 ifi=3thenpokev+21,28
 1450 ifin(4,1)=aporin(6,1)=aporin(12,1)=aporin(19,1)=apthenpoke2042,13
 1460 ifin(2,1)=aporin(16,1)=aporin(17,1)=aporin(6,1)=apthenpoke2043,14
 1470 ifin(14,1)=apthenpoke2044,15
 1482 forb=1to3
 1483 ifws(b)=0then1499
 1490 forn=0to62:poke(b+12)*64+n,sp(ws(b),n+1):next
 1499 next
 1520 ex=28:ifws(2)=7orws(2)=0thenex=ex-8
 1530 ifws(3)=8orws(3)=0thenex=ex-16
 1535 ifws(1)=0thenex=ex-4
 1536 ifex<4thenex=4
 1540 pokev+23,ex:pokev+29,ex
 1550 ifws(1)=3orws(1)=6thenpokev+4,120:pokev+5,100
 1555 ifws(1)=3thenpokev+41,9
 1560 ifws(1)=4thenpokev+41,5
 1565 ifws(1)=6thenpokev+41,0
 1570 ifws(1)=2thenpokev+41,13
 1575 ifws(2)=1thenpokev+42,7
 1580 ifws(2)=7thenpokev+42,1
 1585 ifws(2)=5thenpokev+42,5
 1590 ifws(3)=8thenpokev+43,0
 1595 ifws(1)=4thenpokev+4,108:pokev+5,59:pokev+6,108:pokev+7,101
 1600 ifws(1)=2thenpokev+4,220:pokev+5,75
 1610 if(ws(2)=1orws(2)=7)andpn(ap,5)=3thenpokev+6,220:pokev+7,100
 1615 if(ws(2)=7orws(2)=1)andpn(ap,5)<>3thenpokev+6,220:pokev+7,150
 1620 ifws(3)=8andap<>12thenpokev+8,220:pokev+9,105
 1630 ifws(3)=8andap=12thenpokev+8,190:pokev+9,90
 2000 poke214,15:print"{blk}":print"sie sind "pl$(ap):print"sichtbare ausgaenge:";
 2005 pokev+17,peek(v+17)or16
 2010 ifpn(ap,1)<>0thenprint" n";
 2020 ifpn(ap,2)<>0thenprint" s";
 2030 ifpn(ap,3)<>0thenprint" o";
 2040 ifpn(ap,4)<>0thenprint" w";
 2041 ifap=17thenprint" h";
 2042 ifap=15orap=12thenprint" r";
 2050 print:print"einzelheiten: ";
 2060 x=0:fori=1to22:ifin(i,1)=apthenx=x+1:printmid$(it$(i),7);" "
 2070 next:ifx=0thenprint"keine"
 2080 print:input"befehl -->";a$
 2090 fori=1to15:ifmid$(a$,i,1)=" "thengoto3010
 3000 nexti
 3010 a1$=left$(a$,i-1)
 3020 a2$=mid$(a$,i+1)
 3040 fori=1to22:ifa1$=co$(i)then3060
 3050 nexti:print"ich kenne dieses wort leider nicht!":goto5000
 3060 ifa1$="yoho"ora1$="plugh"ora1$="sprich"ora1$="schau"ori>14thengoto3100
 3061 ifa1$="grabe"then3100
 3065 x=5
 3070 fori=1to22:forc=1to5:ifmid$(it$(i),c,1)=" "thenx=x-1
 3080 next:ifleft$(a2$,x)=left$(it$(i),x)then3100
 3090 x=5:next:print"deine ausdrucksweise ist mir unverstaendlich!":goto5000
 3100 oc=i:print"{clr}":pokev+21,1:ifoc=16and(in(17,1)=-1)orin(17,1)=apthenoc=17
 3110 ifa1$<>"sprich"then3150
 3120 print"ok!":print"'"a2$"'"
 3130 ifa2$="yoho"ora2$="plugh"thena1$=a2$:a2$=""
 3150 ifa1$="schau"thenprint"ok!"
 3160 ifa1$="stop"thenprint"ok!":input"noch ein spiel";a$:ifa$<>"ja"thenend
 3170 ifa1$="stop"anda$="ja"thenrun
 3180 ifa1$<>"n"then3250
 3190 ifpn(ap,1)=0thenprint"kein weg in diese richtung, mein freund!":goto3250
 3200 ifin(6,1)<>apthen3218
 3210 print"der mampfer freut sich ueber dich als   kleine zwischenmahlzeit!"
 3215 print"hat er doch nichts anderes im kopf, als"
 3216 print"auf neugierige, unvorsichtige           abenteurer zu warten!"
 3217 end
 3218 ifap<>16orin(14,1)=-1then3220
 3219 print"ich traue mich nicht in diesen dunkelen gang!":goto3250
 3220 ap=pn(ap,1):print"ok!"
 3250 ifa1$<>"s"then3300
 3260 ifpn(ap,2)=0thenprint"kein weg in diese jene richtung!":goto3300
 3270 ap=pn(ap,2):print"ok!"
 3300 ifa1$<>"o"then3350
 3310 ifpn(ap,3)=0thenprint"dort ist kein  ausgang!":goto3350
 3320 ifin(12,1)<>apthen3340
 3325 print"der zwerg laesst dich nicht durch!"
 3330 goto3350
 3340 ap=pn(ap,3):print"ok!"
 3350 ifa1$<>"w"then3400
 3360 ifpn(ap,4)=0thenprint"kein weg in diese richtung!":goto3400
 3370 ap=pn(ap,4):print"ok!"
 3400 ifin(12,1)<>apora1$="o"then3430
 3410 print:print"der zwerg wirft eine axt..."
 3420 print"...verfehlt!"
 3425 print"...um haaresbreite!":print
 3426 fori=1to3000:next
 3430 ifa1$<>"h"then3470
 3440 ifap=17then3450
 3442 print"ich bin doch kein vogel!"
 3443 print"(kein weg in diese richtung!)":goto3470
 3450 print"ok!":ap=15
 3470 ifa1$<>"r"then3500
 3480 ifap=15orap=12then3490
 3484 print"ich bin doch kein maulwurf!"
 3485 print"(kein weg in diese richtung!)":goto3500
 3490 print"ok!":ifap=15thenap=17
 3495 ifap=12thenap=14
 3500 ifa1$<>"nimm"then3550
 3505 ifa2$="rum"then3540
 3510 ifin(oc,2)=0thenprint"ich kann dies nicht nehmen!":goto3550
 3515 ifin(oc,1)<>apthenprint"ich sehe das hier nicht!":goto3550
 3520 in(oc,1)=-1:print"ok!"
 3530 ifoc=19thenin(20,1)=ap
 3535 goto3550
 3540 ifap<>3andin(17,1)<>apthenprint"ich sehe keinen rum!":goto3550
 3541 ifin(17,1)=-1thenprint"ich trage schon rum!":goto3550
 3542 ifin(16,1)<>-1thenprint"ich habe kein gefaess!":goto3550
 3543 print"ok!":ifin(17,1)=apthenin(17,1)=-1
 3544 ifap=3thenprint"du traegst nun eine flasche rum!":in(16,1)=0:in(17,1)=-1
 3550 ifa1$<>"inventur"then3570
 3554 print"sie tragen:"
 3555 x=0:fori=1to22:ifin(i,1)=-1thenx=x+1:print"- ";mid$(it$(i),7)
 3560 next:ifx=0thenprint"- nichts -"
 3570 ifa2$="rum"thenoc=17
 3571 ifa2$="rum"anda1$<>"trink"thena2$="flasche":oc=17
 3572 ifa1$<>"druecke"then3600
 3575 ifoc<>20thenprint"ich kann dies weder druecken noch knuddeln!":goto3600
 3580 ifin(20,1)<>apthenprint"ich kann dies hier nicht erspaehen!":goto3600
 3590 in(20,1)=0:print"ok!":pn(16,1)=13:in(21,1)=ap
 3600 ifa1$<>"klettere"then3630
 3610 ifoc<>15thenprint"sorry, aber ich kann dies nicht tun!":goto3630
 3615 ifap=14then3620
 3616 print"du bist wohl betrunken! ich sehe hier   keine baeume!"
 3617 goto3630
 3620 print"ok!":ap=12
 3630 ifa1$<>"lege"then3680
 3640 ifin(oc,1)<>-1thenprint"ich trage das nicht!":goto3680
 3650 ifoc=19andap<>16thenprint"ich sehe hier keinen nagel!":goto3680
 3660 ifin(6,1)<>aporoc=9then3665
 3661 print"der abenteurermampfer freut sich ueber  dein geschenk!"
 3662 in(oc,1)=0:goto3680
 3665 ifin(6,1)<>apthen3670
 3666 print"wenn du ihn fuettern willst, musst du   sie ihm schon geben!"
 3667 goto3680
 3670 print"ok!":in(oc,1)=ap
 3680 ifa1$<>"wirf"then3700
 3685 ifin(oc,1)<>-1thenprint"ich habe dies nicht!":goto3700
 3687 ifoc<>10thenprint"ich kann dies nicht werfen (zu schwach!)":goto3700
 3690 print"ok!":in(10,1)=ap:ifin(5,1)<>apthen3700
 3695 print"klirr!!!":print"du hast den kostbaren spiegel"
 3696 print"zerdeppert! tolpatsch!"
 3697 print:print"oh! dort ist ein geheimgang!":pn(4,1)=2:in(5,1)=0
 3700 ifa1$<>"oeffne"then3750
 3710 ifin(oc,1)<>apandin(oc,1)<>-1thenprint"ich sehe das nicht!":goto3750
 3720 ifoc<>7andoc<>8thenprint"ich kann dies leider nicht oeffnen!":goto3750
 3730 ifoc=7andsv=1thenprint"der schrank ist schon offen!":goto3750
 3735 ifoc=7thenprint"ok!":sv=1:in(6,1)=ap:print"der mampfer begruesst sie!"
 3736 ifoc=8thenprint"ok!":print"erdnuesse fallen heraus!":in(9,1)=ap
 3737 ifoc=8thenprint"oh! die kiste wird vom meer weggeschwemmt!":in(8,1)=0:k=1
 3750 ifa1$<>"grabe"then3800
 3760 ifin(18,1)<>-1thenprint"ich habe nichts zum graben!":goto3800
 3770 ifap<>7andap<>14andap<>8thenprint"hier kann ich nicht graben!":goto3800
 3775 if(ap=7andsg=1)or(ap=14andgg=1)orap=8thenprint"hier ist nichts!":goto3800
 3780 print"ok!":ifap=7thensg=1:in(8,1)=ap:print"ich finde etwas..."
 3790 ifap=14thengg=1:in(16,1)=ap:print"ich finde etwas..."
 3800 ifa1$<>"iss"then3850
 3810 ifin(oc,1)<>-1thenprint"ich trage das nicht!":goto3850
 3820 ifoc<>9thenprint"wuerg! mir ist der appetit vergangen!":goto3850
 3830 print"mampf, mampf!":print"koestlich!":in(9,1)=0
 3850 ifa1$<>"trink"then3900
 3860 ifin(oc,1)<>-1thenprint"ich trage das nicht!":goto3900
 3870 ifa2$<>"rum"thenprint"sei nicht laecherlich!":goto3900
 3880 print"gluck, gluck!"
 3890 print"heute blaau...hicks...und moorgen und uebermorgen widder!(oder so)"
 3895 in(17,1)=0:in(16,1)=-1
 3900 ifa1$<>"gebe"thengoto3950
 3910 ifin(oc,1)<>-1thenprint"du hast das nicht!":goto3950
 3920 ifin(6,1)<>apandin(12,1)<>apthenprint"ich sehe hier niemanden!":goto3950
 3925 ifap=5andoc<>9thenprint"er will dies nicht!":goto3950
 3930 ifap=5thenprint"ok!":in(9,1)=0:in(6,1)=0:print"er verschwindet kauend!"
 3935 ifap=11andoc<>17thenprint"er will das leider nicht!":goto3950
 3940 ifap=11thenprint"er verschwindet betrunken!":in(17,1)=0:in(12,1)=0
 3950 ifa1$<>"yoho"then3970
 3955 ifap<>6orin(6,1)<>6thenprint"nichts passiert!":goto3970
 3960 print"der mampfer loesst sich in luft auf!"
 3965 in(6,1)=0:pn(6,1)=4
 3970 ifa1$<>"plugh"then4000
 3980 ifap<>2orin(2,1)<>-1thenprint"nichts passiert!":goto4000
 3985 print"herzlichen glueckwunsch!"
 3990 print"du hast das adventure ueberstanden!"
 3991 print"mit dem schatz kannst du nun etwas fuer deinen computer kaufen!"
 3992 print:print"halte ausschau nach weiteren spielen    von thomas werner!":end
 4000 fori=1to4000:next:ifin(19,1)=16thenin(20,1)=0
 5000 fori=1to3500:next:pokev+21,1:goto1100
 49999 end
 50000 print"{home}{clr}{blk}    M"spc(30)"N":print"     M"spc(28)"N"
 50010 print"      M"spc(26)"N"
 50020 printtab(7)"O{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}P"
 50030 fori=1to7:printtab(7)"{CBM-H}"spc(24)"{CBM-N}":next
 50040 printtab(7)"L{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{SHIFT-@}"
 50050 print"      N"spc(26)"M":print"     N"spc(28)"M"
 50060 print"    N"spc(30)"M"
 50070 ifin(21,1)=aporap=17thenpoke214,4::print:printtab(10);"O{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}P"
 50080 ifin(21,1)=aporap=17thenfori=1to6:printtab(10);"{CBM-H}      {CBM-N}":next
 50090 ifap=6thenpoke214,3:print:printtab(10);"O{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}P":fori=1to6
 50100 ifap=6thenprinttab(10)"{CBM-H}     {CBM-N}":next:printtab(10)"L{CBM-P}{CBM-P}{CBM-P}{CBM-P}{CBM-P}{SHIFT-@}"
 50105 ifap<>6then50200
 50110 ifsv=0thenpoke214,7:print:printtab(11)"W   W"
 50120 ifsv=0thenpoke214,3:print:printtab(13)"t"
 50130 ifsv=0thenfori=1to7:printtab(13)"B":next
 50140 ifsv=1thenpoke214,3:print:printtab(6)"O{CBM-Y}{CBM-Y}{CBM-Y}"spc(7)"{CBM-Y}{CBM-Y}{CBM-Y}P"
 50150 ifsv=1thenfori=1to6:printtab(6)"{CBM-H}   "spc(7)"   {CBM-N}":next
 50160 ifsv=1thenprinttab(6)"L{CBM-P}{CBM-P}{CBM-P}"spc(7)"{CBM-P}{CBM-P}{CBM-P}{SHIFT-@}"
 50200 ifin(20,1)=apthenpoke214,6:print:printtab(27)"W"                    
 50210 ifap<>17thenreturn
 50220 poke214,0:print:fori=1to10:printtab(30-i)"O":next              
 50225 poke214,2:print:printtab(28)"    {CBM-N}"                                  
 50226 poke214,10:print             
 50230 printtab(29-i)"{SHIFT-@}{CBM-Y}            ":printtab(30-i)"{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}{CBM-Y}"
 50235 poke214,10:print:printtab(32)"{CBM-N}"
 50240 print"{home}"tab(25)"{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}":print"{home}{down}"tab(25)"M":printtab(26)"M"
 50250 return
 51000 print"{home}{lgrn}{clr}"tab(8)"QQQQQQQQQQQQQQQQ"
 51010 printtab(9)"QQQQQQQQQQQQQQ"
 51020 printtab(10)"QQQQQQQQQQQQ"
 51030 printtab(12)"QQQQQQQQ"
 51040 printtab(14)"QQQQ"
 51050 fori=1to10
 51060 printtab(15)"{brn}{rvon}  {rvof}"
 51070 next
 51080 print"{grn}{rvon}                                        {rvof}"
 51090 print"{up}{up}{up}BBBBBB":print"{up}{up}{yel}QQQQQQ{pur}"
 51100 return
 52000 print"{home}{gry2}{rvon}{clr}                                       {rvof}"
 52010 print"{rvon}                 {rvof}     {rvon}                 {rvof}"
 52020 print"{rvon}        {rvof}"spc(28)"{rvon}   {rvof}"
 52030 print"{rvon}    {rvof}"spc(30)"{rvon}     {rvof}"
 52040 print"{rvon}   {rvof}"spc(31)"{rvon}     {rvof}"
 52050 print"{rvon}     {rvof}"spc(30)"{rvon}    {rvof}"
 52060 print"{rvon}     {rvof}"spc(31)"{rvon}   {rvof}"
 52070 print"{rvon}      {rvof}"spc(29)"{rvon}    {rvof}"
 52080 print"{rvon}       {rvof}"spc(28)"{rvon}    {rvof}"
 52090 print"{rvon}        {rvof}"spc(26)"{rvon}     {rvof}"
 52100 print"{rvon}      {rvof}"spc(30)"{rvon}   {rvof}"
 52110 print"{rvon}      {rvof}"spc(26)"{rvon}       {rvof}"
 52120 print"{rvon}       {rvof}"spc(22)"{rvon}          {rvof}"
 52130 print"{rvon}         {rvof}"spc(17)"{rvon}             {rvof}"
 52140 print"{rvon}                                       {rvof}{pur}"
 52150 return
 53000 print"{clr}{home}":print:fori=1to8:print"{lblu}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I{CBM-@}I";
 53010 print"{CBM-@}I{CBM-@}I{CBM-@}I":next
 53020 fori=1to5:print"{yel}{rvon}                                       {rvof}{pur}":next
 53030 return
 54000 print"{clr}{home}{lgrn}QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"
 54010 print"{up}QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"
 54020 print" {up}QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"
 54030 print"  QQQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQQQQQQQQQQQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQQQ"
 54040 print"    QQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQ"
 54050 print"      QQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQ"
 54060 print"         QQQQQQ{brn}{rvon} {rvof}{lgrn}QQQ{brn}{rvon} {rvof}{lgrn}QQQQQQQ{brn}{rvon} {rvof}{lgrn}QQQQ"
 54070 print"           QQQQQ{brn}{rvon} {rvof}{lgrn}QQ{brn}{rvon} {rvof}{lgrn}QQQQQQQ{brn}{rvon} {rvof}{lgrn}QQ"
 54080 print"             QQQQ{brn}{rvon} {rvof}{lgrn}Q{brn}{rvon} {rvof}{lgrn}QQQQQQ{brn}{rvon} {rvof}{lgrn}Q"
 54090 print"               QQQ{brn}{rvon}  {rvof}{lgrn}QQQQ{brn}{rvon} {rvof}{lgrn}QQ"
 54100 print"                QQQ{brn}{rvon}     {rvof}{lgrn}QQ"
 54110 print"                   {brn}{rvon}    {rvof}"
 54120 print"                   {brn}{rvon}    {rvof}{pur}"
 54130 poke214,4:print:printtab(20)"{brn}UCCI":printtab(20)"B  B"
 54140 printtab(20)"JCCK{pur}"
 54150 return

