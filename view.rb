class View
    def display(recipes)
        recipes.each_with_index do |recipe, index|
            puts "#{index + 1} - #{recipe.name}: #{recipe.description}"
        end
    end

    def ask_user_for(something)
        puts "Enter #{something}:"
        return gets.chomp
    end

    def ask_for_index
        puts "Index?"
        return gets.chomp.to_i - 1
    end
end