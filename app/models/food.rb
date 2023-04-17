class Food < ApplicationRecord
  has_many :recipefoods, foreign_key: 'food_id'
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
