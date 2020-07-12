class ClientPlanPlanTag < ApplicationRecord
    belongs_to :plan_tag, optional: true
    belongs_to :client_plan, optional: true
end
