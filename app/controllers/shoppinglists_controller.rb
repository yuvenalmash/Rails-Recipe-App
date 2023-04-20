class ShoppinglistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: %i[show]

  def show
    @recipefoods = @recipe.recipefoods
    @recipefoods_count = @recipefoods.count
    @total_price =
      @recipefoods
        .map { |recipefood| recipefood.food.price * recipefood.quantity }
        .sum
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
