

;laby.prg ==0801==
    1 poke808,225
    2 rem arnd liebt petra
   10 poke53265,peek(53265)and239
   50 poke646,1
   60 poke53281,15
   70 v=53248:printchr$(147)
   80 forss=12288to12799:readq:pokess,q:nextss
  100 poke53269,255
  110 sa=2040
  120 forpa=192to199:pokesa,pa:sa=sa+1:nextpa
  130 forx=39to46:pokev+x,6:nextx
  140 pokev,111:pokev+1,60
  150 pokev+2,159:pokev+3,60
  160 pokev+4,207:pokev+5,60
  170 pokev+6,111:pokev+7,102
  180 pokev+8,159:pokev+9,102
  190 pokev+10,207:pokev+11,102
  200 pokev+12,33:pokev+13,58
  210 pokev+14,31:pokev+15,58
  220 pokev+16,peek(v+16)or128
  230 pokev+29,255:pokev+23,255
  235 poke53265,peek(53265)or16
  240 print" {rvon}{wht}                                      "
  250 print" {rvon}{wht}                                      "
  260 print" {rvon}{wht}                                      "
  270 print" {rvon}{wht}                                      "
  280 print" {rvon}{wht}                                      "
  290 print" {rvon}{wht}                                      "
  300 print" {rvon}{wht}                                      "
  310 print" {rvon}{wht}                                      "
  320 print" {rvon}{lgrn}                                      "
  330 print" {rvon}{lgrn}                                      "
  340 print" {rvon}{lgrn}                                      "
  350 print" {rvon}{lgrn}                                      "
  360 print" {rvon}{lgrn}                                      "
  370 print" {rvon}{lgrn}                                      "
  380 print" {rvon}{lgrn}                                      "
  390 print" {rvon}{lgrn}                                      "
  400 print" {rvon}{grn}                                      "
  410 print" {rvon}{grn}                                      "
  420 print" {rvon}{grn}                                      "
  430 print" {rvon}{grn}                                      "
  440 print" {rvon}{grn}                                      "
  450 print" {rvon}{grn}                                      "
  460 print" {rvon}{grn}                                      "
  470 bs=1023:fs=55295
  480 fora=1to40:pokebs+a,102:pokefs+a,6:nexta
  490 for a=1to1000step40:pokebs+a-1,102:pokebs+a,102:pokefs+a-1,6:pokefs+a,6:nexta
  500 fora=1to40:poke1984+a,102:poke56255+a,6:nexta
  510 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}{wht}{CBM-A}CCCCCCCCCCC{CBM-S}"
  520 print"{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}{wht}Bstellt vor:B"
  530 print"{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}{wht}{CBM-Z}CCCCCCCCCCC{CBM-X}"
  541 print"{down}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}{orng}{CBM-A}CCCCCCCCCCCCCCCCCCCCCCCC{CBM-S}"
  542 print"{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}{orng}Blabyrinth des schreckensB"
  543 print"{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rvon}{orng}{CBM-Z}CCCCCCCCCCCCCCCCCCCCCCCC{CBM-X}"
  544 print"{rght}{rght}{rght}{down}{down}{rvon}{blk}(c)1984 markt & technik verlag ag"
  550 print"{rght}{rvon}{red} d r u e c k e  d i e  f 1 - t a s t e{rvof}{wht}"
  560 data0,1,247,0,0,227,0,0,227,0,0,227,0,0,195,0
  570 data0,199,0,1,199,0,1,199,0,1,198,0,3,134,0,3
  580 data254,0,3,254,7,7,12,31,199,12,63,231,15,62,110,31
  590 data124,46,29,120,62,29,120,124,59,59,252,58,56,255,180,0
  600 data233,253,252,200,254,254,152,230,231,152,231,231,188,231,231,188
  610 data255,255,108,254,254,108,248,248,237,225,224,205,193,192,255,193
  620 data192,255,131,159,199,131,191,131,131,184,131,131,184,199,135,223
  630 data0,0,0,255,255,255,255,255,255,0,124,0,0,56,0,0
  640 data249,240,0,112,224,0,176,192,0,185,128,0,187,0,0,30
  650 data120,0,28,254,0,29,254,0,25,255,0,25,31,0,57,15
  660 data0,248,15,0,252,31,248,63,253,252,127,249,198,227,225,195
  670 data0,1,193,255,253,192,255,255,192,0,7,192,0,3,196,0
  680 data30,63,0,31,30,124,31,140,254,15,201,199,15,227,131,7
  690 data243,1,3,243,1,1,251,1,1,255,1,0,255,1,0,255
  700 data1,0,255,1,128,255,1,193,255,131,227,253,199,127,248,238
  710 data63,240,124,31,192,0,15,255,255,7,255,255,3,255,255,0
  720 data255,191,188,119,187,24,49,187,24,48,187,24,49,59,24,179
  730 data59,60,191,59,60,191,59,61,179,59,61,177,57,173,176,57
  740 data239,176,57,239,48,57,239,48,56,198,48,56,198,120,124,198
  750 data252,254,199,0,0,0,255,255,255,255,255,255,255,255,255,0
  760 data249,253,196,104,207,204,200,199,252,220,199,252,220,199,204,212
  770 data199,196,182,207,192,162,249,193,254,249,193,254,205,195,103,205
  780 data195,103,205,198,103,205,198,67,205,206,195,205,204,195,197,220
  790 data231,231,252,0,0,60,255,255,248,255,255,248,255,255,248,0
  800 data239,221,222,168,85,112,255,95,0,41,68,0,253,124,0,175
  810 data0,0,164,0,0,188,0,0,128,0,0,248,0,0,8,0
  820 data0,232,0,0,168,0,0,248,0,0,32,0,0,224,0,0
  830 data128,0,0,192,0,0,64,0,0,192,0,0,128,0,0,0
  840 data123,187,247,14,170,21,0,250,255,0,34,148,0,62,191,0
  850 data0,245,0,0,37,0,0,61,0,0,1,0,0,31,0,0
  860 data16,0,0,23,0,0,21,0,0,31,0,0,4,0,0,7
  870 data0,0,1,0,0,3,0,0,2,0,0,3,0,0,1,0
  880 fora=49152to49181
  890 reads:pokea,s:nexta
  900 data162,0,142,32,208,142,33,208,160,0,200,192,160,208,251
  910 data232,224,16,208,238,164,203,192,4,240,3,76,0,192,96
  920 poke49164,163:poke49169,15
  930 poke49155,32:poke49158,32
  940 sys49152
  950 poke53269,0:pokev+23,0:pokev+29,0
  960 poke53265,peek(53265)and239
  965 forl=12288to12799:pokel,0:nextl
  966 forx=39to46:pokev+x,1:nextx
  970 load"des schreckens",8,1

