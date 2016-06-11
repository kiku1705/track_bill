class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items, id: :uuid do |t|
    	t.string :name
    	t.timestamps
    end
  end
end
