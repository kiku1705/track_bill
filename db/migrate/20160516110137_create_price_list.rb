class CreatePriceList < ActiveRecord::Migration
  def change
    create_table :item_prices, id: :uuid do |t|
    	t.string :item_id
      t.string :organisation_id
    	t.float :price      
      t.timestamps
    end
  end
end
