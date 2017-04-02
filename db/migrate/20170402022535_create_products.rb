class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :category, index: true, foreign_key: true
      t.string :image
      t.float :rate_score
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
