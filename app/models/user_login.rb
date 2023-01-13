class UserLogin < ApplicationRecord
    has_secure_password
    has_many :pro_carts,dependent: :destroy
end
