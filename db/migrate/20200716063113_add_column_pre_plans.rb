class AddColumnPrePlans < ActiveRecord::Migration[5.2]
  def change
    add_column :pre_plans, :client_id, :integer
    add_reference :pre_plans, :client_plan, foreign_key: true
  end
end
