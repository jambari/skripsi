#Input Data Gempa
set gempa=jams-gempa-apr-mei30.dat
#NamaFileOutput
set F=Jamz.ps

gmt set MAP_FRAME_TYPE plain FONT_ANNOT_PRIMARY 8p COLOR_FOREGROUND yellow
psbasemap -JM15 -R101.4/105.5/-6.45/-3.45 -Ba1g1WSNE:."Anomali Emisi ULF Periode Januari 2017": --FONT_TITLE=18p,Calibri -P -K -Xc -Yc > %F%
grdview LSItopo.grd -JM -R -IiLSItopo.grd -Carctic1.cpt -Qi -K -O >> %F%
grdcontour LSIbat.grd -JM -R -C500 -A1000+f4+fgrey -K -O -WThinnest -Wgrey >> %F%
psxy -R -JM -Wthinner -O -K -W sesar3.gmt -Wblack >> %F%
psxy -R -JM -Wthinner -O -K -W sesar2.gmt -Wblack -Gblack >> %F%
psxy -R -JM -Wthinner -Sf0.4i/0.05i+l+t -Gblack -O  floresthrust.gmt -K >> %F%
gawk "{print $2, $1, $3}" %gempa% | psxy -JM -R -Sc0.35c -Wthinner -P -O -K -Ctabel.cpt>> %F%

#Arah
gawk "{print 104.05, -5.01, (360+$1+0), 120 }" jams-10april.dat| psxy -JM -R -S=0.5+e -Gblack -O -W2 -K>>%F%

#Stasiun
echo 104.05 -5.01 | psxy -R -JM -St0.5c -Ggreen -W1 -O -K >> %F%
echo 104 -5.10  LIWA | pstext -R -JM -O -K  >> %F%

#Gempa1
#echo 115.55 -8.3 | psxy -R -JM -Sa0.5c -Gred -W1 -O -K >> %F%
#echo 115.58 -8.2  091117 M4.8 | pstext -R -JM -O -K  >> %F%



