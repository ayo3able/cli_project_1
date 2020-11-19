require 'colorize'

class CliProject1::CLI

    attr_accessor :api
    def call
        puts "Welcome, To U.S.A Holidays!
        ".colorize(:green)
        puts "To see U.S.A Holiday's by month:" + ' holiday
        '.colorize(:blue)
        
        puts "If you want to exit, please enter:" + ' exit'.colorize(:red)
        Api.get_data
        menu
    end

    def menu
        input = gets.strip
        if input == "Holiday"
           api_list
           menu
            
        elsif input == "exit"
           goodbye

        else 
            invalid_entry.colorize
        end
    end

    def api_list
        Public_apis.all.each_with_index do |api, index|
        puts "#{index + 1}." "#{api.name}"
        end
        puts ""
        puts "Which API category would you like details about?"
        input = gets.strip.downcase
        category_selection(input)

    end
    #Public_apis.all == 45 api categories

    def category_selection(category)
        category = Public_apis.find_by_name(category)
        #goes over list item array . find method to find item

        
    end

    def invalid_entry
        puts "Invaild entry, please try again".colorize(:red)
    end

    def goodbye
        puts "Goodbye and Happy Holidays"
        
    end
end