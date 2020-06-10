# Build/show Home grid:

def show_grid()
    clear_terminal()
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

    a = Artii::Base.new
    puts a.asciify('Home Fleet')    
    puts grid

end

# ----------------------------------------------------------------------------------------------

# Build/show Enemy fleet grid WITH the ships positions:

def show_enemy_grid()
    clear_terminal()

    a = Artii::Base.new
    puts a.asciify('Enemy Fleet')

    grid = %{
           1     2     3     4     5     6     7     8     9    10
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|           
    A   |  #{$enemy_b_g[1]}  |  #{$enemy_b_g[2]}  |  #{$enemy_b_g[3]}  |  #{$enemy_b_g[4]}  |  #{$enemy_b_g[5]}  |  #{$enemy_b_g[6]}  |  #{$enemy_b_g[7]}  |  #{$enemy_b_g[8]}  |  #{$enemy_b_g[9]}  |  #{$enemy_b_g[10]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|           
    B   |  #{$enemy_b_g[11]}  |  #{$enemy_b_g[12]}  |  #{$enemy_b_g[13]}  |  #{$enemy_b_g[14]}  |  #{$enemy_b_g[15]}  |  #{$enemy_b_g[16]}  |  #{$enemy_b_g[17]}  |  #{$enemy_b_g[18]}  |  #{$enemy_b_g[19]}  |  #{$enemy_b_g[20]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    C   |  #{$enemy_b_g[21]}  |  #{$enemy_b_g[22]}  |  #{$enemy_b_g[23]}  |  #{$enemy_b_g[24]}  |  #{$enemy_b_g[25]}  |  #{$enemy_b_g[26]}  |  #{$enemy_b_g[27]}  |  #{$enemy_b_g[28]}  |  #{$enemy_b_g[29]}  |  #{$enemy_b_g[30]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|               
    D   |  #{$enemy_b_g[31]}  |  #{$enemy_b_g[32]}  |  #{$enemy_b_g[33]}  |  #{$enemy_b_g[34]}  |  #{$enemy_b_g[35]}  |  #{$enemy_b_g[36]}  |  #{$enemy_b_g[37]}  |  #{$enemy_b_g[38]}  |  #{$enemy_b_g[39]}  |  #{$enemy_b_g[40]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    E   |  #{$enemy_b_g[41]}  |  #{$enemy_b_g[42]}  |  #{$enemy_b_g[43]}  |  #{$enemy_b_g[44]}  |  #{$enemy_b_g[45]}  |  #{$enemy_b_g[46]}  |  #{$enemy_b_g[47]}  |  #{$enemy_b_g[48]}  |  #{$enemy_b_g[49]}  |  #{$enemy_b_g[50]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    F   |  #{$enemy_b_g[51]}  |  #{$enemy_b_g[52]}  |  #{$enemy_b_g[53]}  |  #{$enemy_b_g[54]}  |  #{$enemy_b_g[55]}  |  #{$enemy_b_g[56]}  |  #{$enemy_b_g[57]}  |  #{$enemy_b_g[58]}  |  #{$enemy_b_g[59]}  |  #{$enemy_b_g[60]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    G   |  #{$enemy_b_g[61]}  |  #{$enemy_b_g[62]}  |  #{$enemy_b_g[63]}  |  #{$enemy_b_g[64]}  |  #{$enemy_b_g[65]}  |  #{$enemy_b_g[66]}  |  #{$enemy_b_g[67]}  |  #{$enemy_b_g[68]}  |  #{$enemy_b_g[69]}  |  #{$enemy_b_g[70]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|               
    H   |  #{$enemy_b_g[71]}  |  #{$enemy_b_g[72]}  |  #{$enemy_b_g[73]}  |  #{$enemy_b_g[74]}  |  #{$enemy_b_g[75]}  |  #{$enemy_b_g[76]}  |  #{$enemy_b_g[77]}  |  #{$enemy_b_g[78]}  |  #{$enemy_b_g[79]}  |  #{$enemy_b_g[80]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    I   |  #{$enemy_b_g[81]}  |  #{$enemy_b_g[82]}  |  #{$enemy_b_g[83]}  |  #{$enemy_b_g[84]}  |  #{$enemy_b_g[85]}  |  #{$enemy_b_g[86]}  |  #{$enemy_b_g[87]}  |  #{$enemy_b_g[88]}  |  #{$enemy_b_g[89]}  |  #{$enemy_b_g[90]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    J   |  #{$enemy_b_g[91]}  |  #{$enemy_b_g[92]}  |  #{$enemy_b_g[93]}  |  #{$enemy_b_g[94]}  |  #{$enemy_b_g[95]}  |  #{$enemy_b_g[96]}  |  #{$enemy_b_g[97]}  |  #{$enemy_b_g[98]}  |  #{$enemy_b_g[99]}  |  #{$enemy_b_g[100]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    }

    puts grid

end 

# ----------------------------------------------------------------------------------------------

# Build/show Enemy fleet grid WITHOUT the ships positions - i.e. the view presented to the user:

def hidden_enemy_grid()
    clear_terminal()

    a = Artii::Base.new
    puts a.asciify('Target area')

    grid = %{
           1     2     3     4     5     6     7     8     9    10
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|           
    A   |  #{$hidden_enemy_b_g[1]}  |  #{$hidden_enemy_b_g[2]}  |  #{$hidden_enemy_b_g[3]}  |  #{$hidden_enemy_b_g[4]}  |  #{$hidden_enemy_b_g[5]}  |  #{$hidden_enemy_b_g[6]}  |  #{$hidden_enemy_b_g[7]}  |  #{$hidden_enemy_b_g[8]}  |  #{$hidden_enemy_b_g[9]}  |  #{$hidden_enemy_b_g[10]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|           
    B   |  #{$hidden_enemy_b_g[11]}  |  #{$hidden_enemy_b_g[12]}  |  #{$hidden_enemy_b_g[13]}  |  #{$hidden_enemy_b_g[14]}  |  #{$hidden_enemy_b_g[15]}  |  #{$hidden_enemy_b_g[16]}  |  #{$hidden_enemy_b_g[17]}  |  #{$hidden_enemy_b_g[18]}  |  #{$hidden_enemy_b_g[19]}  |  #{$hidden_enemy_b_g[20]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    C   |  #{$hidden_enemy_b_g[21]}  |  #{$hidden_enemy_b_g[22]}  |  #{$hidden_enemy_b_g[23]}  |  #{$hidden_enemy_b_g[24]}  |  #{$hidden_enemy_b_g[25]}  |  #{$hidden_enemy_b_g[26]}  |  #{$hidden_enemy_b_g[27]}  |  #{$hidden_enemy_b_g[28]}  |  #{$hidden_enemy_b_g[29]}  |  #{$hidden_enemy_b_g[30]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|               
    D   |  #{$hidden_enemy_b_g[31]}  |  #{$hidden_enemy_b_g[32]}  |  #{$hidden_enemy_b_g[33]}  |  #{$hidden_enemy_b_g[34]}  |  #{$hidden_enemy_b_g[35]}  |  #{$hidden_enemy_b_g[36]}  |  #{$hidden_enemy_b_g[37]}  |  #{$hidden_enemy_b_g[38]}  |  #{$hidden_enemy_b_g[39]}  |  #{$hidden_enemy_b_g[40]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    E   |  #{$hidden_enemy_b_g[41]}  |  #{$hidden_enemy_b_g[42]}  |  #{$hidden_enemy_b_g[43]}  |  #{$hidden_enemy_b_g[44]}  |  #{$hidden_enemy_b_g[45]}  |  #{$hidden_enemy_b_g[46]}  |  #{$hidden_enemy_b_g[47]}  |  #{$hidden_enemy_b_g[48]}  |  #{$hidden_enemy_b_g[49]}  |  #{$hidden_enemy_b_g[50]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    F   |  #{$hidden_enemy_b_g[51]}  |  #{$hidden_enemy_b_g[52]}  |  #{$hidden_enemy_b_g[53]}  |  #{$hidden_enemy_b_g[54]}  |  #{$hidden_enemy_b_g[55]}  |  #{$hidden_enemy_b_g[56]}  |  #{$hidden_enemy_b_g[57]}  |  #{$hidden_enemy_b_g[58]}  |  #{$hidden_enemy_b_g[59]}  |  #{$hidden_enemy_b_g[60]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    G   |  #{$hidden_enemy_b_g[61]}  |  #{$hidden_enemy_b_g[62]}  |  #{$hidden_enemy_b_g[63]}  |  #{$hidden_enemy_b_g[64]}  |  #{$hidden_enemy_b_g[65]}  |  #{$hidden_enemy_b_g[66]}  |  #{$hidden_enemy_b_g[67]}  |  #{$hidden_enemy_b_g[68]}  |  #{$hidden_enemy_b_g[69]}  |  #{$hidden_enemy_b_g[70]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|               
    H   |  #{$hidden_enemy_b_g[71]}  |  #{$hidden_enemy_b_g[72]}  |  #{$hidden_enemy_b_g[73]}  |  #{$hidden_enemy_b_g[74]}  |  #{$hidden_enemy_b_g[75]}  |  #{$hidden_enemy_b_g[76]}  |  #{$hidden_enemy_b_g[77]}  |  #{$hidden_enemy_b_g[78]}  |  #{$hidden_enemy_b_g[79]}  |  #{$hidden_enemy_b_g[80]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    I   |  #{$hidden_enemy_b_g[81]}  |  #{$hidden_enemy_b_g[82]}  |  #{$hidden_enemy_b_g[83]}  |  #{$hidden_enemy_b_g[84]}  |  #{$hidden_enemy_b_g[85]}  |  #{$hidden_enemy_b_g[86]}  |  #{$hidden_enemy_b_g[87]}  |  #{$hidden_enemy_b_g[88]}  |  #{$hidden_enemy_b_g[89]}  |  #{$hidden_enemy_b_g[90]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    J   |  #{$hidden_enemy_b_g[91]}  |  #{$hidden_enemy_b_g[92]}  |  #{$hidden_enemy_b_g[93]}  |  #{$hidden_enemy_b_g[94]}  |  #{$hidden_enemy_b_g[95]}  |  #{$hidden_enemy_b_g[96]}  |  #{$hidden_enemy_b_g[97]}  |  #{$hidden_enemy_b_g[98]}  |  #{$hidden_enemy_b_g[99]}  |  #{$hidden_enemy_b_g[100]}  |
        |-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|            
    }

    puts grid

end