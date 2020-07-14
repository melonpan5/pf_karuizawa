class PrePlan < ApplicationRecord
    belongs_to :customer, optional: true
    belongs_to :item, optional: true
    # has_many :client_plans, dependent: :destroy
end
