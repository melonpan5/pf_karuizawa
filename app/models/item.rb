class Item < ApplicationRecord
    belongs_to :item_category, optional: true
    belongs_to :client_plan, optional: true
    belongs_to :client
    has_many :pre_plans,dependent: :destroy
    has_many :order_items,dependent: :destroy
    attachment :item_image

    validates :unit_price, 
                  presence: true,
                  numericality: true
    validates :name, presence: true

end
