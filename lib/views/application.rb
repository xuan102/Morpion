class Application

    def perform
        name = 0
        puts "name player1?"
        name = gets.chomp
        player1 = Player.new(name, "x")
        puts "name player2?"
        name = gets.chomp
        player2 = Player.new(name, "o")

        game = Game.new(player1, player2)

        while game.status == "en cours"
        system"clear"
        game.turn 
        end


    end
end