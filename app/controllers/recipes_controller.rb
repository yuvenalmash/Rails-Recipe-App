class RecipesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @recipes = @user.recipes
  end

  def show
    @recipe = Recipe.includes(:recipefoods).find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      flash[:notice] = 'Recipe added successfully'
      redirect_to user_recipes_path(user_id: current_user.id)
    else
      flash.now[:error] = 'Error: Creating Recipe'
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    if @recipe.destroy
      redirect_to user_recipes_path(user_id: current_user.id)
    else
      render :new
    end
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :public, :description, :cooking_time)
  end
end
