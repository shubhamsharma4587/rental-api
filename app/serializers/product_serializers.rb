class ProductSerializers < ApplicationSerializer
  has_many :transations

  attributes :id, :product_id, :product_title, :quantity_total, :quantity_booked, :price

end