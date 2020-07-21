class Client < ApplicationRecord
    has_many :items, 
    class_name:  "Item",
    foreign_key: "client_id",
    dependent: :destroy
    has_many :client_plans, 
    class_name:  "ClientPlan",
    foreign_key: "client_id",
    dependent: :destroy
    attachment :client1_image
    attachment :client2_image
    attachment :client3_image


    validates :catch, presence: true
    validates :name, presence: true
    validates :client1_image, presence: true 
    validates :phone_number, presence: true
    validates :acces, presence: true
    validates :capacity, presence: true
    validates :regular_holiday, presence: true
    validates :business_hours, presence: true
    validates :wedding_time_zone, presence: true

    validates :office_name, presence: true
    validates :staff_name_kana, presence: true
    validates :staff_email, presence: true
    validates :staff_name, presence: true
    validates :staff_phone_number, presence: true
 
end
