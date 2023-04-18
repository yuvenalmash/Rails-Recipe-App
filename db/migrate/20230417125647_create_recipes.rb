class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.datetime  :preparation_time
      t.datetime  :cooking_time
      t.boolean :public
      t.belongs_to :user, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
