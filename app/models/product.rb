class Product < ApplicationRecord
  belongs_to :category
  has_many :carts, dependent: :destroy
end
