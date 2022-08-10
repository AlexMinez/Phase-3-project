require 'uri'
require 'net/http'
require 'json'


class AgeApi

  attr_accessor :name

def initialize(name)
    @name=name
end
   
    URL = "https://api.agify.io/?name=#{@name}"
    def getData
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body

    end
  
   
    def grabData
        programs = JSON.parse(self.getData)
        programs.collect do |name|
            name
        end
    end

end