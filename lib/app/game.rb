class Game
attr_accessor :current_player, :status, :player, :board

def initialize (player1, player2)
    @player = []
    @player << player1
    @player << player2

    @status = "en cours"

    @current_player = @player[0]

    @board = Board.new
end

def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    Show.new.show_board(@board)

    @board.play_turn(@current_player)
  
    if @current_player == @player[0]
      @current_player = @player[1]
    else
      @current_player = @player[0]
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end


