gmt psbasemap -JM15 -R123/130/-9/1 -Ba1g1WSNE -P -K -Xc -Yc > maluku.ps
gmt grdcontour maluku.nc -JM -R -C500 -A1000+f4+fgrey -K -O -WThinnest -Wgrey >> maluku.ps
gmt grdimage maluku.nc -R -JM -Celev.cpt -O -Na -P -K>> maluku.ps
gmt psxy maluku.gmt -R -JM -Sf0.8i/0.1i+l+t -Gblack -W -P -O >> maluku.ps
psconvert maluku.ps -A -P -Tg 
