class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.decimal :price
      t.integer :quantity
      t.belongs_to :user, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
