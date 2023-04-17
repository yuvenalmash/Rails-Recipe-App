class User < ApplicationRecord
  has_many :foods, foreign_key: "users_id"
  has_many :recipes, foreign_key: "users_id"
  validates :name, presence: true
end
