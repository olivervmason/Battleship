require_relative "./user_grid_controller"
require_relative "./a_user_controller"
require_relative "./auto_grid_controller"
require_relative "./reference_hash"

@user_score = 0                                     # User or Computer score of hits needs to reach 20 to win
@computer_score = 0
@user_previous_shots = []                           # Arrays used to record previous shots to avoid duplicates
@computer_previous_shots = []

def welcome_user
    a = Artii::Base.new
    puts a.asciify('BATTLESHIP!')
end

def winning_message
    a = Artii::Base.new
    puts a.asciify('YOU WIN!')
end

def losing_message
    a = Artii::Base.new
    puts a.asciify('GAME OVER')
end

def clear_terminal()                                # This code pushes everything above the last grid printed out of user view
    puts "\e[H\e[2J"
end

def create_grid_arrays                        
    $b_g = Array.new(101, " ")                      # This creates the values 1-100 that correspond to the gridsquares. Position 0 is deliberately redundant.
    $enemy_b_g = Array.new(101, " ")                # This creates values for the enemy fleet gridsquares. 
    $hidden_enemy_b_g = Array.new(101, " ")         # This creates values for the enemy fleet gridsquares. 
end


# This is for the automatic fleet generation methods to return a binary choice for ship orientatation
def h_or_v()                                        
    h_choice = rand(0..1)
    if h_choice == 0
        return "H"
    else
        return "V"
    end
end

# This method selects a random grid alpha numberic reference. This will be used by the computer to place its ships, and later to fire on the user fleet,
def rand_gr()                               
    array_choice = REFERENCE_HASH.to_a
    guess = rand(0..99)
    return array_choice[guess][0]
end

# The method that contains the logic around the user shooting process:
def user_fire
    puts "Enter the grid reference for your next shot:"

    target_grid =          ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10",
                            "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10"]

    shot_coordinate = gets.chomp.upcase

    while @user_previous_shots.include?(shot_coordinate) || !target_grid.include?(shot_coordinate)
        puts "Please check that #{shot_coordinate} is a valid grid reference. \nNote that you cannot shoot at the same grid reference twice. \nPlease try again."
        shot_coordinate = gets.chomp.upcase
    end

    @user_previous_shots.unshift(shot_coordinate)

    if $enemy_b_g[REFERENCE_HASH[shot_coordinate]] != " "
        puts "#{shot_coordinate} is a direct hit!"
        @user_score = @user_score + 1
        $hidden_enemy_b_g[REFERENCE_HASH[shot_coordinate]] = "X".colorize(:red)
    else
        puts "#{shot_coordinate} missed!"
        $hidden_enemy_b_g[REFERENCE_HASH[shot_coordinate]] = "O".colorize(:blue)
    end

    puts "Previous shots contains: #{@user_previous_shots}"

end

# The method that contains the logic around the computer shooting process:
def computer_fire

    target_grid =          ["A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
                            "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
                            "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
                            "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
                            "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
                            "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10",
                            "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10",
                            "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10",
                            "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10",
                            "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10"]

    shot_coordinate = rand_gr()

    while @computer_previous_shots.include?(shot_coordinate) || !target_grid.include?(shot_coordinate)
        shot_coordinate = rand_gr()
    end

    @computer_previous_shots.unshift(shot_coordinate)

    if  $b_g[REFERENCE_HASH[shot_coordinate]] != " "
        puts "You have been hit at #{shot_coordinate}!"
        @computer_score = @computer_score + 1
        $b_g[REFERENCE_HASH[shot_coordinate]] = "X".colorize(:red)
    else
        puts "Enemy shot missed"
        $b_g[REFERENCE_HASH[shot_coordinate]] = "O".colorize(:blue)
    end

end

