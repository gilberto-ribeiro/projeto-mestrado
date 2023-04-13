reset
set title 'Solubilidade de Cloreto de Sódio (NaCl) em água'
set ylabel 'Gramas de NaCl por 100 g de água'
set xlabel 'Temperatura [°C]'
set grid
set xrange [0:100]
set yrange [35:40]
set xtics 10
set ytics 0.5
set terminal pdfcairo size 10cm, 7cm font 'courier'
set output 'fig_gr_solubilidade_nacl_perry.pdf'
plot 'dados_solubilidade_nacl_perry.dat' u 1:2 t '' w lp pt 6 ps 0.5
set terminal wxt
set output
replot