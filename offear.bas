

;desschreckens.prg ==0801==
    1 poke45,peek(174):poke46,peek(175):clr
    2 printchr$(147)
    3 poke198,0
    4 poke53265,peek(53265)or16
    5 rem
    6 poke53280,6:poke53281,6
    7 gosub 210
   10 print"{clr}{down}       labyrinth of fear"
   20 print"{down}{down}written by thomas werner"
   40 print"{down}welcome adventurer!"
   50 print"{down}the goal of this adventure is"
   60 print"{down}to find a treasure."
   70 print"{down}your commands contain"
   80 print"{down}a verb and a noun."
   90 print"{down}e.g.: take bottle, say hello,"
  100 print"{down}drop axe, show, inventory, stop"
  105 print"{down}{down}       [ press a key ]"
  106 geta$:ifa$=""then106
  110 print"{clr}{down}to move,"
  120 print"{down}enter the first letter of the"
  130 print"{down}corresponding direction."
  140 print"{down}directions:     n"
  150 print"               w+e"
  160 print"                s"
  165 print"{down}also: u= up  d= down"
  170 print"{down}{down}    happy adventuring!"
  180 print"{down}{down}      [ press a key ! ]"
  190 geta$:ifa$=""then190
  200 goto1000
  210 print"{down}oh! labyrinth of fear!"
  220 print"by thomas werner"
  230 print"help, help";
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
  400 datayoho,plugh,say,take,drop,eat,drink,press,look
  405 datadig,climb,give,open,throw,inventory,n,s,e,w,u,d,stop
  410 datain a dead end,0,3,0,0,3
  420 datain the treasure room,0,4,0,0,3
  425 datain the 'rum room',1,5,0,0,3
  430 datain the mirror hall,0,6,0,0,3
  435 datain the cave of fear,3,9,0,0,3
  440 datain a secret room,0,0,0,11,1
  445 dataon a sunny beach,0,0,8,0,4
  450 dataon a sea beach,0,10,9,7,4
  455 datain a cave,5,0,0,8,3
  460 datain a damp cave,8,13,11,0,3
  465 datain the dwarven corridor,0,0,6,10,3
  470 datain the tree,0,0,0,0,5
  475 datain the secret passage,10,16,0,0,3
  480 datain the garden,0,17,0,0,2
  485 datain an attic,0,0,0,0,1
  490 datain a small room,0,0,17,0,1
  495 datain the staircase,14,0,0,16,1
  500 data"yoho /it says:'yoho'",1,0
  505 datatreas/a treasure,2,1
  510 dataplugh/'plugh',2,0
  515 datarum  /a bubbling rum well,3,0
  520 datamirro/a mirror,4,0
  525 datamunch/an adventurer muncher,5,0
  530 dataclose/a closet,6,0
  535 datachest/a chest,0,0
  540 datapeanu/peanuts,0,1
  545 datastone/a stone,8,1
  550 datasign /a sign,9,0
  555 datadwarf/a grim dwarf,11,0
  560 datanest /a nest,12,0
  565 datalight/a lit flashlight,12,1
  570 datatree /a big tree,14,0
  575 databottl/an empty bottle,0,1
  580 databottl/a bottle of rum,0,1
  585 dataspade/a spade,15,1
  590 datapaint/a painting,16,1
  595 databutto/a button,0,0
  600 datasecre/a secret passage,0,0
  605 datastair/a staircase,17,0
  610 rem treasure
  615 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,127,255,128
  620 data64,0,128,64,0,128,32,0,64,32,0,64,16,128,160,31,127,96
  625 data26,43,48,28,80,168,30,128,68,31,255,254,15,255,254
  630 data7,255,254,3,255,254,1,255,254
  635 rem painting
  646 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  647 data0,0,0,0,0,0,255,255,255,128,254,1,135,57,193
  648 data128,84,1,128,146,5,130,0,11,133,0,21,136,129,233
  650 data 138,134,17,138,136,33,255,255,255
  655 rem rum well
  660 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  665 data0,0,0,0,247,0,3,8,128,4,198,64,25,41,32,34,48,160,18,48,160,16,48
  675 data16,12,0,112,3,128,128,0,127,0
  680 rem adventurer muncher 1
  685 data0,0,0,0,0,0,1,2,0,2,133,0,0,72,0,0,72,0,0,252,0
  690 data1,254,0,3,19,0,15,243,192,31,255,224,15,255,192
  695 data 3,153,128,0,102,128,3,255,0,1,255,128,0,62,0
  700 data0,127,0,0,127,0,31,255,252,127,255,254
  710 rem adventurer muncher 2
  715 data127,255,254,111,255,246,111,255,246,111,255,246
  720 data111,255,246,111,255,246,111,255,246,111,255,246
  725 data111,255,246,111,255,246,111,255,246,243,255,207,249,255,159
  730 data169,129,149,169,129,149,1,129,128,193,129,131,113,129,142
  735 data255,129,255,127,195,254,255,195,255
  740 rem dwarf
  745 data0,7,0,0,30,0,0,62,0,0,126,0,0,90,0,0,126,0,0,66,0,0,126,0,0,24,0
  750 data1,255,128,1,126,128,1,126,128,49,127,0,51,126,0
  755 data63,126,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,255,0
  760 rem bottle
  765 data0,0,0,0,56,0,0,40,0,0,40,0,0,40,0,0,40,0,0,40,0
  770 data0,68,0,0,130,0,0,130,0,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0
  775 data1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,255,0
  780 rem flashlight
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
 1230 printtab(10)"UCCCCCCCCCCCCCCCCCCI"
 1240 printtab(10)"Bbeware !!         B"
 1250 printtab(10)"Bmeat eating       B"
 1260 printtab(10)"Badventurer muncherB"
 1270 printtab(10)"JCCCCCCCCCCCCCCCCCCK"
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
 2000 poke214,15:print"{blk}":print"you are "pl$(ap):print"visible exits:";
 2005 pokev+17,peek(v+17)or16
 2010 ifpn(ap,1)<>0thenprint" n";
 2020 ifpn(ap,2)<>0thenprint" s";
 2030 ifpn(ap,3)<>0thenprint" e";
 2040 ifpn(ap,4)<>0thenprint" w";
 2041 ifap=17thenprint" u";
 2042 ifap=15orap=12thenprint" d";
 2050 print:print"details: ";
 2060 x=0:fori=1to22:ifin(i,1)=apthenx=x+1:printmid$(it$(i),7);" "
 2070 next:ifx=0thenprint"none"
 2080 print:input"command -->";a$
 2090 fori=1to15:ifmid$(a$,i,1)=" "thengoto3010
 3000 nexti
 3010 a1$=left$(a$,i-1)
 3020 a2$=mid$(a$,i+1)
 3040 fori=1to22:ifa1$=co$(i)then3060
 3050 nexti:print"i'm afraid i don't know this word!":goto5000
 3060 ifa1$="yoho"ora1$="plugh"ora1$="say"ora1$="look"ori>14thengoto3100
 3061 ifa1$="dig"then3100
 3065 x=5
 3070 fori=1to22:forc=1to5:ifmid$(it$(i),c,1)=" "thenx=x-1
 3080 next:ifleft$(a2$,x)=left$(it$(i),x)then3100
 3090 x=5:next:print"that is incomprehensible!":goto5000
 3100 oc=i:print"{clr}":pokev+21,1:ifoc=16and(in(17,1)=-1)orin(17,1)=apthenoc=17
 3110 ifa1$<>"say"then3150
 3120 print"ok!":print"'"a2$"'"
 3130 ifa2$="yoho"ora2$="plugh"thena1$=a2$:a2$=""
 3150 ifa1$="look"thenprint"ok!"
 3160 ifa1$="stop"thenprint"ok!":input"another game (yes/no)";a$:ifa$<>"yes"thenend
 3170 ifa1$="stop"anda$="yes"thenrun
 3180 ifa1$<>"n"then3250
 3190 ifpn(ap,1)=0thenprint"no exit there, my friend!":goto3250
 3200 ifin(6,1)<>apthen3218
 3210 print"you are a nice snack for the muncher!"
 3215 print"doesn't it have anything better to do"
 3216 print"than sit and wait for eager but         careless adventurers?"
 3217 end
 3218 ifap<>16orin(14,1)=-1then3220
 3219 print"i don't trust myself in this dark passage!":goto3250
 3220 ap=pn(ap,1):print"ok!"
 3250 ifa1$<>"s"then3300
 3260 ifpn(ap,2)=0thenprint"no way in this direction!":goto3300
 3270 ap=pn(ap,2):print"ok!"
 3300 ifa1$<>"e"then3350
 3310 ifpn(ap,3)=0thenprint"no exit there!":goto3350
 3320 ifin(12,1)<>apthen3340
 3325 print"the dwarf won't let you pass!"
 3330 goto3350
 3340 ap=pn(ap,3):print"ok!"
 3350 ifa1$<>"w"then3400
 3360 ifpn(ap,4)=0thenprint"no way in this direction!":goto3400
 3370 ap=pn(ap,4):print"ok!"
 3400 ifin(12,1)<>apora1$="e"then3430
 3410 print:print"the dwarf throws an axe..."
 3420 print"...fails!"
 3425 print"...barely!":print
 3426 fori=1to3000:next
 3430 ifa1$<>"u"then3470
 3440 ifap=17then3450
 3442 print"i'm not a bird!"
 3443 print"(no way in this direction!)":goto3470
 3450 print"ok!":ap=15
 3470 ifa1$<>"d"then3500
 3480 ifap=15orap=12then3490
 3484 print"i'm not a mole!"
 3485 print"(no way in this direction!)":goto3500
 3490 print"ok!":ifap=15thenap=17
 3495 ifap=12thenap=14
 3500 ifa1$<>"take"then3550
 3505 ifa2$="rum"then3540
 3510 ifin(oc,2)=0thenprint"i can't take this!":goto3550
 3515 ifin(oc,1)<>apthenprint"i don't see that here!":goto3550
 3520 in(oc,1)=-1:print"ok!"
 3530 ifoc=19thenin(20,1)=ap
 3535 goto3550
 3540 ifap<>3andin(17,1)<>apthenprint"i don't see any rum!":goto3550
 3541 ifin(17,1)=-1thenprint"i already have rum!":goto3550
 3542 ifin(16,1)<>-1thenprint"i have nothing to put it in!":goto3550
 3543 print"ok!":ifin(17,1)=apthenin(17,1)=-1
 3544 ifap=3thenprint"you are now carrying a bottle of rum!":in(16,1)=0:in(17,1)=-1
 3550 ifa1$<>"inventory"then3570
 3554 print"you are carrying:"
 3555 x=0:fori=1to22:ifin(i,1)=-1thenx=x+1:print"- ";mid$(it$(i),7)
 3560 next:ifx=0thenprint"- nothing -"
 3570 ifa2$="rum"thenoc=17
 3571 ifa2$="rum"anda1$<>"drink"thena2$="bottle":oc=17
 3572 ifa1$<>"press"then3600
 3575 ifoc<>20thenprint"i can't push or hug this!":goto3600
 3580 ifin(20,1)<>apthenprint"i can't spot that here!":goto3600
 3590 in(20,1)=0:print"ok!":pn(16,1)=13:in(21,1)=ap
 3600 ifa1$<>"climb"then3630
 3610 ifoc<>15thenprint"sorry, but i can't do this!":goto3630
 3615 ifap=14then3620
 3616 print"you must be drunk! i see no trees here!"
 3617 goto3630
 3620 print"ok!":ap=12
 3630 ifa1$<>"put"then3680
 3640 ifin(oc,1)<>-1thenprint"i'm not carrying that!":goto3680
 3650 ifoc=19andap<>16thenprint"i see no nail here!":goto3680
 3660 ifin(6,1)<>aporoc=9then3665
 3661 print"the adventurer muncher is happy with    your gift!"
 3662 in(oc,1)=0:goto3680
 3665 ifin(6,1)<>apthen3670
 3666 print"if you want to feed him, you have to    give them to him!"
 3667 goto3680
 3670 print"ok!":in(oc,1)=ap
 3680 ifa1$<>"throw"then3700
 3685 ifin(oc,1)<>-1thenprint"i don't have this!":goto3700
 3687 ifoc<>10thenprint"i can't throw this (too weak!)":goto3700
 3690 print"ok!":in(10,1)=ap:ifin(5,1)<>apthen3700
 3695 print"crash!!!":print"you have smashed the valuable mirror!"
 3696 print"clumsy oaf!"
 3697 print:print"oh! there's a secret passage!":pn(4,1)=2:in(5,1)=0
 3700 ifa1$<>"open"then3750
 3710 ifin(oc,1)<>apandin(oc,1)<>-1thenprint"i can't see that!":goto3750
 3720 ifoc<>7andoc<>8thenprint"i'm afraid i can't open that!":goto3750
 3730 ifoc=7andsv=1thenprint"the closet is already open!":goto3750
 3735 ifoc=7thenprint"ok!":sv=1:in(6,1)=ap:print"the muncher salutes you!"
 3736 ifoc=8thenprint"ok!":print"peanuts fall out!":in(9,1)=ap
 3737 ifoc=8thenprint"oh! the chest is swept away by the sea!":in(8,1)=0:k=1
 3750 ifa1$<>"dig"then3800
 3760 ifin(18,1)<>-1thenprint"i have nothing to dig with!":goto3800
 3770 ifap<>7andap<>14andap<>8thenprint"i can't dig here!":goto3800
 3775 if(ap=7andsg=1)or(ap=14andgg=1)orap=8thenprint"there's nothing here!":goto3800
 3780 print"ok!":ifap=7thensg=1:in(8,1)=ap:print"i found something..."
 3790 ifap=14thengg=1:in(16,1)=ap:print"i found something..."
 3800 ifa1$<>"eat"then3850
 3810 ifin(oc,1)<>-1thenprint"i'm not carrying that!":goto3850
 3820 ifoc<>9thenprint"yuck! my appetite is gone!":goto3850
 3830 print"munch, munch!":print"delicious!":in(9,1)=0
 3850 ifa1$<>"drink"then3900
 3860 ifin(oc,1)<>-1thenprint"i'm not carrying that!":goto3900
 3870 ifa2$<>"rum"thenprint"don't be silly!":goto3900
 3880 print"glug, glug!"
 3890 print"99 bottles of beer on the waaall...":print"*hiccup* 99 bottles!(or whatever)"
 3895 in(17,1)=0:in(16,1)=-1
 3900 ifa1$<>"give"thengoto3950
 3910 ifin(oc,1)<>-1thenprint"you don't have that!":goto3950
 3920 ifin(6,1)<>apandin(12,1)<>apthenprint"i see nobody here!":goto3950
 3925 ifap=5andoc<>9thenprint"he doesn't want that!":goto3950
 3930 ifap=5thenprint"ok!":in(9,1)=0:in(6,1)=0:print"he disappears chewing!"
 3935 ifap=11andoc<>17thenprint"i'm afraid he doesn't want that!":goto3950
 3940 ifap=11thenprint"he disappears drunk!":in(17,1)=0:in(12,1)=0
 3950 ifa1$<>"yoho"then3970
 3955 ifap<>6orin(6,1)<>6thenprint"nothing happens!":goto3970
 3960 print"the muncher disappears into thin air!"
 3965 in(6,1)=0:pn(6,1)=4
 3970 ifa1$<>"plugh"then4000
 3980 ifap<>2orin(2,1)<>-1thenprint"nothing happens!":goto4000
 3985 print"congratulations!"
 3990 print"you have survived the adventure!"
 3991 print"with this treasure you can buy somethingfun for your computer!"
 3992 print:print"watch for more games from thomas werner!":end
 4000 fori=1to1000:next:ifin(19,1)=16thenin(20,1)=0
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

