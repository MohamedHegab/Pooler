class AddingZoneToTable < ActiveRecord::Migration
  def change
  	add_column :requests, :zone, :string
  end
end
