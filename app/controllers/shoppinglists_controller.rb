class ShoppinglistsController < ApplicationController
  before_action :authenticate_user!

  def show
    recipes = current_user.recipes.includes(recipefoods: :food)
    shoppinglist_raw = {}

    recipes.each do |recipe|
      recipe.recipefoods.each do |recipefood|
        food = recipefood.food
        if shoppinglist_raw[food.id]
          shoppinglist_raw[food.id][:quantity] += recipefood.quantity
        else
          shoppinglist_raw[food.id] = {
            food: food,
            quantity: recipefood.quantity
          }
        end
      end

      @shoppinglist = []
      update_shoppinglist(shoppinglist_raw)
    end
    @recipe = Recipe.find(params[:recipe_id])
  end

  private

  def update_shoppinglist(shoppinglist_raw)
    shoppinglist_raw.values.each do |recipefood|
      quantity = recipefood[:quantity] - recipefood[:food].quantity
      next unless quantity.positive?

      @shoppinglist << {
        food: recipefood[:food],
        quantity: quantity,
        price: recipefood[:food].price * quantity
      }
    end
  end
end
