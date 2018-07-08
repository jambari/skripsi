psbasemap -JM14 -R100/106/-6.45/-2.30 -Bag0.5 -P -K > lokasi.ps
pscoast -JM -R -G -S -Dh -N1-W1 -O -K >> lokasi.ps
grdimage lampung.nc -R -JM -Celev.cpt -O -Na -P -K>> lokasi.ps
#grdcontour indo.nc -R -JM -C300 -A600+f14 -P -O >> vektordarat.ps
#psxy bpp.xyz -R -JM -W1.0 -St0.2c -G#F9A825 -W0.1 -O -P >> vektordarat.ps
psxy liwa.xyz -R -JM -W1.0 -St4.5c -G#F9A825 -W0.1 -O -P -K>> lokasi.ps
pstext liwa-text.xyz -R -JM -O >> lokasi.ps
#psconvert lokasi.ps -A -P -Tg 
