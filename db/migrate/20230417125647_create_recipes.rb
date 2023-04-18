class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.decimal  :preparation_time, precision: 2
      t.decimal  :cooking_time, precision: 2
      t.boolean :public
      t.belongs_to :user, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
