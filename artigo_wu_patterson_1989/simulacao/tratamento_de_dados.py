import re
import math

def trim_velocity(file_name):
    D = 93
    N = 200 / 60
    w = D / 5
    U_tip = math.pi * (D / 1000) * N
    pattern = re.compile('a(\d+)_r(\d+)')
    velocity_type = {'Radial': ('radial', 'Ur'),
                     'Axial': ('axial', 'Uz'),
                     'Tangential': ('tangential', 'Utheta')
                     }
    with open(file_name, 'r', encoding='utf8') as fhandle_read:
        for line in fhandle_read:
            if line.startswith('(labels'):
                for vt_key in velocity_type:
                    if vt_key in line:
                        vt = velocity_type[vt_key][1]
            if line.startswith('((xy/key/label'):
                a = pattern.search(line).group(1)
                r = pattern.search(line).group(2)
                new_file_name = f'dados_simulacao_{vt}_a{a}_r{r}.dat'
                with open(new_file_name, 'w', encoding='utf8') as fhandle_write:
                    for line in fhandle_read:
                        if line.startswith(')'):
                            fhandle_write.close()
                            break
                        z, u = line.strip().split('\t')
                        z = float(z)
                        u = float(u)
                        z_norm = 2 * (z*1000 - 90) / w
                        u_norm = u / U_tip
                        if z_norm >= -2.5 and z_norm <= 2.5:
                            fhandle_write.write(f'{z:.8f} {u:.8f} {z_norm:.8f} {u_norm:.8f}\n')