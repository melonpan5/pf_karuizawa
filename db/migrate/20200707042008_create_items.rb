class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :item_category_id, foreign_key: true
      t.string :name
      t.text :description
      t.integer :unit_price
      t.string :item_image_id

      t.timestamps
    end
  end
end
