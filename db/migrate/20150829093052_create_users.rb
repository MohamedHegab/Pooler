class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :class_id
      t.string :phone
      t.integer :age

      t.timestamps null: false
    end
  end
end
