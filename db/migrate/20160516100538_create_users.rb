class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
    	t.string :device_id
			t.string :email
			t.string :first_name
    	t.string :image    	
    	t.string :last_name    	
			t.string :organisation_id
    	t.timestamps
    end
  end
end
