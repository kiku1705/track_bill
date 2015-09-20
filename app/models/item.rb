class Item < ActiveRecord::Base
	attr_accessible \
		:item_name,
		:price
end