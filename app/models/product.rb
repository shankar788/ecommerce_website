class Product < ApplicationRecord
  belongs_to :category
  has_many :pro_carts, dependent: :destroy
end
