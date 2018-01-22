class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :role
    end
  end

  def down
    drop_table :roles
  end
end
