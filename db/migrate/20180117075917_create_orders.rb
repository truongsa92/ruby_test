class CreateOrders < ActiveRecord::Migration[5.0]
  def up
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.integer :status
      t.integer :shipping_info
      t.integer :order_products
      t.datetime :date_created
      t.datetime :date_shipped
    end
  end

  def downd
    drop_table :orders
  end
end
