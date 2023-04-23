reset
set title 'Perfil de condutividade para os casos 2, 4, 7 e 8: N = 600 rpm, β = 0°'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:15]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
set style fill transparent solid 0.10 noborder
plot 'caso_2_N_600rpm_beta_0/caso_2_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 2]' w l lt 2 dt 1, \
'caso_2_N_600rpm_beta_0/caso_2_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 2]' w l lt 2 dt 2, \
'caso_4_N_600rpm_beta_0/caso_4_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 4]' w l lt 4 dt 1, \
'caso_4_N_600rpm_beta_0/caso_4_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 4]' w l lt 4 dt 2, \
'caso_7_N_600rpm_beta_0/caso_7_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 7]' w l lt 7 dt 1, \
'caso_7_N_600rpm_beta_0/caso_7_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 7]' w l lt 7 dt 2, \
'caso_8_N_600rpm_beta_0/caso_8_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo [C. 8]' w l lt 8 dt 1, \
'caso_8_N_600rpm_beta_0/caso_8_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo [C. 8]' w l lt 8 dt 2, \
'+' u 1:(0.95):(1.05) t '' w filledc lc 'dark-grey'
set terminal pdfcairo font 'courier'
set output 'fig_gr_tempo_de_mistura_caso_2_4_7_8.pdf'
replot
set output