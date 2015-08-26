class AddReferenceToReview < ActiveRecord::Migration
  def change
  	add_column :requests, :notification_id, :integer 
  	add_index :requests, :notification_id
  end
end
