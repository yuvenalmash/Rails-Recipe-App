class ShoppinglistsController < ApplicationController
  before_action :authenticate_user!

  def show
    user = current_user
    recipes = user.recipes.includes(recipefoods: :food)
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
      shoppinglist_raw.values.each do |recipefood|
        quantity = recipefood[:quantity] - recipefood[:food].quantity
        if quantity > 0
          @shoppinglist << {
            food: recipefood[:food],
            quantity: quantity,
            price: recipefood[:food].price * quantity
          }
        end
      end

      @shoppinglist_count = @shoppinglist.count
      @shoppinglist_price = @shoppinglist.sum { |item| item[:price] }
    end
    @recipe = Recipe.find(params[:id])
  end
end
