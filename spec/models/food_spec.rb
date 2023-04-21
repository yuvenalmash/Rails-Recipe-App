require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'associations' do
    it 'belongs to user' do
      food = Food.reflect_on_association(:user)
      expect(food.macro).to eq(:belongs_to)
    end

    it 'has many recipefoods' do
      food = Food.reflect_on_association(:recipefoods)
      expect(food.macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    let(:food) { FactoryBot.create(:food) }

    it 'is valid with valid attributes' do
      expect(food).to be_valid
    end

    it 'is not valid without a name' do
      food.name = nil
      expect(food).to_not be_valid
    end

    it 'is not valid without a price' do
      food.price = nil
      expect(food).to_not be_valid
    end

    it 'is not valid without a quantity' do
      food.quantity = nil
      expect(food).to_not be_valid
    end

    it 'is not valid without a measurement_unit' do
      food.measurement_unit = nil
      expect(food).to_not be_valid
    end
  end
end
