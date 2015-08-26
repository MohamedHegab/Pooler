class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
    	t.string :source
    	t.string :destination
    	t.date :date
    	t.text :title
    	t.text :message

      t.timestamps null: false
    end
  end
end
