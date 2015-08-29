class CreateCarPoolingRequessts < ActiveRecord::Migration
  def change
    create_table :car_pooling_requessts do |t|
      t.string :email
      t.string :password
      t.integer :user_id
      t.integer :travel_id
      t.string :prefer_from
      t.string :prefer_to

      t.timestamps null: false
    end
  end
end
