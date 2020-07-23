class AddColumnPlanTags < ActiveRecord::Migration[5.2]
  def change
    add_column :plan_tags, :category, :integer
  end
end
