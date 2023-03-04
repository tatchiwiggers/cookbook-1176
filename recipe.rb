class Recipe
    attr_reader :name, :description
    
    def initialize(name, description)
        @name = name
        @description = description
    end
end

# PSEUDO CODE

# 1. As a user i can list all recipes - DONE
# 2. As a user i can add a new recipe - DONE
# 3. As a user i can delete a recipe - DONE