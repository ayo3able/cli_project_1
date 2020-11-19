class Usa_holidays
    attr_accessor :name, :category
    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end 
        save
    end

    def save
        @@all << self
        
    end

    def self.all
        @@all
        
    end

    def self.find_by_name(name)
        self.all.select do |holiday|
            holiday.name == name
        end
        
    end
end