class AddLocationToFootprints < ActiveRecord::Migration
  def change
    add_column :footprints, :location, :string, null: false, default: ''
  end
end
