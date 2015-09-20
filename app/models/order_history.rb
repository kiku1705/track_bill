class OrderHistory < ActiveRecord::Base
	attr_accessible \
		:user_id,
		:item_id,
		:order_time

end