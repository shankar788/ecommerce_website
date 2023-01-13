class ProCart < ApplicationRecord
  belongs_to :user_login
  belongs_to :product
end
