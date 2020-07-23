class PlanTag < ApplicationRecord
    has_many :client_plan_plan_tags, dependent: :destroy
    has_many :client_plans, through: :client_plan_plan_tags, dependent: :destroy
    attachment :tag_image

    validates :name, presence: true
    validates :tag_image, presence: true

    enum category: {
        "テイスト": 0,
        "外観イメージ": 1, 
        "内観イメージ": 2, 
        "衣装": 3, 
        "シチュエーション": 4
    }
    
end
