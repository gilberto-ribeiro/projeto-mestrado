reset
set title 'Perfil de condutividade para os casos 2 e 4: N = 600 rpm, β = 0°'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:15]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
plot 'caso_2_N_600rpm_beta_0/caso_2_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 2]' w l lt 2 dt 1, \
'caso_2_N_600rpm_beta_0/caso_2_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 2]' w l lt 2 dt 2, \
'caso_4_N_600rpm_beta_0/caso_4_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 4]' w l lt 3 dt 1, \
'caso_4_N_600rpm_beta_0/caso_4_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 4]' w l lt 3 dt 2
set terminal pdfcairo font 'courier'
set output 'fig_gr_tempo_de_mistura_caso_2_e_4.pdf'
replot
set output