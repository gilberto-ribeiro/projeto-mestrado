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
a1 = 2417.714286
b1 = -3.832857
r1 = 0.975322
f(x) = a1 + b1*x
a2 = exp(16.818499)
b2 = -1.744538
r2 = 0.917438
g(x) = a2*x**b2
plot "dados_theta_por_N.dat" u "velocidade_de_rotacao":"tempo_de_mistura" t "Dados experimentais" w p lc "black" pt 6 ps 0.5 ,\
g(x) t "θ_{95} = a*N^b" w l lc "black" dt 1, \
f(x) t "θ_{95} = a + b*N" w l lc "black" dt 2
set terminal pdfcairo font "courier"
set output "fig_gr_theta_por_N.pdf"
replot
set output
