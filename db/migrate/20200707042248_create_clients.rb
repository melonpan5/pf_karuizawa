class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :tag_id, foreign_key: true
      t.integer :plan_id, foreign_key: true
      t.string :catch
      t.string :name
      t.text :introduction
      t.string :client1_image_id
      t.string :client2_image_id
      t.string :client3_image_id
      t.string :phone_number
      t.string :email
      t.text :homepage_url
      t.string :acces
      t.string :capacity
      t.string :regular_holiday
      t.string :business_hours
      t.string :wedding_time_zone
      t.text :other
      t.string :office_name
      t.string :staff_name
      t.string :staff_name_kana
      t.string :staff_email
      t.string :staff_phone_number
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
