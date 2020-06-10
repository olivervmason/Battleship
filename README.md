<h3>Terminal Ruby Battleship game</h3> 

#### Application requirements <br>

The application was built on ruby version 2.7.0, and requires the following GEMs:

- artii
- colorize
- tty-prompt

The application works best on a dark theme.

#### Instructions <br>

To run the application:
- Check installation of Ruby and the GEMs listed above;
- Download the folder to a suitable location and navigate to it in the terminal; 
- To run the game excute the command "ruby model.rb"

The program will prompt the user for all necessary inputs and include the guidance necessary to avoid errors.

#### Application history <br>

The foundations for the project were completed during a coding bootcamp, and hacked together over 3 days at a point when I had only been coding for 3 weeks.

The progress to that point was limited to setting the grids and has been archived in a separate branch. Much of this unelegant code was integrated unchanged in to the final result. 

This is now a fully functional terminal game.

#### File structure <br>

The code base is divided in to seven files. 

- model.rb (This is the file that needs to be exectuted to run the game and contains the core logic sequence)
- view.rb (This file contains the different grids displayed to the user)
- controller.rb (This is the 'main' controller for all the methods not connected with setting up the grid)
- reference_hash.rb (This file contains a hash converting a numeric range of 1-100 in to an alphanumeric of A1 to J10.)

Three of the files relate purely to setting up the grid:

- user_grid_controller (Method to manually set the home fleet position)
- auto_grid_controller (Method to set the Enemy fleet)
- a_user_controller (Method to automatically set the user grid position)

#### What the application is designed to do <br>

The purpose of the application is to allow a user to play the classic "Battleship" game against their computer using the terminal. 

Each "player" has a grid where they position their home fleet (in this case composed of a Carrier (5 grid squares long), two Destroyers (4 squares each), a Submarine (3 squares), and two Minesweepers (2 squares each). 

The user and computer take it in turns to "fire" at one anothers grid by calling out an alphanumeric grid reference and receiving feedback on whether the shot was a hit or a miss.

The winner is the first to score 20 hits (i.e. sink the entire opposition fleet).

<hr>
<!----------------------------------------------------->



#### Features

The app includes the following elements:
- The creation of a visually appealing board on which the game can be played;
- A process to interact with the user in order for them to be able to strategically place their ships on the board by keying in a grid reference (A-I, and 1-10);
- The choice for the user to have their ships automatically placed, without overlapping or going off the board edge.
- A process to automate the ship placement for the enemy fleet;
- A process for each user to be able to "fire" at their opponent;
- A process to display shots fired and the outcome;
- A process to check after each play whether that player has won, and if not to display the relevant stats.


#### Limitations

- Using a terminal application inherently limits the functionality, especially with respect to graphics.
- Whilst the game is fully functional, the computer is not smart when it comes to shooting, i.e. every shot is random and it will not follow up a hit with a shot at an adjacent square. 
