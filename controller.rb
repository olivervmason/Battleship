require_relative "./user_grid_controller"
require_relative "./auto_grid_controller"
require_relative "./reference_hash"   

def welcome_user
    a = Artii::Base.new
    puts a.asciify('BATTLESHIP!')
end

def clear_terminal()                        # This code pushes everything above the last grid printed out of user view
    puts "\e[H\e[2J"
end

def create_grid_arrays                        
    $b_g = Array.new(101, " ")             # This creates the values 1-100 that correspond to the gridsquares. Position 0 is deliberately redundant.
    $enemy_b_g = Array.new(101, " ")       # This creates values for the enemy fleet gridsquares. 
end