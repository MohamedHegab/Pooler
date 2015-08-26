class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :Name
      t.integer :Telephone
      t.integer :Age
      t.string :Location_From
      t.string :Location_Destination
      t.date :Travel_date
      t.time :prefered_time_from
      t.time :prefered_time_to
      t.text :Notes

      t.timestamps null: false
    end
  end
end
