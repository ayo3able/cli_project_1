class Api
    def self.get_data
        response = RestClient.get(https://github.com/davemachado/public-api)
        list_array = JSON.parse(response.body)["results"]
        list_array.each do |item|
            Public_apis.new(item)
        end
    end
end