require 'pry'
 
class Show

    def show_board(board)
      puts 'Entrer le numero de la case:'
      puts ' ┌───┬───┬───┐'
      puts "A│ #{board.cells[0].value} │ #{board.cells[1].value} │ #{board.cells[2].value} │"
      puts ' ├───┼───┼───┤'
      puts "B│ #{board.cells[3].value} │ #{board.cells[4].value} │ #{board.cells[5].value} │"
      puts ' ├───┼───┼───┤'
      puts "C│ #{board.cells[6].value} │ #{board.cells[7].value} │ #{board.cells[8].value} │"
      puts ' └───┴───┴───┘'
      puts '   1   2   3'
    end
  end
