class Board
    attr_accessor :cells, :count_turn

     #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    def initialize
        @cells = []
        @cells << BoardCase.new("A1")
        @cells << BoardCase.new("A2")
        @cells << BoardCase.new("A3")
        @cells << BoardCase.new("B1")
        @cells << BoardCase.new("B2")
        @cells << BoardCase.new("B3")
        @cells << BoardCase.new("C1")
        @cells << BoardCase.new("C2")
        @cells << BoardCase.new("C3")
    end


    def play_turn(player)
    puts "#{player.name} Ou veux-tu placer?"
    puts "Pour te placer ecrit la coordonnee que tu souhaites, par exemple A1"
    play = gets.chomp.to_s
    #es ce que la valeur de play est egale a la valeur dune case du tableau ?
    # si oui
    # remplacer la valeur de la case par le symbole du joueur
    @cells.each do |cell|
        if cell.id == play && cell.value == " "
            cell.value = player.value
        end
    end
    end
    
    def victory?

    end
end
