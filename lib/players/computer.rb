require 'pry'
module Players
  class Computer < Player

      def move(board)
        # center = board.cells[4]
        # corners = [board.cells[0],board.cells[2],board.cells[6],board.cells[8]]
        # edges = [board.cells[1],board.cells[3],board.cells[5],board.cells[7]]
        # other_player = @token == "X" ? "O" : "X"
        # corner_play = ["1","3","7","9"]
        # edges_play = ["2","4","6","8"]
        #binding.pry
        # choice unless !!board.valid_move?(choice)
        # while choice !board.valid_move?(choice)
        #   choice
        if board.turn_count == 0 || 1 &&  board.valid_move?("1")
           "1"
       elsif board.turn_count == 0 || 1 &&  board.valid_move?("5")
            "5"
       elsif board.turn_count == 2 && board.valid_move?("3")
            "3"
       elsif board.turn_count == 2 && board.valid_move?("7")
            "7"
       elsif board.turn_count >= 3
          best_moves(board)
       end
   end
       def best_moves(board)
           move = ""
       Game::WIN_COMBINATIONS.each do |win_combo|
         index_1 = win_combo[0]
         index_2 = win_combo[1]
         index_3 = win_combo[2]
#binding.pry

         move_option_1 = board.cells[index_1]
         move_option_2 = board.cells[index_2]
         move_option_3 = board.cells[index_3]

         if move_option_1 == move_option_2 && move_option_1 == @token #&& move_option_3 == " "
           move = move_option_3

         elsif
           move_option_1 == move_option_3 && move_option_1 == @token #&& move_option_2 == " "
             move = move_option_2
          elsif
            move_option_2 == move_option_3 && move_option_1 == @token #&& move_option_1 == " "
              move = move_option_1
          end
          move
        end
        move
      end
          #  binding.pry
      #  elsif corners.include?(" ")
        # elsif corners[0] ==  @token
        #     "9"
        # elsif corners[1] ==  @token
        #     "7"
        # elsif corners[2] ==  @token
        #      "3"
        # elsif corners[3] ==  @token
        #      "1"
        #   elsif corners.include?(" ")
        #       corner_play.sample
        # elsif board.cells[0] == other_player && board.cells[2] == other_player
        #       "2"
        #       #binding.pry
        # elsif board.cells[0] ==  other_player && board.cells[6] == other_player
        #     "4"
        # elsif board.cells[6] ==  other_player && board.cells[8] == other_player
        #    "8"
        # elsif board.cells[2] ==  other_player && board.cells[8] == other_player
        #     "6"
              #"9"
            # else
            #    corners[0] == other_player && corners[8] != @token
          #  ["1","3","7","9"].sample
        #  elsif corners.include?(" ")
        #    ["1","3","7","9"].sample
      # elsif
      #   corner_play.sample = move
      #
      #     else
      #       ["2","4","6","8"].sample
      #   end
     #end
      #  def choice
      #    if @center == " "
      #        "5"
      #      elsif @corners.include?(" ")
      #        ["1","3","7","9"].sample
      #      else
      #        ["2","4","6","7"].sample
      #        binding.pry
      #    end

   end
end
