class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :tag
      t.text :text

      t.timestamps
    end
  end
end
