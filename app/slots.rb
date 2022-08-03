class Slots
    def slots
        first = rand(1..20)
        second = rand(1..20)
        third = rand(1..20)



        puts "Your numbers are ---------------"
        puts first, second , third
        puts "--------------------------------"

        if 
            first == second && second == third
            puts "YOU WIN"
        else
            puts "YOUR A LOSER"
        end
    end
end