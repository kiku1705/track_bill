class CreateOrganisation < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
    	t.string :name
    	t.uuid     "uuid",                      default: "uuid_generate_v4()"
    	t.timestamps
    end
  end
end
