reset
rodada = 'A'
configuracao = 1
diretorio = 'rodada_'.rodada.'_configuracao_'.configuracao
set title 'Logaritmo da variância para cada caso - Rodada '.rodada.' (C'.configuracao.')'
set xlabel 'Tempo [min]'
set ylabel "Logaritmo da variância da\ncondutividade elétrica"
set key rmargin
set grid xtics mxtics ytics
set xrange [0:45]
set yrange [-7:2]
set xtics 5
set ytics 1
set mxtics 5
plot diretorio.'/caso_1_D_n_3_beta_0/caso_1_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 1: β = 0°, n = 3 (D)' w l lt 1, \
diretorio.'/caso_2_D_n_3_beta_10/caso_2_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 2: β = 10°, n = 3 (D)' w l lt 2, \
diretorio.'/caso_3_D_n_3_beta_15/caso_3_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 3: β = 15°, n = 3 (D)' w l lt 3, \
diretorio.'/caso_4_D_n_3_beta_20/caso_4_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 4: β = 20°, n = 3 (D)' w l lt 4, \
diretorio.'/caso_5_D_n_3_beta_30/caso_5_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 5: β = 30°, n = 3 (D)' w l lt 5, \
diretorio.'/caso_6_D_n_2_beta_0/caso_6_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 6: β = 0°, n = 2 (D)' w l lt 6, \
diretorio.'/caso_7_D_n_2_beta_15/caso_7_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 7: β = 15°, n = 2 (D)' w l lt 7, \
diretorio.'/caso_8_AD_n_1_beta_0/caso_8_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 8: β = 0°, n = 1 (AD)' w l lt 8, \
diretorio.'/caso_9_AD_n_1_beta_15/caso_9_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 9: β = 15°, n = 1 (AD)' w l lt 8 dt 2, \
diretorio.'/caso_10_A_n_3_beta_0/caso_10_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 10: β = 0°, n = 3 (A)' w l lt 1 dt 2, \
diretorio.'/caso_11_A_n_3_beta_15/caso_11_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 11: β = 15°, n = 3 (A)' w l lt 3 dt 2, \
diretorio.'/caso_12_A_n_2_beta_0/caso_12_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 12: β = 0°, n = 2 (A)' w l lt 6 dt 2, \
diretorio.'/caso_13_A_n_2_beta_15/caso_13_logaritmo_da_variancia.dat' u ($1/60):2 t 'Caso 13: β = 15°, n = 2 (A)' w l lt 7 dt 2, \
-2.6 t '' w l dt 2 lc 'dark-gray'
set terminal pdfcairo font 'courier' size 7in, 3in
set output diretorio.'/fig_gr_logaritmo_da_variancia.pdf'
replot
set output