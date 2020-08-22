class TransationSerializers < ApplicationSerializer
  belongs_to :product, class_name: 'Product', primary_key: 'product_id'
  belongs_to :customer, class_name: 'Customer', primary_key: 'customer_id'

  attributes :id, :transation_id, :product_id, :customer_id, :transation_date_time, :transation_type, :quantity, :transation_id_parent

end