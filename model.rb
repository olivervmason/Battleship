require 'artii'                         # Font GEM 
require 'colorize'                      # Font GEM
require 'colorized_string'    

require_relative "./view"               # Link to game View file
require_relative "./controller"         # Link to game Controller file
         

welcome_user
sleep(1.5)

# --------------------------------------------GAME SETUP-----------------------------------------------------

create_grid_arrays

# show_grid
# p "This is the grid we will be using. Time to position your fleet!"


# place_carrier                           # Method to manually place the carrier
# place_destroyer
# place_destroyer                         # Method to place destroyer - there are two in the game 
# place_submarine         
# place_minesweeper           
# place_minesweeper

# sleep(1.5)

place_enemy_carrier
place_enemy_destroyer
place_enemy_destroyer
place_enemy_submarine         
place_enemy_minesweeper           
place_enemy_minesweeper

# --------------------------------------------USER GAME PLAY-----------------------------------------------------

while @user_score < 21
    show_enemy_grid                       # Left as a "cheat" feature and for testing purposes
    hidden_enemy_grid
    user_fire
    sleep(1.5)
    hidden_enemy_grid
    percentage_completion = @user_score * 5.to_f
    puts "Your score is #{@user_score}; a score 20 of is needed to win. #{percentage_completion}% complete"
    sleep(1.5)
end

if @user_score > 20
    winning_message
else
    losing_message
end