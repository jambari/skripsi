peta=20160905.ps
gmt psbasemap -JM15 -R101.4/107/-7/-3.45 -Ba1g1WSNE -P -K -Xc -Yc > $peta
gmt grdcontour lampung.nc -JM -R -C500 -A1000+f4+fgrey -K -O -WThinnest -Wgrey >> $peta
gmt grdimage lampung.nc -R -JM -Celev.cpt -O -Na -P -K >> $peta
gmt psxy 20160905.xyz -JM -R -Sc0.35c -Wthinner -P -O -K -Gred >> $peta
gmt psxy trench.gmt -R -JM -Sf0.8i/0.1i+l+t -Gwhite -W -P -O -K >> $peta
#awk '{print $1, $2, $3}' 20160204.xyz | psxy -JM -R -Sc0.35c -Wthinner -P -O -K -Celev.cpt >> $
awk '{print 104.05, -5.01, 272.166, 145}' liwa.xyz| psxy -JM -R -S=0.5+e -Gyellow -P -O -W2 -K >> $peta
awk '{print 104.05+0.2, -5.01, 272.166, 130}' liwa.xyz| psxy -JM -R -S=0.5+e -Gred -P -O -W2 -K >> $peta
awk '{print 104.05-0.2, -5.01, 272.166, 130}' liwa.xyz| psxy -JM -R -S=0.5+e -Gred -P -O -W2 -K >> $peta
echo 104.05 -5.01 | psxy -R -JM -St0.5c -Ggreen -W1 -O -K >> $peta
echo 104 -5.10  LIWA | pstext -R -JM -O >> $peta
psconvert 20160905.ps -A -P -Tg 

