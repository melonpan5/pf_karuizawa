class AddTagImageIdToPlanTag < ActiveRecord::Migration[5.2]
  def change
    add_column :plan_tags, :tag_image_id, :string
  end
end
