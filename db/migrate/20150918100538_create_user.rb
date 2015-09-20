class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email
    	t.string :image
    	t.string :first_name
    	t.string :last_name
    	t.string :device_id
    	t.timestamps
    end
  end
end
