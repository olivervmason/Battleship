require 'artii'                         # This is a font GEM to print large text made out of special characters. 
require 'colorize'                      # This is a GEM to add colour to the fonts.
require "tty-prompt"                    # This GEM allows the user to scroll through answer options (e.g. manual or auto fleet placement)

require_relative "./view"               # Link to game View file
require_relative "./controller"         # Link to game Controller file
         
welcome_user()
sleep(2.5)

# --------------------------------------------GAME SETUP-----------------------------------------------------

create_grid_arrays()                    # Method to create the variables that are contained in the grids of the view file
                                       
place_enemy_carrier()                   # This section automatically places the enemy fleet
place_enemy_destroyer()
place_enemy_destroyer()
place_enemy_submarine()         
place_enemy_minesweeper()           
place_enemy_minesweeper()

show_grid()                                 # User is introduced to the grid and asked if they want to manually place fleet.
puts "This is the grid we will be using."

prompt = TTY::Prompt.new
decision = prompt.select("Do you want to position your ships or delegate the task?", %w(TakeCharge Delegate))

if decision == "TakeCharge"                 
    place_carrier()                           # Methods to manually place the ships - note there are two of some types.
    place_destroyer()
    place_destroyer()                         
    place_submarine()         
    place_minesweeper()           
    place_minesweeper()
elsif decision == "Delegate"
    auto_place_carrier()                      # Methods to manually place the ships - note there are two of some types.
    auto_place_destroyer()
    auto_place_destroyer()                         
    auto_place_submarine()         
    auto_place_minesweeper()           
    auto_place_minesweeper()
else  
    puts "Testing error"
end

show_grid()                                    # Shows final result of ship placement
puts "This is your Battle Group!"

sleep(2.5)

# # --------------------------------------------USER GAME PLAY-----------------------------------------------------

while @user_score <= 20 && @computer_score <= 20        # Main loop determines when game has been won

    # User shoot sequence:

    show_enemy_grid                       # Left as a "cheat" feature; originally for testing purposes
    hidden_enemy_grid
    user_fire
    sleep(2.5)
    hidden_enemy_grid
    percentage_completion = @user_score * 5.to_f
    puts "Your score is #{@user_score}; a score 20 of is needed to win. #{percentage_completion}% complete"
    sleep(2.5)

    # Computer shoot sequence:

    clear_terminal()
    puts "Enemy fire incoming!"
    computer_fire()
    sleep(2.5)
    show_grid()
    puts "This is the current state of your fleet."
    sleep(2.5)
    survival_score = 100 - (@computer_score * 5.to_f)
    puts "The enemy score is #{@computer_score}; #{survival_score}% of the Home fleet remains."
end

# # --------------------------------------------END OF GAME MESSAGE-------------------------------------------------

if @user_score > 20
    winning_message()
else
    losing_message()
end