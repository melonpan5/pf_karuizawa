class RemoveColumnClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :tag_id, :integer
  end
end
