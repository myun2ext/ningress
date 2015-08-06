class AddAmountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :amount, :integer, null: false, default: 0
  end
end
