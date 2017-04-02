class Category < ApplicationRecord
  has_many :product_suggests, dependent: :nullify
  has_many :products

  validates :name, presence: true
end
