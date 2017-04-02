class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.boolean :gender
      t.string :avatar
      t.integer :role

      t.timestamps null: false
    end
  end
end
