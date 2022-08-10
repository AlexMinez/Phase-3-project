class Slots
    def slots
        first = rand(1..20)
        second = rand(1..20)
        third = rand(1..20)

        # first = rand(1..1)
        # second = rand(1..1)
        # third = rand(1..1)




        puts "Your numbers are ---------------|"
        sleep 2 and puts "--------#{first}----#{second}----#{third}-----------|"
        puts "--------------------------------|"

        if 
            first == second && second == third
            puts "YOU WIN THE JACKPOT!!!!"
            puts "Please enter your name."
            log_result = gets.strip
            winner = User.new(name: log_result)
            winner.save
            puts "congratulations to the winner #{log_result} you have been saved to the database as a winner!"
            
        elsif 
            first == second || second == third || first == third
            puts "YOU WIN $10"
            
        else
            puts "YOU LOST :("
        end
    end
end