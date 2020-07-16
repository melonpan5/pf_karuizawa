class PrePlan < ApplicationRecord
    belongs_to :customer, optional: true
    belongs_to :item, optional: true
    belongs_to :client_plan, optional: true
    
end
