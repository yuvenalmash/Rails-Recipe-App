require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires name' do
      user = User.new(email: 'example@example.com', password: 'password')
      expect(user).to_not be_valid
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'requires email' do
      user = User.new(name: 'example', password: 'password')
      expect(user).to_not be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'requires password' do
      user = User.new(name: 'example', email: 'example@example.com')
      expect(user).to_not be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
  describe 'associations' do
    it 'should have many foods' do
      association = described_class.reflect_on_association(:foods)
      expect(association.macro).to eq :has_many
      expect(association.options[:foreign_key]).to eq 'user_id'
    end

    it 'should have many recipes' do
      association = described_class.reflect_on_association(:recipes)
      expect(association.macro).to eq :has_many
      expect(association.options[:foreign_key]).to eq 'user_id'
    end
  end
end
