class RemovePlanTagIdFromClientPlan < ActiveRecord::Migration[5.2]
  def change
    remove_column :client_plans, :plan_tag_id, :integer
  end
end
