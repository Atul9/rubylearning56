=begin

Exercise3: Here are the program specifications for a simple game to be played against the computer:

This game is played at the command-line.
The game starts when the computer selects three consecutive cells in a 7 cell
row (from 0 to 6). When that's complete, the game asks for your first guess.
Guess the computer's selected cells in the smallest number of guesses. You are
given a rating or level, based on how well you perform.
At the command line, the user types in a number from 0 to 6. The computer
checks if it's one of the selected cells. If it's a hit, increment the
no_of_hits
variable. In response to your guess, you'll see a result at the command-line:
either "Hit", "Miss" or "End".
When you have guessed all three cells, the game ends by printing out your
rating (your number of guesses).
Notes:

Use only the features we have learned so far, in Ruby.
You must design the
Object::GameBoard
class.
The testgameboard.rb program uses your GameBoard class
Test code (client code) can be installed from the RLCoreKickstart gem by issuing the command

gem install RLCoreKickstart
If you have previously installed this gem to generate your folder structure, you should be all set.
If you have not generated your course files using the RLCoreKickstart gem, then
we will have to make a special folder structure to get this tool to find your
gameboard file, and thus, your Gameboard class.

mkdir 5_week/3e_gameboard.rb
You will then edit that file, creating your Gameboard class. When you run

testgameboard
you will then need to run it from your root folder.
This means, for me, I will be in a folder

/home/vgoff/RL/57batch/Victor
That folder should have 5_week as a subfolder, and then the 3e_gameboard.rb file in that folder.

I can simply run

testgameboard
and it will find my class and I will be able to play the game.
To view the

testgameboard
file itself, run
testgameboard -show
=end
class GameBoard
  def location_cells(location)
    @location = location
  end

  def check_guess(guess)
    @guess = guess.to_i
    puts guess_result = hit_or_miss
    if guess_result == "hit"
      remove_target
    end
    finished?
  end
  private
  def hit_or_miss
    @locations.include?(@guess) ? "hit" : "miss"
  end

  def remove_target
    @locations.delete @guess
  end

  def finished?
     if @locations.empty?
       puts "End"
     end
  end
end
