class Food < ApplicationRecord
  has_many :recipefoods, foreign_key: 'food_id'
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :measurement_unit, presence: true
end
