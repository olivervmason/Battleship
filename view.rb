def show_grid()
    clear_terminal
    grid = %{
           1     2     3     4     5     6     7     8     9    10
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    A   |  #{$b_g[1]}  |  #{$b_g[2]}  |  #{$b_g[3]}  |  #{$b_g[4]}  |  #{$b_g[5]}  |  #{$b_g[6]}  |  #{$b_g[7]}  |  #{$b_g[8]}  |  #{$b_g[9]}  |  #{$b_g[10]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    B   |  #{$b_g[11]}  |  #{$b_g[12]}  |  #{$b_g[13]}  |  #{$b_g[14]}  |  #{$b_g[15]}  |  #{$b_g[16]}  |  #{$b_g[17]}  |  #{$b_g[18]}  |  #{$b_g[19]}  |  #{$b_g[20]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    C   |  #{$b_g[21]}  |  #{$b_g[22]}  |  #{$b_g[23]}  |  #{$b_g[24]}  |  #{$b_g[25]}  |  #{$b_g[26]}  |  #{$b_g[27]}  |  #{$b_g[28]}  |  #{$b_g[29]}  |  #{$b_g[30]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    D   |  #{$b_g[31]}  |  #{$b_g[32]}  |  #{$b_g[33]}  |  #{$b_g[34]}  |  #{$b_g[35]}  |  #{$b_g[36]}  |  #{$b_g[37]}  |  #{$b_g[38]}  |  #{$b_g[39]}  |  #{$b_g[40]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    E   |  #{$b_g[41]}  |  #{$b_g[42]}  |  #{$b_g[43]}  |  #{$b_g[44]}  |  #{$b_g[45]}  |  #{$b_g[46]}  |  #{$b_g[47]}  |  #{$b_g[48]}  |  #{$b_g[49]}  |  #{$b_g[50]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    F   |  #{$b_g[51]}  |  #{$b_g[52]}  |  #{$b_g[53]}  |  #{$b_g[54]}  |  #{$b_g[55]}  |  #{$b_g[56]}  |  #{$b_g[57]}  |  #{$b_g[58]}  |  #{$b_g[59]}  |  #{$b_g[60]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    G   |  #{$b_g[61]}  |  #{$b_g[62]}  |  #{$b_g[63]}  |  #{$b_g[64]}  |  #{$b_g[65]}  |  #{$b_g[66]}  |  #{$b_g[67]}  |  #{$b_g[68]}  |  #{$b_g[69]}  |  #{$b_g[70]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    H   |  #{$b_g[71]}  |  #{$b_g[72]}  |  #{$b_g[73]}  |  #{$b_g[74]}  |  #{$b_g[75]}  |  #{$b_g[76]}  |  #{$b_g[77]}  |  #{$b_g[78]}  |  #{$b_g[79]}  |  #{$b_g[80]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    I   |  #{$b_g[81]}  |  #{$b_g[82]}  |  #{$b_g[83]}  |  #{$b_g[84]}  |  #{$b_g[85]}  |  #{$b_g[86]}  |  #{$b_g[87]}  |  #{$b_g[88]}  |  #{$b_g[89]}  |  #{$b_g[90]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    J   |  #{$b_g[91]}  |  #{$b_g[92]}  |  #{$b_g[93]}  |  #{$b_g[94]}  |  #{$b_g[95]}  |  #{$b_g[96]}  |  #{$b_g[97]}  |  #{$b_g[98]}  |  #{$b_g[99]}  |  #{$b_g[100]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
    }

puts grid

end