z_norm_n11         = [2.0996 1.5521 1.0757 0.5108 0.1973 -0.0179 -0.2381 -0.5866 -1.0884 -1.5965 -2.1098];
z_norm_n9          = [2.0996 1.5521 1.0757 0.5108 -0.0179 -0.5866 -1.0884 -1.5965 -2.1098];

Ur_Utip_r50        = [0.0 0.0 0.045 0.33 0.67 0.735 0.55 0.185 0.105 0.08 0.06];
Ur_Utip_r50_n9     = Ur_Utip_r50([1 2 3 4 6 8 9 10 11]);
Ur_Utip_r60        = [0.005 0.02 0.105 0.435 0.65 0.59 0.43 0.21 0.12 0.09 0.055];
Ur_Utip_r60_n9     = Ur_Utip_r60([1 2 3 4 6 8 9 10 11]);
Ur_Utip_r70        = [0.01 0.06 0.22 0.49 0.42 0.23 0.13 0.09 0.06];
Ur_Utip_r77        = [0.03 0.105 0.295 0.475 0.405 0.24 0.145 0.1 0.075];
Ur_Utip_r90        = [0.075 0.16 0.31 0.415 0.375 0.25 0.16 0.1 0.065];
Ur_Utip_r105       = [0.13 0.195 0.28 0.315 0.275 0.22 0.145 0.08 0.05];

Utheta_Utip_r50    = [0.05 0.05 0.06 0.42 0.66 0.63 0.54 0.29 0.05 0.025 0.015];
Utheta_Utip_r50_n9 = Utheta_Utip_r50([1 2 3 4 6 8 9 10 11]);
Utheta_Utip_r60    = [0.03 0.04 0.06 0.35 0.39 0.135 0.035 0.025 0.015];
Utheta_Utip_r70    = [0.02 0.05 0.165 0.31 0.29 0.135 0.045 0.03 0.02];
Utheta_Utip_r77    = [0.02 0.06 0.145 0.26 0.245 0.135 0.045 0.035 0.03];
Utheta_Utip_r90    = [0.055 0.08 0.155 0.2 0.2 0.135 0.08 0.06 0.06];
Utheta_Utip_r105   = [0.06 0.08 0.11 0.135 0.13 0.1 0.09 0.08 0.08];

Uz_Utip_r50        = [-0.084 -0.0624 -0.02553 0.0289 0.0818 0.0942 0.1006 0.0646 0.0695 0.1311 0.1651];
Uz_Utip_r50_n9     = Uz_Utip_r50([1 2 3 4 6 8 9 10 11]);
Uz_Utip_r60        = [-0.0849 -0.0642 -0.0409 0.0597 0.0836 0.0844 0.12113 0.1427 0.1563];
Uz_Utip_r70        = [-0.0789 -0.0459 0 0.0694 0.0620 0.0683 0.1119 0.1256 0.1329];
Uz_Utip_r77        = [-0.0665 -0.0422 0.0203 0.0602 0.0633 0.07521 0.08385 0.0999 0.1053];
Uz_Utip_r90        = [-0.0453 -0.0116 0.01983 0.04 0.0298 0.0343 0.0507 0.0631 0.0639];
Uz_Utip_r105       = [-0.0117 0.0107 0.0207 0.0068 -0.0061 -0.0072 -0.0095 -0.00091 0.0091];

Ur_n9  = [z_norm_n9' Ur_Utip_r50_n9' Ur_Utip_r60_n9' Ur_Utip_r70' Ur_Utip_r77' Ur_Utip_r90' Ur_Utip_r105'];
Ur_n11 = [z_norm_n11' Ur_Utip_r50' Ur_Utip_r60'];

Utheta_n9  = [z_norm_n9' Utheta_Utip_r50_n9' Utheta_Utip_r60' Utheta_Utip_r70' Utheta_Utip_r77' Utheta_Utip_r90' Utheta_Utip_r105'];
Utheta_n11 = [z_norm_n11' Utheta_Utip_r50'];

Uz_n9  = [z_norm_n9' Uz_Utip_r50_n9' Uz_Utip_r60' Uz_Utip_r70' Uz_Utip_r77' Uz_Utip_r90' Uz_Utip_r105'];
Uz_n11 = [z_norm_n11' Uz_Utip_r50'];

dlmwrite('dados_wu_patterson_1989_Ur_n9.dat', Ur_n9, 'delimiter', ' ');
dlmwrite('dados_wu_patterson_1989_Utheta_n9.dat', Utheta_n9, 'delimiter', ' ');
dlmwrite('dados_wu_patterson_1989_Uz_n9.dat', Uz_n9, 'delimiter', ' ');

dlmwrite('dados_wu_patterson_1989_Ur_n11.dat', Ur_n11, 'delimiter', ' ');
dlmwrite('dados_wu_patterson_1989_Utheta_n11.dat', Utheta_n11, 'delimiter', ' ');
dlmwrite('dados_wu_patterson_1989_Uz_n11.dat', Uz_n11, 'delimiter', ' ');