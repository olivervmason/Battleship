<p>The text below the line is documentation from the submitted bootcamp project, which was completed over 3 days within the first 3 weeks of learning to code.

The progress to that point has been archived in a separate branch. It is my intention to continue developing it during the break periods to:

- Complete the full range of functionality;
- To ¨DRY up" the code;
- To implement it in the MVC model.</p>

<hr>
<!------------------------------------------------------------------ -->

<h3>Terminal Ruby Battleship game</h3>  <br>

The source control repository is located at: https://github.com/olivervmason/Battleship


### **Software Development Plan**

#### What the application is designed to do <br>
The purpose of the application is to allow a user to play the classic "Battleship" game against their computer using the terminal. 
Each "player" has a grid where they position their home fleet (in this case composed of a Carrier (5 grid squares long), two Destroyers (4 squares each), a Submarine (3 squares), and two Minesweepers (2 squares each). 

The user and computer take it in turns to "fire" at one anothers grid by calling out an alphanumeric grid reference and receiving feedback on whether the shot was a hit or a miss.
The first player to hit every square occupied by enemy ships is is the winner.

#### Scope of application:
The desired functionality is a working game which can be played for entertainment. As such it does not aim to solve any problem and has no realistic target audience beyond students interested in building and developing the game.

The design process will need to factor in the following elements:
- The creation of a visually appealing board on which the game can be played;
- A process to interact with the user in order for them to be able to strategically place their ships on the board. This will be done by keying in a grid reference (A-I, and 1-10);
- A process to automate the ship placement for the computers board;
- A process for each user to be able to "fire" at the other board;
- A process to display shots fired and the outcome;
- A process to check after each play whether that player has won.

More advanced features could include:
- Creating a score counter
- Making the game in to a series, e.g. best of 3 or 5 games
- A more advanced feature to teach the computer to predict where the remainder of a ship is most likely to be after scoring a hit;
- Incorporating visual or sound effects upon scoring a hit.


### Main features developed:

The **first feature** is a login which requires the user to enter their name and a password. The terminal will then greet them. Failure to enter the password correctly will result in a flashing error message saying "Access Denied".

The **second feature** is the ability of the user to interact with the computer to position their own fleet, and display the result on an alphanumeric grid. The user does this by specifying i) whether the ship will be placed horizontally or vertically, and ii) the first grid reference the ship will occupy. <br>

The challenges and solutions presented in developing this feature are summarised below:

_Challenge:_ The method used to display the grid involves a string of special characters to "draw" the grid, with variables interpolated within the grid squares. As the grid is 10 x 10, the variables will be named 1-100. However, the user grid needs to be referenced A1 to J10 - hence a means of converting the input is required.

_Solution:_ A hash will be needed to map the alphanumeric reference to the number used to name each variable. 

_Challenge:_ For ship placement it is necessary to be able to define the grid shape in terms of the variables - to keep the ships within the grid and in their proper shape, whichever way they are orientated.

_Solution:_ By naming the squares 1-100, and placing them on a 10 x 10 grid, the edges will be from 1-10 on one axis and from 10 to 100 (in increments of 10) on the other axis. So, given the starting grid reference for a ship, the remaining grid references will be increments of 1 or 10. Based on the conditions of ship size and orientation, the grid squares available can be put in a "white list" or permissable entries held in an array.

_Challenge:_ Also for error checking, it is necessary to be able to define the position of other ships in terms of the variables on the grid. In addition, if the user is required to give another position, that will need to be checked against the grid boundaries first.

_Solution:_ Some form of loop will be needed to force the user to provide a grid reference that is valid. This will force the user to select a grid square where that square and the squares to the right or underneath it are within the grid and blank.

The **third feature** is for the computer to automatically generate the ship positions of its fleet without user interaction. The rules for error checking and placement are the same as those imposed on the user. This feature will also be required for the computer to fire shots at the user's board. 

**Challenge:** A means of generating a random alphanumeric reference is needed. A random number generator exists in Ruby, so a method is needed to convert a number to a grid reference which is the required input.

_Solution:_ The hash mapping grid references to the variables on the grid can be converted in to an array. Then the random number generator can be used to return the value that was the key in the hash.



### Outline of user experience/interaction

The user will interact with the computer by typing alphanumeric grid references. The grid will be displayed to the user at all times.

Errors will be communicated to the user specifying the possible reasons for the error (e.g. 

### A diagram of the flow process has been included.


### Implementation plan

The Github project management feature was used to identify and track project tasks that needed to be done. Screenshots of these at different points have been included in the submission folder.

Priority is given to core functionality and keeping it error free. 

### User documentation

- This application works best on a terminal with a **dark theme**.
- The user must ensure that Ruby has been properly installed on their computer.
- The terminal requires the use of the Ruby Gem "**Colorize**".

To run the application download the .rb file to a suitable location and navigate to it using the terminal; then run it using the command "ruby filename.rb"

The program will prompt the user for all necessary inputs and include the guidance necessary to avoid errors.

