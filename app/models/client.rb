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
end
