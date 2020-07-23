class Item < ApplicationRecord
    belongs_to :item_category, optional: true
    belongs_to :client_plan, optional: true
    belongs_to :client
    has_many :pre_plans,dependent: :destroy
    has_many :order_items,dependent: :destroy
    attachment :item_image

    validates :unit_price, 
                  presence: true,
                  numericality: true
    validates :name, presence: true

      # カテゴリー
      enum category: {
        "料理_標準": 0, 
        "料理_ゴージャス": 1, 
        "ケーキ_標準": 2, 
        "ケーキ_ゴージャス": 3, 
        "装花_標準": 4, 
        "装花_ゴージャス": 5, 
        "ドレス_標準": 6, 
        "ドレス_ゴージャス": 7, 
        "写真動画_標準": 8, 
        "写真動画_ゴージャス": 9, 
        "基本パッケージ": 10, 
        "その他オプション": 11
    }

end
