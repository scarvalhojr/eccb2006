set terminal epslatex monochrome 10
set output "time_extrapolation.eps"
set size .7,.85

# set terminal png size 880,660
# set output "time_extrapolation.png"

set xtics nomirror ("6\\,x\\,6" 36, "7\\,x\\,7" 49, "8\\,x\\,8" 64, "9\\,x\\,9" 81, "10\\,x\\,10" 100, "11\\,x\\,11" 121, "12\\,x\\,12" 144)
set ytics mirror
set nomxtics
set mytic

# display grid
set grid ytics noxtics

set key left Left reverse

# set title "Predicted Time"

set xlabel "Maximum dimension of partitions"
set ylabel "Hours"

plot	[30:150] \
	"data/1164x1164.dat" with points pointtype 2 \
	title "Human U133 Plus 2.0 (1164\\,x\\,1164)", \
	"data/712x712.dat" with points pointtype 3 \
	title "Zebra Fish (712\\,x\\,712)", \
	"data/478x478.dat" with points pointtype 6 \
	title "E.Coli 2.0 (478\\,x\\,478)"
