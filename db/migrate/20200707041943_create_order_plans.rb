class CreateOrderPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :order_plans do |t|
      t.integer :customer_id, foreign_key: true
      t.integer :count
      t.integer :meal_item_id
      t.integer :cake_item_id
      t.integer :flower_item_id
      t.integer :dress_item_id
      t.integer :memory_item_id
      t.integer :base_pack_item_id
      t.integer :total_price
      t.integer :client_plan_id
      t.string :client_plan_name
      t.integer :budget
      t.integer :desired_year
      t.integer :desired_timing
      t.integer :desired_day

      t.timestamps
    end
  end
end
