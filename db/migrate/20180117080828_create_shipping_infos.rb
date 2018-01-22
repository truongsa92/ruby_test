class CreateShippingInfos < ActiveRecord::Migration[5.0]
  def up
    create_table :shipping_infos do |t|
      t.string :shipping_type
      t.integer :shipping_cost
      t.integer :shipping_region_id
      t.timestamps
    end
  end

  def down
    drop_table :shipping_infos
  end
end
