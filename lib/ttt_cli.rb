class TTT_CLI
  def initialize
  end

  def start
    input = ' '
     puts "Welcome to Tic-Tac-Toe!"
     puts "How many players?(0,1,2)"
      #  Please make a selection from bellow using your keybord:\n
      #    Changes your mind? Please type 'exit'\n
      #    Enter 1 to Play vs. the Unbeatable Machine!!!!\n
      #    Enter 2 to Play with a Friend\n
      #    Enter 3 for AI vs. AI\n"

     input = gets.strip

     case input
     when '1'
       single_player
     when '2'
       Game.new(Players::Human.new('X'), Players::Human.new('O'), Board.new).play
       play_again?
     when '0'
       Game.new(Players::Computer.new('X'), Players::Computer.new('O'), Board.new).play
       play_again?
      end
      #play_again?
   end

 def single_player
    puts "Would you like to go first\n Y/N"
     if gets.strip.downcase == 'y'
       Game.new(Players::Human.new('X'), Players::Computer.new('O'), Board.new).play
    else
      Game.new(Players::Computer.new('X'), Players::Human.new('O'), Board.new).play
    end
    play_again?
  end

  def play_again?
    puts "Would you like to play again? Y/N"
      input = gets.strip.downcase
      if input == 'y'
        start
      else
       puts "Good game! Goodbye"
      end
    end
  end
