class CreateItem < ActiveRecord::Migration
  def change
  	enable_extension "uuid-ossp"
    create_table :items do |t|
    	t.string :item_name
    	t.uuid     "uuid",                      default: "uuid_generate_v4()"
    	t.timestamps
    end
  end
end
