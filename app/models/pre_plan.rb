class PrePlan < ApplicationRecord
    belongs_to :customer, optional: true
    belongs_to :item, optional: true
    belongs_to :client_plan, optional: true
   
    
# バリデーション

validates :count, presence: true
validates :meal_item_id, presence: true
validates :cake_item_id, presence: true
validates :flower_item_id, presence: true
validates :dress_item_id, presence: true
validates :memory_item_id, presence: true
validates :base_pack_item_id, presence: true
validates :customer_id, presence: true
validates :client_plan_id, presence: true

end
