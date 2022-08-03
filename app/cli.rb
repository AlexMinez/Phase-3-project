class CLI
    def initialize
        puts "Welcome to my CLI App"
        continue = 'yes'
        while continue == "yes"
            puts "What would you like to do?"
            puts "1.Slots game"
            puts "2.User"

            input = gets.strip

            if input == "1"
                startCalculator
            else
                getUser
            end
            puts "Do you want to continue (yes/no) ?"
            continue = gets.strip
        end
    end

    def startCalculator
        result = Slots.new.slots
        puts result
    end

    def getUser

    end

end