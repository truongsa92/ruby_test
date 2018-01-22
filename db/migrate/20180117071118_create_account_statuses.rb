class CreateAccountStatuses < ActiveRecord::Migration[5.0]
  def up
    create_table :account_statuses do |t|
      t.string :status
    end
  end

  def down
    drop_table :account_statuses
  end
end
