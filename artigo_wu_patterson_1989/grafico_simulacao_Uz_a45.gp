reset
set title 'Velocidade axial'
set ylabel 'Posição vertical: 2z/w'
set xlabel 'Velocidade normalizada: U_{z}/U_{tip}'
set size square
set grid
set ytics 0.5
set yrange [-2.5:2.5]
set xrange [-0.1:0.2]
pi = 3.141592653589793
N = 200 / 60
D = 93
w = D / 5
Utip = pi * (D * 1e-3) * N
set terminal pdfcairo size 10cm, 10cm font 'courier'
set output 'fig_gr_simulacao_Uz_a45.pdf'
plot 'simulacao/dados_simulacao_Uz_a45_r50.dat' u ($2/Utip):(2*($1*1000-90)/w) t 'r = 50 mm' w l, \
'simulacao/dados_simulacao_Uz_a45_r60.dat' u ($2/Utip):(2*($1*1000-90)/w) t 'r = 60 mm' w l, \
'simulacao/dados_simulacao_Uz_a45_r70.dat' u ($2/Utip):(2*($1*1000-90)/w) t 'r = 70 mm' w l, \
'simulacao/dados_simulacao_Uz_a45_r77.dat' u ($2/Utip):(2*($1*1000-90)/w) t 'r = 77 mm' w l, \
'simulacao/dados_simulacao_Uz_a45_r90.dat' u ($2/Utip):(2*($1*1000-90)/w) t 'r = 90 mm' w l, \
'simulacao/dados_simulacao_Uz_a45_r105.dat' u ($2/Utip):(2*($1*1000-90)/w) t 'r = 105 mm' w l, \
'experimental/dados_wu_patterson_1989_Uz_n11.dat' u 2:1 t '' w lp pt 6 ps 0.5 dt 2 lc 1, \
'experimental/dados_wu_patterson_1989_Uz_n9.dat' u 3:1 t '' w lp pt 6 ps 0.5 dt 2 lc 2, \
'' u 4:1 t '' w lp pt 6 ps 0.5 dt 2 lc 3, \
'' u 5:1 t '' w lp pt 6 ps 0.5 dt 2 lc 4, \
'' u 6:1 t '' w lp pt 6 ps 0.5 dt 2 lc 5, \
'' u 7:1 t '' w lp pt 6 ps 0.5 dt 2 lc 6
set terminal wxt
set output
replot