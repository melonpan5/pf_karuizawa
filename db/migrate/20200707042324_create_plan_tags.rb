class CreatePlanTags < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
