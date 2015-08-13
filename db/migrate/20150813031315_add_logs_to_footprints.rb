class AddLogsToFootprints < ActiveRecord::Migration
  def change
    add_column :footprints, :logs, :text, null: false, default: ''
  end
end
