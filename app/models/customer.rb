class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :pre_plans,dependent: :destroy
  has_many :order_plans,dependent: :destroy

  validates :family_name, length: {maximum: 20, minimum: 1},presence: true
  validates :first_name, length: {maximum: 20, minimum: 1},presence: true
  validates :kana_family_name, length: {maximum: 20, minimum: 1}
  validates :kana_first_name, length: {maximum: 20, minimum: 1}
  validates :phone_number, length: { in: 10..11 }
end
