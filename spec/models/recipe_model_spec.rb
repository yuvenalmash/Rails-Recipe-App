require 'rails_helper'
RSpec.describe User, type: :model do
  before :each do
    @user = User.new(id: 1, name: 'mudasir', email: 'mudasir@gmail.com', password: '123456')
    @food = Food.new(id: 1, user: @user, price: 1, quantity: 1, name: 'Chicken Rice', measurement_unit: 1)
    @recipe = Recipe.new(id: 1, user: @user, cooking_time: 1.75, name: 'Rice and Beans', preparation_time: 2,
                         description: 'This is the best meal ever')
  end

  it 'name must not be blank' do
    @recipe.name = 'Rice and Beans'
    expect(@recipe).to be_valid
  end

  it 'recipe bio to match' do
    @recipe.cooking_time = 1.75
    expect(@recipe).to be_valid
  end

  it 'Check if preparation_time is an integer' do
    @recipe.preparation_time = 2
    expect(@recipe).to be_valid
  end

  it 'Check if cooking_time is an integer' do
    @recipe.cooking_time = 1
    expect(@recipe).to be_valid
  end
  it 'Check if quantity is an integer' do
    @food.quantity = 1
    expect(@food).to be_valid
  end
  it 'Check if measurement_unit is an integer' do
    @food.measurement_unit = 1
    expect(@food).to be_valid
  end
end
