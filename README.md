# Save the Parachutists Game (Coding Challenge)
An airplane is flying above the sea and dropping parachutists from time to time.

In the water there is a boat awaiting for the parachutists. 

The goal of the game is to save the parachutists from falling into the water by moving the boat left and right.

## Assumptions
* The boat is moving using the keyboard
* Game starts with 3 lives
* If the parachutist land on the boat, the user gets 10 points
* If the parachutist land in the sea, the user looses 1 live
* Parachutists are droppend randomly and weighted (see globals)
* There can be more than one parachutist at the air at a given, and the number of maximun parachutists in the air is defined (see globals)

## Repository contains the following
* Graphics - holds all graphic elements displayed and its functionality 
* Images - all files provided for display
* Lib - contains global file for now, to hold all global constants
* Managers - contains game manager file, which responsible for board movements and score/live updates
* Game - main ruby file to run, which contains the main while loop to play the game

## Install
1. Make sure you have installed [ruby2d](https://github.com/ruby2d/ruby2d)
```
gem install ruby2d
```
2. Clone the source code 
```
git clone https://github.com/buchman-danielle/save_the_parachutists.git
```
## Play
Run in your console
```
cd save_the_parachutists
ruby game.rb
```
