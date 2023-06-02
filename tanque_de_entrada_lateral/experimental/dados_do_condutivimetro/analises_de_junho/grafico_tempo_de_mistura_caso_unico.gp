reset
rodada = 'A'
configuracao = 1
caso = 3
beta = 15
n = 3
distribuicao = 'D'
diretorio_rodada = 'rodada_'.rodada.'_configuracao_'.configuracao
diretorio_caso = 'caso_'.caso.'_'.distribuicao.'_n_'.n.'_beta_'.beta
set title 'Perfil de condutividade para o caso '.caso.' ('.rodada.configuracao.'): β = '.beta.'°, n = '.n.' ('.distribuicao.')'
set xlabel 'Tempo [min]'
set ylabel 'Condutividade elétrica normalizada'
set grid
set xrange [0:45]
set yrange [0:6]
set xtics 5
set ytics 1
set mxtics 5
set style fill transparent solid 0.10 noborder
plot diretorio_rodada.'/'.diretorio_caso.'/caso_'.caso.'_eletrodo_1_fundo.dat' u ($1/60):2 t 'Eletrodo 1: Fundo' w l lt caso dt 1, \
diretorio_rodada.'/'.diretorio_caso.'/caso_'.caso.'_eletrodo_2_topo.dat' u ($1/60):2 t 'Eletrodo 2: Topo' w l lt caso dt 2, \
'+' u 1:(0.95):(1.05) t '' w filledc lc 'dark-grey'
set terminal pdfcairo font 'courier'
set output diretorio_rodada.'/fig_gr_tempo_de_mistura_caso_'.caso.'.pdf'
replot
set output