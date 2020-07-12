class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_plans_id, foreign_key: true
      t.integer :item_id, foreign_key: true
      t.integer :quantity
      t.integer :purchase_unit_price

      t.timestamps
    end
  end
end
