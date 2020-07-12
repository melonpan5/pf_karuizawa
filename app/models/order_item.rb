class OrderItem < ApplicationRecord
    belongs_to :order_plan
    belongs_to :item
end
