class CreateAccounts < ActiveRecord::Migration[5.0]
  def up
    create_table :accounts do |t|
      t.string :email
      t.string :name
      t.text :password
      t.integer :status
      t.integer :role
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
