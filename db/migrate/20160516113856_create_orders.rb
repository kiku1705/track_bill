class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders, id: :uuid do |t|
      t.string :item_price_id
    	t.datetime :order_time
      t.string :user_id
    	t.timestamps
    end
  end
end
