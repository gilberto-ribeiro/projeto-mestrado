reset
set title 'Logaritmo da variância'
set xlabel 'Tempo [min]'
set ylabel 'Logaritmo da variância da concentração'
set grid xtics mxtics ytics
set xrange [0:40]
set yrange [-7:2]
set xtics 5
set ytics 1
set mxtics 5
plot 'caso_1_N_200rpm_beta_0/caso_1_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 200 rpm, β = 0° [C. 1]' w l lt 1, \
'caso_2_N_600rpm_beta_0/caso_2_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 0° [C. 2]' w l lt 2, \
'caso_4_N_600rpm_beta_0/caso_4_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 0° [C. 4]' w l lt 3, \
'caso_3_N_600rpm_beta_15/caso_3_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 15° [C. 3]' w l lt 4, \
-2.6 t '' w l dt 2 lc 'black'
set terminal pdfcairo font 'courier'
set output 'fig_gr_logaritmo_da_variancia.pdf'
replot
set output