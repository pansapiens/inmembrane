set title "LipoP predictions for SPy_1264"
set size 2., 1.4
set xrange [1:70] 
set mxtics 10
set yrange [-3:20]
set y2range [0:23]
set ylabel "log-odds"
set term postscript eps color solid "Helvetica" 30
set output "SPy_1264.eps"
set arrow from 2,16.1314 to 6,16.1314 nohead lt 4 lw 20
set label "TMH" at 7,16.1314
set arrow from 2,1.12018 to 6,1.12018 nohead lt 1 lw 20
set label "SpI" at 7,1.12018
set arrow from 2,-0.200913 to 6,-0.200913 nohead lt 3 lw 20
set label "CYT" at 7,-0.200913
set arrow from 2,16.1314 to 6,16.1314 nohead lt 4 lw 20
set label "TMH" at 7,16.1314
# NOTE: The scores below are the log-odds scores with the threshold
# NOTE: subtracted (a hack to make gnuplot make the histogram all
# NOTE: look nice).
plot "-" axes x1y2 title "" with impulses lt 1 lw 20
31.500000 3.245192
29.500000 1.678640
33.500000 0.986570
35.500000 0.135970
e
exit
