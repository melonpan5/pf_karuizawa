class CreateClientPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :client_plans do |t|
      t.integer :item_id, foreign_key: true
      t.integer :client_id, foreign_key: true
      t.string :plan_name
      t.text :plan_catch
      t.text :plan_text
      t.integer :count
      t.integer :meal_item_id
      t.integer :cake_item_id
      t.integer :flower_item_id
      t.integer :dress_item_id
      t.integer :memory_item_id
      t.integer :base_pack_item_id
      t.integer :total_price

      t.timestamps
    end
  end
end
