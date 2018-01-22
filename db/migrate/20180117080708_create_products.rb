class CreateProducts < ActiveRecord::Migration[5.0]
  def up
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :categories 
      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
