class ClientPlan < ApplicationRecord
    has_many :client_plan_plan_tags, dependent: :destroy
    has_many :plan_tags, through: :client_plan_plan_tags, dependent: :destroy
    has_many :pre_plans, dependent: :destroy
    has_many :items, dependent: :destroy
    belongs_to :client

    validates :plan_name, presence: true
    validates :plan_catch, presence: true
    validates :count, presence: true 
    validates :meal_item_id, presence: true
    validates :cake_item_id, presence: true
    validates :flower_item_id, presence: true
    validates :dress_item_id, presence: true
    validates :memory_item_id, presence: true
    validates :base_pack_item_id, presence: true
    validates :total_price, presence: true
    validates :client_id, presence: true
    


end
