class Transation < ApplicationRecord
  belongs_to :product, class_name: 'Product', primary_key: 'product_id', foreign_key: 'product_id'
  belongs_to :customer, class_name: 'Customer', primary_key: 'customer_id'

  def self.generate_transation_id
    loop do
      random_id = rand(1e5...1e6).to_i.to_s
      break random_id unless User.exists?(user_id: random_id)
    end
  end
end
