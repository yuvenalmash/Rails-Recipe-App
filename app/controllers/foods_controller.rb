class FoodsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_food, only: %i[show destroy]
  before_action :set_user, only: %i[index new create destroy]

  def index
    @foods = @user.foods
  end

  def show; end

  def new
    @food = @user.foods.new
  end

  def create
    @food = @user.foods.new(food_params)
    if @food.save
      redirect_to user_food_path(@user, @food),
                  notice: 'Food was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @food.destroy
    redirect_to user_foods_path(@user),
                notice: 'Food was successfully destroyed.'
  end

  private

  def set_user
    @user = current_user
  end

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
