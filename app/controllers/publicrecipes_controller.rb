class PublicrecipesController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @recipes =
      Recipe.includes(:user).where(public: true).order(created_at: :desc)
  end
end
