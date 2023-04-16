reset
set title 'Perfil de condutividade para o caso 1: N = 200 rpm, β = 0°'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:60]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
plot 'caso_1_N_200rpm_beta_0/caso_1_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo' w l lt 1 dt 1, \
'caso_1_N_200rpm_beta_0/caso_1_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo' w l lt 1 dt 2
set terminal pdfcairo font 'courier'
set output 'fig_gr_tempo_de_mistura_caso_1.pdf'
replot
set output