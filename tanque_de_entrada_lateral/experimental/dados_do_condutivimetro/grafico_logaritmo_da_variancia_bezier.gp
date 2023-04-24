reset
set title 'Logaritmo da variância para cada caso'
set xlabel 'Tempo [min]'
set ylabel "Logaritmo da variância da\ncondutividade elétrica"
set grid xtics mxtics ytics
set xrange [0:45]
set yrange [-7:2]
set xtics 5
set ytics 1
set mxtics 5
plot 'caso_1_N_200rpm_beta_0/caso_1_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 200 rpm, β = 0° [C. 1]' smooth bezier lt 1, \
'caso_2_N_600rpm_beta_0/caso_2_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 0° [C. 2]' smooth bezier lt 2, \
'caso_3_N_600rpm_beta_15/caso_3_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 15° [C. 3]' smooth bezier lt 3, \
'caso_4_N_600rpm_beta_0/caso_4_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 0° [C. 4]' smooth bezier lt 4, \
'caso_5_N_400rpm_beta_0/caso_5_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 400 rpm, β = 0° [C. 5]' smooth bezier lt 5, \
'caso_6_N_500rpm_beta_0/caso_6_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 500 rpm, β = 0° [C. 6]' smooth bezier lt 6, \
'caso_7_N_600rpm_beta_0/caso_7_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 0° [C. 7]' smooth bezier lt 7, \
'caso_8_N_600rpm_beta_0/caso_8_logaritmo_da_variancia.dat' u ($1/60):2 t 'N = 600 rpm, β = 0° [C. 8]' smooth bezier lt 8, \
-2.6 t '' w l dt 2 lc 'dark-gray'
set terminal pdfcairo font 'courier'
set output 'fig_gr_logaritmo_da_variancia_bezier.pdf'
replot
set output