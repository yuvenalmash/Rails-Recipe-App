class CreateRecipefoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipefoods do |t|
      t.integer :quantity
      t.belongs_to :recipe, null: false, foreign_key: { to_table: :recipes }
      t.belongs_to :food, null: false, foreign_key: { to_table: :foods }
      t.timestamps
    end
  end
end
