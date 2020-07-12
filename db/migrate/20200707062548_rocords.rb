class Rocords < ActiveRecord::Migration[5.2]
  def change
    drop_table :customers
    drop_table :admins
  end
end
