set xrange[-10:10] 
set yrange[-10:10]
set samples 500
set size square

do for [n=0:40]{
t=n*0.25

plot '+' using (0):(0) lc rgb 'black' lw 3 pt 7 notitle


replot sqrt(-(x)**2 + t**2) lt 1 lw 2 notitle
replot -sqrt(-(x)**2 + t**2) lt 1 lw 2 notitle

if (t>1){
	replot sqrt(-(x)**2 + (t-1)**2) lt 2 lw 2 notitle
	replot -sqrt(-(x)**2 + (t-1)**2) lt 2 lw 2 notitle
}

if (t>2){
	replot sqrt(-(x)**2 + (t-2)**2) lt 3 lw 2 notitle
	replot -sqrt(-(x)**2 + (t-2)**2) lt 3 lw 2 notitle
}
if (t>3){
	replot sqrt(-(x)**2 + (t-3)**2) lt 4 lw 2 notitle
	replot -sqrt(-(x)**2 + (t-3)**2) lt 4 lw 2 notitle 
 }
 pause 0.3
}

