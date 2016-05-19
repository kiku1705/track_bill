class OrderHistory < ActiveRecord::Base
	attr_accessible \
		:user_id,
		:item_price_id,
		:order_time

		belongs_to :item_price
		belongs_to :user
end