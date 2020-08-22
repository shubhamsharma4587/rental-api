class Api::V1::InitController < ApplicationController

  def initiate
    products_titles = ["Plastic Chairs", "Tiffany Chairs", "Bridal Chair", "Plastic Round Tables", "Table Cloths"]
    customer_names = ["Customer1", "Customer2", "Customer3", "Customer4", "Customer5"]

    for i in 0...5 do
      total_quantity = rand(1..10000)
      quantity_booked = rand(1..total_quantity)
      Product.create(product_id: rand(1..10000), product_title: products_titles[i], quantity_total: total_quantity, quantity_booked: quantity_booked, price: rand(200..500))
      Customer.create(customer_id: rand(1..10000), customer_name: customer_names[i])
    end

    Transation.delete_all

    render :json => {msg: "success"}, status: 200
  end

end
