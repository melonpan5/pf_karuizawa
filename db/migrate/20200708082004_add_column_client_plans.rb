class AddColumnClientPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :client_plans, :plan_tag_id, :integer
  end
end
