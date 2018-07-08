psbasemap -JM14 -R-175/-135/62/72 -Bag0.5 -P -K > vektordarat.ps
pscoast -JM -R -G -S -Dh -N1-W1 -O -K >> vektordarat.ps
grdimage etopo1.nc -R -JM -Celev.cpt -O -Na -P >> vektordarat.ps
#grdcontour indo.nc -R -JM -C300 -A600+f14 -P -O >> vektordarat.ps
#psxy bpp.xyz -R -JM -W1.0 -St0.2c -G#F9A825 -W0.1 -O -P >> vektordarat.ps
psconvert vektordarat.ps -A -P -Tg 
