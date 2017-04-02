class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :status, default: 0, null: false
      t.text :shipping_address
      t.float :total_pay

      t.timestamps null: false
    end
  end
end
