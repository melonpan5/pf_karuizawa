class CreateClientPlanPlanTags < ActiveRecord::Migration[5.2]
  def change
    create_table :client_plan_plan_tags do |t|
      t.integer :client_plan_id, foreign_key: true
      t.integer :plan_tag_id, foreign_key: true

      t.timestamps
    end
  end
end
