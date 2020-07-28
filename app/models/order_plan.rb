class OrderPlan < ApplicationRecord
    belongs_to :customer, inverse_of: :order_plan
    enum budget: {
    "〜10万": 0,
    "〜50万": 1,
    "〜100万": 2,
    "〜150万": 3,
    "〜200万": 4,
    "〜300万": 5,
    "〜400万": 6,
    "〜500万": 7
    }

    enum desired_year: {
        "2020年": 0,
        "2021年": 1, 
        "2022年": 2, 
        "2023年以降": 3, 
        "まだ決めていない": 4
    }

     # 希望実施時期
    enum desired_timing: {
        "1月": 0, 
        "2月": 1, 
        "3月": 2, 
        "4月": 3, 
        "5月": 4, 
        "6月": 5, 
        "7月": 6, 
        "8月": 7, 
        "9月": 8, 
        "10月": 9, 
        "11月": 10, 
        "12月": 11
    }

     # 日取りの希望
    enum desired_day: {
        "上旬": 0, 
        "中旬": 1, 
        "下旬": 2, 
        "土日祝日ならどこでも": 3, 
        "未定": 4 
}
# バリデーション

validates :count, presence: true
validates :meal_item_id, presence: true
validates :cake_item_id, presence: true
validates :flower_item_id, presence: true
validates :dress_item_id, presence: true
validates :memory_item_id, presence: true
validates :base_pack_item_id, presence: true
validates :customer_id, presence: true
validates :total_price, presence: true
validates :client_plan_id, presence: true
validates :budget, presence: true
validates :desired_year, presence: true
validates :desired_timing, presence: true
validates :desired_day, presence: true

end
