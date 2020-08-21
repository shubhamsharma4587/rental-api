class CreateTransations < ActiveRecord::Migration[5.2]
  def change
    create_table :transations do |t|
      t.integer :transation_id
      t.datetime :transation_date_time
      t.integer :customer_id
      t.integer :product_id
      t.string :transation_type
      t.integer :quantity
      t.string :transation_id_parent

      t.timestamps
    end
  end
end
