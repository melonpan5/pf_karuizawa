class AddColumnItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :client_plan, foreign_key: true

  end
end
