require 'artii'                         # Font GEM 
require 'colorize'                      # Font GEM
require 'colorized_string'    

require_relative "./view"               # Link to game View file
require_relative "./controller"         # Link to game Controller file


welcome_user
sleep(1.5)

create_grid_array

show_grid
p "This is the grid we will be using. Time to position your fleet!"

place_carrier                           # Method to manually place the carrier
place_destroyer
place_destroyer                         # Method to place destroyer - there are two in the game 
place_submarine         
place_minesweeper           
place_minesweeper