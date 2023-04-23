reset
caso = 3
N = '600'
beta = '15'
set title 'Perfil de condutividade para o caso '.caso.': N = '.N.' rpm, β = '.beta.'°'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:45]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
set style fill transparent solid 0.10 noborder
plot 'caso_'.caso.'_N_'.N.'rpm_beta_'.beta.'/caso_'.caso.'_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo' w l lt caso dt 1, \
'caso_'.caso.'_N_'.N.'rpm_beta_'.beta.'/caso_'.caso.'_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo' w l lt caso dt 2, \
'+' u 1:(0.95):(1.05) t '' w filledc lc 'dark-grey'
set terminal pdfcairo font 'courier'
set output 'fig_gr_tempo_de_mistura_caso_'.caso.'.pdf'
replot
set output