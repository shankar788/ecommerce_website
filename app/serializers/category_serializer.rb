class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:name
  belongs_to :product
end
