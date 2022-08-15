require 'uri'
require 'net/http'
require 'json'


class AgeApi

    
    def getData(data)
        uri = URI.parse("https://api.agify.io/?name=#{data}")
        response = Net::HTTP.get_response(uri)
        response.body
    end
  
   
    def grabData(data)
        programs = JSON.parse(self.getData(data))
        programs.collect do |k , v|
            puts "#{k} = #{v}"
        end
    end

end