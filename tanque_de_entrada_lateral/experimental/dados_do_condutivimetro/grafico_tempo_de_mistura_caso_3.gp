reset
set title 'Perfil de condutividade para o caso 3: N = 600 rpm, β = 15°'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:45]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
plot 'caso_3_N_600rpm_beta_15/caso_3_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo' w l lt 4 dt 1, \
'caso_3_N_600rpm_beta_15/caso_3_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo' w l lt 4 dt 2
set terminal pdfcairo font 'courier'
set output 'fig_gr_tempo_de_mistura_caso_3.pdf'
replot
set output