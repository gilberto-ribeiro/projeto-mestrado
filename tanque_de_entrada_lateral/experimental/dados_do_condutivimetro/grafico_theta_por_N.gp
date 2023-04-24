reset
set title "Tempo de mistura por velocidade de rotação para β = 0°"
set xlabel "Velocidade de rotação [rpm]"
set ylabel "Tempo de mistura [s]"
set xrange [100:700]
set yrange [0:2000]
set xtics 100
set ytics 500
set mxtics 5
set mytics 5
set samples 1000
set grid xtics ytics
a1 = -3.832857
b1 = 2417.714286
r1 = 0.975322
f(x) = a1*x + b1
a2 = exp(16.818499)
b2 = -1.744538
r2 = 0.917438
g(x) = a2*x**b2
plot "dados_theta_por_N.dat" u "velocidade_de_rotacao":"tempo_de_mistura" t "Dados experimentais" w p lt 1 pt 6 ps 0.5 ,\
g(x) t "y = a x**b" w l lt 2 dt 1, \
f(x) t "y = -3.833 x + 2418" w l lt 3 dt 2
set terminal pdfcairo font "courier"
set output "fig_gr_theta_por_N.pdf"
replot
set output
