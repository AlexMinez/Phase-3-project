class CLI


    @@age_input = ""

    def initialize
        puts "Welcome to my CLI App"
        continue = 'yes'
        while continue == "yes"
            puts "What would you like to do?"
            puts "1.Slots game."
            puts "2.See jackpot winners!"
            puts "3.Let me guess your age!."

            input = gets.strip

            if input == "1"
                startSlots
            elsif input == "2"
                getWinners
            elsif input == "3"
                CLI.ageData
            else
                puts "Invalid :Please select 1,2 or 3"
            end
            puts "Do you want to continue (yes/no) ?"
            continue = gets.strip
        end
    end

    def startSlots
        result = Slots.new.slots
        puts result
    end

    def self.ageData
        puts "Type your name"
        grabName = gets.strip
        @@age_input << grabName
        result = AgeApi.new.grabData(@@age_input)
        puts result
        @@age_input = ""
    end



    def getWinners
        puts "What would you like to do ?"
        puts "1. Amount of Jackpots."
        puts "2. The latest Jackpot Winner."
        input = gets.strip

        if input == "1"
       puts User.count
        elsif input == "2"
            puts User.last.name
        else
          puts  "Error Please select 1 or 2."
        end
    end
end