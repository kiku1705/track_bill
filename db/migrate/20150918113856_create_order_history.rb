class CreateOrderHistory < ActiveRecord::Migration
  def change
    create_table :order_histories do |t|
    	t.belongs_to :user
    	t.belongs_to :item_price
    	t.datetime :order_time 
    	t.timestamps
    end
  end
end
