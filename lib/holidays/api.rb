
class Api
    def self.get_data
       
        response = HTTParty.get("https://holidayapi.com/v1/holidays?pretty&country=US&year=2019&key=a95369fa-fae5-4540-9036-4134a08c843d")
        list_array = JSON.parse(response.body)["results"]
        list_array.each do |item|
            Usa_holidays.new(item)
            binding.pry
        end
    end
    
end