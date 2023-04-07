reset
set title 'Velocidade tangencial'
set ylabel 'Posição vertical: 2z/w'
set xlabel 'Velocidade normalizada: U_{theta}/U_{tip}'
set size square
set grid
set ytics 0.5
set yrange [-2.5:2.5]
set xrange [0:0.8]
set terminal pdfcairo size 10cm, 10cm font 'courier'
set output 'fig_gr_wu_patterson_1989_Utheta.pdf'
plot 'dados_wu_patterson_1989_Utheta_n11.dat' u 2:1 t 'r = 50 mm' w lp pt 6 ps 0.5 dt 2, \
'dados_wu_patterson_1989_Utheta_n9.dat' u 3:1 t 'r = 60 mm' w lp pt 6 ps 0.5 dt 2, \
'' u 4:1 t 'r = 70 mm' w lp pt 6 ps 0.5 dt 2, \
'' u 5:1 t 'r = 77 mm' w lp pt 6 ps 0.5 dt 2, \
'' u 6:1 t 'r = 90 mm' w lp pt 6 ps 0.5 dt 2, \
'' u 7:1 t 'r = 105 mm' w lp pt 6 ps 0.5 dt 2
set terminal wxt
set output
replot