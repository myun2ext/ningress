class CreatePortals < ActiveRecord::Migration
  def change
    create_table :portals do |t|
      t.string :name,      null: false
      t.string :longitude, null: false
      t.string :latitude,  null: false

      t.timestamps null: false
    end
  end
end
