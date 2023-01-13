class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes id:,:description,:name,:manufacture,:feture
  belongs_to :category
  has_many :pro_carts
end
