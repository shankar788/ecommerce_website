class ProCartSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:quantity
  belongs_to :user_login
  belongs_to :product
end
