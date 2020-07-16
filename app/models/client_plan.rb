class ClientPlan < ApplicationRecord
    has_many :client_plan_plan_tags, dependent: :destroy
    has_many :plan_tags, through: :client_plan_plan_tags, dependent: :destroy
    has_many :pre_plans, dependent: :destroy
    has_many :items, dependent: :destroy
    belongs_to :client
end
