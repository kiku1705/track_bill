class CreatePriceList < ActiveRecord::Migration
  def change
    create_table :item_prices do |t|
    	t.integer :item_id
    	t.integer :price
    	t.integer :organisation_id
    end
  end
end
