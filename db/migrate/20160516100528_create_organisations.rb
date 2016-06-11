class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations, id: :uuid do |t|
    	t.string :name
    	t.timestamps
    end
  end
end
