class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :Name
      t.integer :source_city_id
      t.integer :dest_city_id
      t.string :cost
      t.string :distance
      t.string :duration

      t.timestamps null: false
    end
  end
end
