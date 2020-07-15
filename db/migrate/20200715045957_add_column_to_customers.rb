class AddColumnToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :family_name, :string
    add_column :customers, :first_name, :string
    add_column :customers, :kana_family_name, :string
    add_column :customers, :kana_first_name, :string
    add_column :customers, :phone_number, :string

  end
end
