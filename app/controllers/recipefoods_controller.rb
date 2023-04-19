class RecipefoodsController < ApplicationController
  before_action :authenticate_user!

  def show
    @recipefood = Recipefood.find(params[:id])
    @recipe = @recipefood.recipe
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipefood = Recipefood.new
  end

  def create
    @recipefood = Recipefood.new(recipefood_params)
    @recipe = Recipe.find(params[:recipe_id])
    @recipefood.recipe = @recipe
    if @recipefood.save
      redirect_to user_recipe_path(@recipe.user, @recipe),
                  notice: 'Food was successfully added to recipe.'
    else
      render :new
    end
  end

  def edit
    @recipefood = Recipefood.find(params[:id])
    @recipe = @recipefood.recipe
  end

  def update
    @recipefood = Recipefood.find(params[:id])
    @recipe = @recipefood.recipe
    if @recipefood.update(recipefood_params)
      redirect_to user_recipe_path(@recipe.user, @recipe),
                  notice: 'Food was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recipefood = Recipefood.find(params[:id])
    @recipe = @recipefood.recipe
    @recipefood.destroy
    redirect_to user_recipe_path(@recipe.user, @recipe),
                notice: 'Food was successfully removed from recipe.'
  end

  private

  def recipefood_params
    params.require(:recipefood).permit(:quantity, :food_id, :recipe_id)
  end
end
