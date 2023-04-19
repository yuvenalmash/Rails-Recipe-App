class PublicrecipesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end
end
