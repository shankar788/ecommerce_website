class UserLoginSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:email,:name
  has_many :pro_carts
end
