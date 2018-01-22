class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def up
    create_table :order_products do |t|
      t.integer :quantity
      t.float :unit_price
      t.timestamps
    end
  end

  def down
    drop_table :order_products
  end
end
