# Welcome - this requires the user to idenfify themselves

print "PLEASE IDENTIFY YOURSELF: "
user_name = gets.chomp.upcase

print "Welcome to the bridge Admiral #{user_name}. \nPlease enter your authorization code to commence operations: "
authorization_code = gets.chomp.downcase

while authorization_code != "alan turing"
    puts "Wrong code - access denied. \nHint: the password is the name of the man whose computer broke the Enigma code."
    authorization_code = gets.chomp.downcase
end


# This Method is for the basic grid on which information will be displayed to the user. Each grid square contains a value to be determined elsewhere.

$b_g = Array.new(101, " ")       # This creates 101 variables with nil value, to be assigned in the grid Matrix. Position 0 is deliberately redundant.

def clear_terminal()            # This code pushes everything above the last grid printed out of user view 
    puts "\e[H\e[2J"
end

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

show_grid()

REFERENCE_HASH = {
    "A1" => 1,
    "A2" => 2,
    "A3" => 3,
    "A4" => 4,
    "A5" => 5,
    "A6" => 6,
    "A7" => 7,
    "A8" => 8,
    "A9" => 9,
    "A10" => 10,
    
    "B1" => 11,
    "B2" => 12,
    "B3" => 13,
    "B4" => 14,
    "B5" => 15,
    "B6" => 16,
    "B7" => 17,
    "B8" => 18,
    "B9" => 19,
    "B10" => 20,

    "C1" => 21,
    "C2" => 22,
    "C3" => 23,
    "C4" => 24,
    "C5" => 25,
    "C6" => 26,
    "C7" => 27,
    "C8" => 28,
    "C9" => 29,
    "C10" => 30,

    "D1" => 31,
    "D2" => 32,
    "D3" => 33,
    "D4" => 34,
    "D5" => 35,
    "D6" => 36,
    "D7" => 37,
    "D8" => 38,
    "D9" => 39,
    "D10" => 40,

    "E1" => 41,
    "E2" => 42,
    "E3" => 43,
    "E4" => 44,
    "E5" => 45,
    "E6" => 46,
    "E7" => 47,
    "E8" => 48,
    "E9" => 49,
    "E10" => 50,

    "F1" => 51,
    "F2" => 52,
    "F3" => 53,
    "F4" => 54,
    "F5" => 55,
    "F6" => 56,
    "F7" => 57,
    "F8" => 58,
    "F9" => 59,
    "F10" => 60,

    "G1" => 61,
    "G2" => 62,
    "G3" => 63,
    "G4" => 64,
    "G5" => 65,
    "G6" => 66,
    "G7" => 67,
    "G8" => 68,
    "G9" => 69,
    "G10" => 70,

    "H1" => 71,
    "H2" => 72,
    "H3" => 73,
    "H4" => 74,
    "H5" => 75,
    "H6" => 76,
    "H7" => 77,
    "H8" => 78,
    "H9" => 79,
    "H10" => 80,

    "I1" => 81,
    "I2" => 82,
    "I3" => 83,
    "I4" => 84,
    "I5" => 85,
    "I6" => 86,
    "I7" => 87,
    "I8" => 88,
    "I9" => 89,
    "I10" => 90,

    "J1" => 91,
    "J2" => 92,
    "J3" => 93,
    "J4" => 94,
    "J5" => 95,
    "J6" => 96,
    "J7" => 97,
    "J8" => 98,
    "J9" => 99,
    "J10" => 100,

}

# The user fleet consists of 5 ships:
#     - 1 Aircraft Carrier ("C"), 5 squares long
#     - 2 Destroyers ("D"), 4 squares long
#     - 1 Submarine ("S"), 3 squares long
#     - 2 Minesweepers, 2 squares long

# Visually these will be represented on the grid by their corresponding letter, e.g for a Carrier:

# A
# A    
# A or AAAAA
# A
# A

def place_carrier()

    # There is no space to position the Carrier horizontally outside squares A1 to J6 (inclusive)
    valid_options_h =      ["A1", "A2", "A3", "A4", "A5", "A6", 
                            "B1", "B2", "B3", "B4", "B5", "B6",
                            "C1", "C2", "C3", "C4", "C5", "C6",
                            "D1", "D2", "D3", "D4", "D5", "D6",
                            "E1", "E2", "E3", "E4", "E5", "E6",
                            "F1", "F2", "F3", "F4", "F5", "F6",
                            "G1", "G2", "G3", "G4", "G5", "G6",
                            "H1", "H2", "H3", "H4", "H5", "H6",
                            "I1", "I2", "I3", "I4", "I5", "I6",
                            "J1", "J2", "J3", "J4", "J5", "J6"]

    # Similarly, there is no space to position the Carrier vertically outside squares A1 to F10 (inclusive)

    valid_options_v =      ["A1", "A2", "A3", "A4", "A5", "A6", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F8", "F9", "F10"]

    puts "Time to position the Carrier! Do you want to position it horizontally ('H') or vertically ('V')?   "

    orientation = gets.chomp.upcase
    valid_orientation = nil

    if orientation == "H" || orientation == "V"
        valid_orientation = true
    else 
        valid_orientation = false
    end

    while valid_orientation == false
        print "Please select a valid orientation ('H' or 'V'):" 
        orientation = gets.chomp.upcase
        if orientation == "H" || orientation =="V"
            valid_orientation = true
        end
    end

    puts "Which grid reference is the starting point for the carrier? (Remember it needs 5 squares of space!)"
    aircraft_carrier_s = gets.chomp.upcase
    

    if orientation == "H"
        while !valid_options_h.include?(aircraft_carrier_s)
            puts "Oops! That grid reference was either invalid or did not allow enough space for the Carrier. Try again: "
            aircraft_carrier_s = gets.chomp.upcase
        end 
    end

    if orientation == "V"
        while !valid_options_v.include?(aircraft_carrier_s)
            puts "Oops! That grid reference was either invalid or did not allow enough space for the Carrier. Try again: "
            aircraft_carrier_s = gets.chomp.upcase
        end 
    end
      
    if orientation == "H"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+1] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+2] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+3] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+4] = "C"      
    else 
        $b_g[REFERENCE_HASH[aircraft_carrier_s]] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+10] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+20] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+30] = "C"
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+40] = "C"
    end 

    show_grid()

end 

place_carrier()




# It is now time to place the next destoryers.

def place_destroyer()

    # There is no space to position the Destoyers horizontally outside the following squares (a larger whitelist than for Carriers as the ship is smaller))
    d_valid_options_h =      ["A1", "A2", "A3", "A4", "A5", "A6", "A7", 
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7",   
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7",
                            "J1", "J2", "J3", "J4", "J5", "J6", "J7"]

    d_valid_options_v =      ["A1", "A2", "A3", "A4", "A5", "A6", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F8", "F9", "F10",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G8", "G9", "G10"]

    puts "Time to position the Destoyers! Do you want to position this one horizontally ('H') or vertically ('V')?   "

    orientation = "h"

    orientation = gets.chomp.upcase
    valid_orientation = nil

    if orientation == "H" || orientation == "V"
        valid_orientation = true
    else 
        valid_orientation = false
    end

    while valid_orientation == false
        print "Please select a valid orientation ('H' or 'V'):" 
        orientation = gets.chomp.upcase
        if orientation == "H" || orientation =="V"
            valid_orientation = true
        end
    end

    puts "Which grid reference is the starting point for this destroyer? (Remember it needs 4 squares of space!)"
    destroyer_s = gets.chomp.upcase

# Error validation starts:

    if orientation == "H"
        while  $b_g[REFERENCE_HASH[destroyer_s]] != " " || $b_g[REFERENCE_HASH[destroyer_s]+1] != " " || $b_g[REFERENCE_HASH[destroyer_s]+2] != " " || $b_g[REFERENCE_HASH[destroyer_s]+3] != " "    
                puts "Oops! One of those grid references is already taken. Please try again."
                destroyer_s = gets.chomp.upcase
        end
    end

    if orientation == "V"
        while  $b_g[REFERENCE_HASH[destroyer_s]] != " " || $b_g[REFERENCE_HASH[destroyer_s]+10] != " " || $b_g[REFERENCE_HASH[destroyer_s]+20] != " " || $b_g[REFERENCE_HASH[destroyer_s]+30] != " "    
                puts "Oops! One of those grid references is already taken. Please try again."
                destroyer_s = gets.chomp.upcase
        end
    end

    
    if orientation == "H"
        while !d_valid_options_h.include?(destroyer_s)
            puts "Oops! That grid reference was either invalid or did not allow enough space for the Destroyer. Try again: "
            destroyer_s = gets.chomp.upcase
        end 
    end

    if orientation =="V"    
        while !d_valid_options_v.include?(destroyer_s)
            puts "Oops! That grid reference was either invalid or did not allow enough space for the Destoyer. Try again: "
            destroyer_s = gets.chomp.upcase
        end 
    end

    # Error validation ends

    if orientation == "H"
        $b_g[REFERENCE_HASH[destroyer_s]] = "D"
        $b_g[REFERENCE_HASH[destroyer_s]+1] = "D"
        $b_g[REFERENCE_HASH[destroyer_s]+2] = "D"
        $b_g[REFERENCE_HASH[destroyer_s]+3] = "D"
    else 
        $b_g[REFERENCE_HASH[destroyer_s]] = "D"
        $b_g[REFERENCE_HASH[destroyer_s]+10] = "D"
        $b_g[REFERENCE_HASH[destroyer_s]+20] = "D"
        $b_g[REFERENCE_HASH[destroyer_s]+30] = "D"
    end 

    show_grid()

end 

place_destroyer()

# Repeat for second Destroyer

place_destroyer()


