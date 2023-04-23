reset
set title 'Perfil de condutividade para os casos 1, 2, 3 e 4'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:45]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
set style fill transparent solid 0.10 noborder
plot 'caso_1_N_200rpm_beta_0/caso_1_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 1]' w l lt 1 dt 1, \
'caso_1_N_200rpm_beta_0/caso_1_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 1]' w l lt 1 dt 2, \
'caso_2_N_600rpm_beta_0/caso_2_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 2]' w l lt 2 dt 1, \
'caso_2_N_600rpm_beta_0/caso_2_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 2]' w l lt 2 dt 2, \
'caso_3_N_600rpm_beta_15/caso_3_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 3]' w l lt 3 dt 1, \
'caso_3_N_600rpm_beta_15/caso_3_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 3]' w l lt 3 dt 2, \
'caso_4_N_600rpm_beta_0/caso_4_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 4]' w l lt 4 dt 1, \
'caso_4_N_600rpm_beta_0/caso_4_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 4]' w l lt 4 dt 2, \
'+' u 1:(0.95):(1.05) t '' w filledc lc 'dark-grey'
set terminal pdfcairo font 'courier'
set output 'fig_gr_tempo_de_mistura_caso_1_2_3_4.pdf'
replot
set output