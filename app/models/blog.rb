class Blog < ApplicationRecord
    enum tag: { "お知らせ": 1, "式場情報": 2, "軽井沢情報": 3, "その他": 4}

    ALLOWED_PARAMS = [:id, :title, :tag, :text]
    validates :title, presence: true
    validates :tag, presence: true
    validates :text, presence: true
end