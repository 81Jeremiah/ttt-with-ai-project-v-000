require 'pry'
module Players
  class Computer < Player

      def move(board)
        # center = board.cells[4]
        # corners = [board.cells[0],board.cells[2],board.cells[6],board.cells[8]]
        # edges = [board.cells[1],board.cells[3],board.cells[5],board.cells[7]]
        # other_player = @token == "X" ? "O" : "X"
         corner_play = ["1","3","7","9"]
         all_moves = ["1","2","3","4","5","6","7","8","9"]
        # edges_play = ["2","4","6","8"]
        #binding.pry
        # choice unless !!board.valid_move?(choice)
        # while choice !board.valid_move?(choice)
        #   choice
        move = ""
        if board.cells[4] == " "
          move = "5"
        elsif board.turn_count == 1
          move = corner_play.sample
        elsif board.turn_count ==  2
          move =corner_play.detect{|move| !board.taken?(move)}
        elsif board.turn_count == 3 && (board.position(1) == board.position(9) || board.position(3) == board.position(7))
            move =corner_play.detect{|move| !board.taken?(move)}
       else
          Game::WIN_COMBINATIONS.each do |win_combo|
            if  win_combo.select{ |i| board.position(i+1) == token}.size == 2 && win_combo.any?{|i| board.position(i+1) == " "}
               move = win_combo.select{|i| !board.taken?(i+1)}.first.to_i.+(1)
            elsif win_combo.select{|i| board.position(i+1) != " " && board.position(i+1) != token}.size == 2 && win_combo.any?{|i| board.position(i+1) == " "}
              move = win_combo.select{|i| !board.taken?(i+1)}.first.to_i.+(1)
             end
          end
          move = all_moves.detect{|i| !board.taken?(i)} if move == ""
      end
            move
  #      elsif board.turn_count == 2 && board.valid_move?("7")
  #           "7"
  #      elsif board.turn_count >= 3
  #         best_moves(board)
  #       else
  #         corner_play.sample
  #      end
  #  end
  #      def best_moves(board)
  #          move = ""

#        Game::WIN_COMBINATIONS.each do |win_combo|
#          index_1 = win_combo[0]
#          index_2 = win_combo[1]
#          index_3 = win_combo[2]
# #binding.pry
#
#          move_option_1 = board.cells[index_1]
#          move_option_2 = board.cells[index_2]
#          move_option_3 = board.cells[index_3]
#
#          if move_option_1 == move_option_2 && move_option_1 #== @token #&& move_option_3 == " "
#            move = move_option_3
#
#          elsif
#            move_option_1 == move_option_3 && move_option_1 #== @token #&& move_option_2 == " "
#              move = move_option_2
#           elsif
#             move_option_2 == move_option_3 && move_option_1 #== @token #&& move_option_1 == " "
#               move = move_option_1
#           end
#           binding.pry
#           #move
#         end
#         move
#       end
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
end
