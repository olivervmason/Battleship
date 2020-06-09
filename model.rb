require 'artii'                         # Font GEM 
require 'colorize'                      # Font GEM
require 'colorized_string'    

require_relative "./view"               # Link to game View file
require_relative "./controller"         # Link to game Controller file
         

welcome_user
sleep(1.5)

create_grid_arrays

show_grid
p "This is the grid we will be using. Time to position your fleet!"


place_carrier                           # Method to manually place the carrier
place_destroyer
place_destroyer                         # Method to place destroyer - there are two in the game 
place_submarine         
place_minesweeper           
place_minesweeper

sleep(1.5)

place_enemy_carrier
place_enemy_destroyer
place_enemy_destroyer
place_enemy_submarine         
place_enemy_minesweeper           
place_enemy_minesweeper

show_enemy_grid()