require_relative 'view'

class Controller
    def initialize(cookbook)
        @cookbook = cookbook
        @view = View.new
    end

    def list
        display_recipes
    end

    def add
        # 1. ask user for the recipe name
        name = @view.ask_user_for('name')
        # 2. ask user for recipe description
        description = @view.ask_user_for('description')
        # 3. we create a recipe object
        recipe = Recipe.new(name, description)
        # 4. store it in the csv file
        @cookbook.create(recipe)
        # 5. display recipes
        display_recipes
    end

    def remove
        # 1. display all recipes
        display_recipes
        # 2. ask user for index to delete
        index = @view.ask_for_index
        # 3. remove from the cookbook
        @cookbook.destroy(index)
        # 4. display to check its gone
        display_recipes
    end

    private

    def display_recipes
        # 1. get recipes from the repo
        recipes = @cookbook.all
        # 2. display the recipes in the terminal using the view
        @view.display(recipes)
    end
end