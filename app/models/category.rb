class Category < ApplicationRecord
  has_many :product_suggests
  has_many :products

end
