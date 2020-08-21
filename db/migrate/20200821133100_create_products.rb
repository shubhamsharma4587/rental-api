class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :product_title
      t.integer :quantity_total
      t.integer :quantity_booked
      t.decimal :price

      t.timestamps
    end
  end
end

