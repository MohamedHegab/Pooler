class AddAttributesToNotification < ActiveRecord::Migration
  def change
  	add_column :notifications, :name, :string
  	add_column :notifications, :tele, :integer
  end
end
