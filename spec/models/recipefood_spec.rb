require 'rails_helper'

RSpec.describe Recipefood, type: :model do
  describe 'associations' do
    it 'belongs to recipe' do
      recipefood = Recipefood.reflect_on_association(:recipe)
      expect(recipefood.macro).to eq(:belongs_to)
    end

    it 'belongs to food' do
      recipefood = Recipefood.reflect_on_association(:food)
      expect(recipefood.macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do
    let(:recipefood) { FactoryBot.create(:recipefood) }

    it 'is valid with valid attributes' do
      expect(recipefood).to be_valid
    end

    it 'is not valid without a recipe' do
      recipefood.recipe = nil
      expect(recipefood).to_not be_valid
    end

    it 'is not valid without a food' do
      recipefood.food = nil
      expect(recipefood).to_not be_valid
    end

    it 'is not valid without a quantity' do
      recipefood.quantity = nil
      expect(recipefood).to_not be_valid
    end
  end
end
