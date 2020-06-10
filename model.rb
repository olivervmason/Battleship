require 'artii'                         # Font GEM 
require 'colorize'                      # Font GEM
require 'colorized_string'    
require "tty-prompt"                    # Gem to allow user to scroll through answer options

require_relative "./view"               # Link to game View file
require_relative "./controller"         # Link to game Controller file
         

welcome_user()
sleep(1.5)

# --------------------------------------------GAME SETUP-----------------------------------------------------

create_grid_arrays()

place_enemy_carrier()
place_enemy_destroyer()
place_enemy_destroyer()
place_enemy_submarine()         
place_enemy_minesweeper()           
place_enemy_minesweeper()

show_grid()
puts "This is the grid we will be using."

prompt = TTY::Prompt.new
decision = prompt.select("Do you want to position your ships or delegate the task?", %w(TakeCharge Delegate))

if decision == "TakeCharge"
    place_carrier()                           # Method to manually place the carrier
    place_destroyer()
    place_destroyer()                         # Method to place destroyer - there are two in the game 
    place_submarine()         
    place_minesweeper()           
    place_minesweeper()
elsif decision == "Delegate"
    auto_place_carrier()                           # Method to manually place the carrier
    auto_place_destroyer()
    auto_place_destroyer()                         # Method to place destroyer - there are two in the game 
    auto_place_submarine()         
    auto_place_minesweeper()           
    auto_place_minesweeper()
else  
    puts "Testing error"
end

show_grid()
puts "This is your Battle Group!"

sleep(1.5)

# # --------------------------------------------USER GAME PLAY-----------------------------------------------------

while @user_score <= 20
    show_enemy_grid                       # Left as a "cheat" feature and for testing purposes
    hidden_enemy_grid
    user_fire
    sleep(1.5)
    hidden_enemy_grid
    percentage_completion = @user_score * 5.to_f
    puts "Your score is #{@user_score}; a score 20 of is needed to win. #{percentage_completion}% complete"
    sleep(1.5)
end

while @computer_score < 20
    puts "Enemy fire incoming!"
    computer_fire()
    # sleep(1.5)
    show_grid()
    survival_score = 100 - (@computer_score * 5.to_f)
    puts "The enemy score is #{@computer_score}; #{survival_score}% of the Home fleet remains."
end

# # --------------------------------------------END OF GAME MESSAGE-------------------------------------------------

if @user_score > 20
    winning_message()
else
    losing_message()
end