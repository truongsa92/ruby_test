class AddForeignKeyTableOderProduct < ActiveRecord::Migration[5.0]
  def change
    change_table :order_products do |t|
      t.references :product, foreign_key: true
    end
  end

  def down
    remove_foreign_key :order_products, :product
  end
end
