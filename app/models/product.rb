class Product < ApplicationRecord
  has_many :transations, primary_key: :product_id
end
