class PlanTag < ApplicationRecord
    has_many :client_plan_plan_tags, dependent: :destroy
    has_many :client_plans, through: :client_plan_plan_tags, dependent: :destroy
end
