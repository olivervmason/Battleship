# This controller contains the Methods for the user to manually set their fleet position.

def place_carrier() # This method is to place the first ship on the grid.
    
    # There is no space to position the Carrier horizontally outside squares A1 to J6 (inclusive), so these grid squares are whitelisted for error checking.
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

    valid_options_v =      ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10"]

    puts "We will start with the Carrier - do you want to position it horizontally ('H') or vertically ('V')?   "
       
    orientation = gets.chomp.upcase
    valid_orientation = nil

    if orientation == "H" || orientation == "V"       #The user has a binary choice, so any other input will be invalid.
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

    puts "Which grid reference is the starting point for the Carrier? (Remember it needs 5 squares of space!)"
    aircraft_carrier_s = gets.chomp.upcase

    #  If the grid space selected is not on the whitelist that corresponds to the chosen orientation, the ship will not fit:
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
        $b_g[REFERENCE_HASH[aircraft_carrier_s]] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+1] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+2] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+3] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+4] = "C".colorize(:red).on_blue
    else
        $b_g[REFERENCE_HASH[aircraft_carrier_s]] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+10] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+20] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+30] = "C".colorize(:red).on_blue
        $b_g[REFERENCE_HASH[aircraft_carrier_s]+40] = "C".colorize(:red).on_blue
    end

    show_grid()

end

def place_destroyer()
    
    # There is no space to position the Destoyers horizontally outside the following squares (a larger whitelist than for Carriers as the ship is smaller))
    d_valid_options_h =    ["A1", "A2", "A3", "A4", "A5", "A6", "A7",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7",
                            "J1", "J2", "J3", "J4", "J5", "J6", "J7"]

    d_valid_options_v =    ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10"]

    puts "Time to position the two Destoyers! Do you want to position this one horizontally ('H') or vertically ('V')?   "

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

    puts "Which grid reference is the starting point for this Destroyer? (Remember it needs 4 squares of space!)"
    destroyer_s = gets.chomp.upcase

    # Error validation starts: The first check is that the grid reference chosen has been whitelisted
    # The second checks that the variables that corresponds to the grid reference and the grids to the right or below are all blank.

    if orientation == "H"
        while  !d_valid_options_h.include?(destroyer_s) || $b_g[REFERENCE_HASH[destroyer_s]] != " " || $b_g[REFERENCE_HASH[destroyer_s]+1] != " " || $b_g[REFERENCE_HASH[destroyer_s]+2] != " " || $b_g[REFERENCE_HASH[destroyer_s]+3] != " "
                puts "Oops! Either the grid reference range was invalid, did not have enough space, or contained spaces already taken. \\Please try again, remember you need 4 spaces."
                destroyer_s = gets.chomp.upcase
        end
    end

    if orientation == "V"
        while  !d_valid_options_v.include?(destroyer_s) || $b_g[REFERENCE_HASH[destroyer_s]] != " " || $b_g[REFERENCE_HASH[destroyer_s]+10] != " " || $b_g[REFERENCE_HASH[destroyer_s]+20] != " " || $b_g[REFERENCE_HASH[destroyer_s]+30] != " "
                puts "Oops! Either the grid reference range was invalid, did not have enough space, or contained spaces already taken. \nPlease try again, remember you need 4 spaces."
                destroyer_s = gets.chomp.upcase
        end
    end

    # Error validation ends

    if orientation == "H"
        $b_g[REFERENCE_HASH[destroyer_s]] = "D".colorize(:blue).on_red
        $b_g[REFERENCE_HASH[destroyer_s]+1] = "D".colorize(:blue).on_red
        $b_g[REFERENCE_HASH[destroyer_s]+2] = "D".colorize(:blue).on_red
        $b_g[REFERENCE_HASH[destroyer_s]+3] = "D".colorize(:blue).on_red
    else
        $b_g[REFERENCE_HASH[destroyer_s]] = "D".colorize(:blue).on_red
        $b_g[REFERENCE_HASH[destroyer_s]+10] = "D".colorize(:blue).on_red
        $b_g[REFERENCE_HASH[destroyer_s]+20] = "D".colorize(:blue).on_red
        $b_g[REFERENCE_HASH[destroyer_s]+30] = "D".colorize(:blue).on_red
    end

    show_grid()

end


def place_submarine()

    s_valid_options_h =    ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8",
                            "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8"]

    s_valid_options_v =    ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10"]

    puts "Time to position your sneaky submarine. Do you want to position this horizontally ('H') or vertically ('V')?   "

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

    puts "Which grid reference is the starting point for the submarine? (Remember it needs 3 squares of space!)"
    submarine_s = gets.chomp.upcase

    # Error validation starts:

    if orientation == "H"
        while  !s_valid_options_h.include?(submarine_s) || $b_g[REFERENCE_HASH[submarine_s]] != " " || $b_g[REFERENCE_HASH[submarine_s]+1] != " " || $b_g[REFERENCE_HASH[submarine_s]+2] != " "
        puts "Oops! Either the grid reference range was invalid, did not have enough space, or contained spaces already taken. \\Please try again, remember you need 3 spaces."
        submarine_s = gets.chomp.upcase
        end
    end

    if orientation == "V"
        while  !s_valid_options_v.include?(submarine_s) || $b_g[REFERENCE_HASH[submarine_s]] != " " || $b_g[REFERENCE_HASH[submarine_s]+10] != " " || $b_g[REFERENCE_HASH[submarine_s]+20] != " "
        puts "Oops! Either the grid reference range was invalid, did not have enough space, or contained spaces already taken. \\Please try again, remember you need 3 spaces."
        submarine_s = gets.chomp.upcase
        end
    end

    # Error validation ends

    if orientation == "H"
    $b_g[REFERENCE_HASH[submarine_s]] = "S".colorize(:yellow).on_red
    $b_g[REFERENCE_HASH[submarine_s]+1] = "S".colorize(:yellow).on_red
    $b_g[REFERENCE_HASH[submarine_s]+2] = "S".colorize(:yellow).on_red
    else
    $b_g[REFERENCE_HASH[submarine_s]] = "S".colorize(:yellow).on_red
    $b_g[REFERENCE_HASH[submarine_s]+10] = "S".colorize(:yellow).on_red
    $b_g[REFERENCE_HASH[submarine_s]+20] = "S".colorize(:yellow).on_red
    end
    
    show_grid()

end


def place_minesweeper()

    m_valid_options_h =    ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9",
                            "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9"]

    m_valid_options_v =    ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10"]

    puts "It is dirty work but someone has to do it - you have two Minesweepers. Do you want to position this minesweeper horizontally ('H') or vertically ('V')?   "

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

    puts "Which grid reference is the starting point for this minesweeper? (Remember it needs 3 squares of space!)"
    minesweeper_s = gets.chomp.upcase

    # Error validation starts:

    if orientation == "H"
        while  !m_valid_options_h.include?(minesweeper_s) || $b_g[REFERENCE_HASH[minesweeper_s]] != " " || $b_g[REFERENCE_HASH[minesweeper_s]+1] != " "
        puts "Oops! Either the grid reference range was invalid, did not have enough space, or contained spaces already taken. \\Please try again, remember you need 2 spaces."
        minesweeper_s = gets.chomp.upcase
        end
    end

    if orientation == "V"
        while  !m_valid_options_v.include?(minesweeper_s) || $b_g[REFERENCE_HASH[minesweeper_s]] != " " || $b_g[REFERENCE_HASH[minesweeper_s]+10] != " "
        puts "Oops! Either the grid reference range was invalid, did not have enough space, or contained spaces already taken. \\Please try again, remember you need 2 spaces."
        minesweeper_s = gets.chomp.upcase
        end
    end

    # Error validation ends

    if orientation == "H"
    $b_g[REFERENCE_HASH[minesweeper_s]] = "M".colorize(:black).on_white
    $b_g[REFERENCE_HASH[minesweeper_s]+1] = "M".colorize(:black).on_white
    else
    $b_g[REFERENCE_HASH[minesweeper_s]] = "M".colorize(:black).on_white
    $b_g[REFERENCE_HASH[minesweeper_s]+10] = "M".colorize(:black).on_white
    end

    show_grid()
end