require 'colorize'

class CliProject1::CLI
    def call
        puts "Welcome user"
        puts "to see API categories, enter 'category'"
        puts "If you want to exit, please enter 'exit'"
        Api.get_data
        menu
    end

    def menu
        input = gets.strip
        if input == "category"
           api_list
           menu
            
        elsif input == "exit"
           goodbye

        else 
            invalid_entry
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
        puts "Invaild entry, please try again"
    end

    def goodbye
        puts "Arrivederci! Programming Idividual."
        
    end
end