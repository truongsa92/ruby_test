class CreateAdministrators < ActiveRecord::Migration[5.0]
  def up
    create_table :administrators do |t|
      t.integer :account_id
      t.timestamps
    end
  end

  def down
    drop_table :administrators
  end
end
