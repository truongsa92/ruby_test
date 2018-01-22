class CreateCustomers < ActiveRecord::Migration[5.0]
  def up
    create_table :customers do |t|
      t.string :address
      t.string :credit_cat_info 
      t.integer :account_id
      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
