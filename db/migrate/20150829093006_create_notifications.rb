class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :message
      t.boolean :is_read
      t.integer :travel_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
