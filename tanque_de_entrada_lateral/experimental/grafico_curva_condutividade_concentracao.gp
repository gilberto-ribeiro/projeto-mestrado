reset
set title 'Curva de condutividade elétrica por concentração de NaCl'
set ylabel 'Condutividade elétrica [mS]'
set xlabel 'Concentração [g/L]'
set key bottom right
set samples 1000
set grid
set xrange [10:110]
set yrange [30:130]
# a = 0.931941; b = 22.165960; r = 0.986714 # Todos os pontos
a = 1.158451; b = 13.063968; r = 0.996421 # Menos o ponto da primeira medição
# a = 1.342836; b = 7.505248; r = 0.999818 # Menos o ponto da primeira medição e o primeiro ponto da segunda medição
f(x) = a*x + b
set xtics 10
set ytics 10
set terminal pdfcairo size 12cm, 12cm font 'courier'
set output 'fig_gr_curva_condutividade_concentracao.pdf'
plot 'dados_curva_condutividade_concentracao.dat' skip 3 u ($1/($2*1e-3)):3 t 'Dados experimentais' w p pt 6, \
f(x) t 'Regressão linear' w l lt 1 dt 2
set terminal wxt
set output
replot