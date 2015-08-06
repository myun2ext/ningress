class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users,:name,  :string,  null: false, default: ''
    add_column :users,:level, :integer, null: false, default: 1
    add_column :users,:life,  :integer, null: false, default: 200
    add_column :users,:atk,   :integer, null: false, default: 10
    add_column :users,:def,   :integer, null: false, default: 10
  end
end
