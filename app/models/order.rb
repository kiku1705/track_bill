class Order < ActiveRecord::Base
	attr_accessible \
		:item_price_id,
		:order_time,
		:user_id

	belongs_to :item_price
	belongs_to :user
end