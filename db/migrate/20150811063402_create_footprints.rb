class CreateFootprints < ActiveRecord::Migration
  def change
    create_table :footprints do |t|
      t.string :latitude,  null: false
      t.string :longitude, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
